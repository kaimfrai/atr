export module Meta.Bit.Iterator;

import Meta.Bit.Access;
import Meta.Bit.ElementReference;
import Meta.Bit.Index;
import Meta.Bit.Field.Compare;
import Meta.Bit.Field.LowestOne;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size.Scale;
import Meta.Math.Divide;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	template
		<	typename
				t_tBuffer
		,	BitSize
				t_nSize
		,	ByteIndex
				t_nMaxOffset
		>
	struct
		Iterator final
	{
		using
			BitAccess
		=	Access
			<	t_nSize
			,	t_nMaxOffset
			>
		;

		using
			reference
		=	ElementReference
			<	t_tBuffer
			,	t_nSize
			,	t_nMaxOffset
			>
		;
		using
			difference_type
		=	::Meta::SSize
		;
		using
			value_type
		=	typename
				BitAccess
			::	FieldType
		;
		using
			MaskType
		=	typename
				BitAccess
			::	BufferFieldType
		;
	private:
		t_tBuffer
		*	m_aUnderlyingArray
		;
		MaskType
			m_vMask
		;

	public:
		explicit(false) constexpr inline
		(	Iterator
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Iterator
		)	(	t_tBuffer
				*	i_aUnderlyingArray
			,	MaskType
					i_nMask
			)
		:	m_aUnderlyingArray
			{	i_aUnderlyingArray
			}
		,	m_vMask
			{	i_nMask
			}
		{}

		explicit(true) constexpr inline
		(	Iterator
		)	(	t_tBuffer
				*	i_aUnderlyingArray
			,	ByteIndex
					i_nOffset
			)
		:	Iterator
			{	i_aUnderlyingArray
			,	BitAccess
			::	OffsetMask
				(	i_nOffset
				)
			}
		{}

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			Iterator<t_tBuffer const, t_nSize, t_nMaxOffset>
		)	()	const
			noexcept
		{	return
			Iterator<t_tBuffer const, t_nSize, t_nMaxOffset>
			{	m_aUnderlyingArray
			,	m_vMask
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	reference
		{	return
			{	m_aUnderlyingArray
			,	m_vMask
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	difference_type
					i_nIndex
			)	const
			noexcept
		->	reference
		{
			auto const
				vOffset
			=	(	*this
				+	i_nIndex
				)
			;
			return
				*
				vOffset
			;
		}

		auto constexpr inline
		(	operator+=
		)	(	difference_type
					i_nIncrement
			)	&
			noexcept
		->	Iterator&
		{
			auto const
				vMask
			=	m_vMask
			;

			auto const
				nCurrentBitOffset
			=	IndexLowestOne
				(	vMask
				)
			;

			auto const
				nTotalBitOffset
			=	t_nSize
			*	i_nIncrement
			+	nCurrentBitOffset
			;
			auto const
			[	nByteOffset
			,	nNewBitOffset
			]=	IndexCast<::Meta::ByteIndex>
				(	nTotalBitOffset
				)
			;

			(	m_aUnderlyingArray
			+=	nByteOffset
			);

			(	m_vMask
			=	BitAccess
			::	OffsetMask
				(	nNewBitOffset
				)
			);

			return
				*this
			;
		}

		auto constexpr inline
		(	operator-=
		)	(	difference_type
					i_nDecrement
			)	&
			noexcept
		->	Iterator&
		{	return
			(	*this
			+=	-i_nDecrement
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	Iterator
					i_vIterator
			,	difference_type
					i_nIncrement
			)
			noexcept
		->	Iterator
		{	return
			(	i_vIterator
			+=	i_nIncrement
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	difference_type
					i_nIncrement
			,	Iterator
					i_vIterator
			)
			noexcept
		->	Iterator
		{	return
			(	i_vIterator
			+=	i_nIncrement
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	Iterator
					i_vIterator
			,	difference_type
					i_nDecrement
			)
			noexcept
		->	Iterator
		{	return
			(	i_vIterator
			-=	i_nDecrement
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	Iterator
					i_vLeft
			,	Iterator
					i_vRight
			)
			noexcept
		->	difference_type
		{
			ByteSize const
				vByteDiff
			{	::std::distance
				(	i_vLeft.m_vUnderlyingArray
				,	i_vRight.m_vUnderlyingArray
				)
			};

			BitSize const
				vBitDiff
			{	IndexLowestOne(i_vLeft.m_vMask)
			-	IndexLowestOne(i_vRight.m_vMask)
			};
			return
			(	(	vByteDiff
				+	vBitDiff
				)
			/	t_nSize
			);
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	Iterator&
		{	return
			(	*this
			+=	1z
			);
		}

		[[nodiscard("Use preincrement when discarding the result!")]]
		auto constexpr inline
		(	operator++
		)	(int) &
			noexcept
		->	Iterator
		{	return
			::std::exchange
			(	*this
			, 	::std::next
				(	*this
				)
			);
		}

		auto constexpr inline
		(	operator--
		)	()	&
		->	Iterator&
		{	return
			(	*this
			-=	1z
			);
		}

		[[nodiscard("Use predecrement when discarding the result!")]]
		auto constexpr inline
		(	operator--
		)	(int) &
			noexcept
		->	Iterator
		{	return
			::std::exchange
			(	*this
			, 	::std::prev
				(	*this
				)
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<=>
		)	(	Iterator
			,	Iterator
			)
			noexcept
		->	::std::strong_ordering
		=	default;
	};
}
