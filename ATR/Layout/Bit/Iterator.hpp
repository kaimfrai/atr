export module ATR:Layout.Bit.Iterator;

import :Layout.Bit.Access;
import :Layout.Bit.ElementReference;
import :Layout.Bit.Types;

import Meta.Arithmetic.Size;

import Std;

using ::Meta::SSize;
using ::Meta::USize;

export namespace
	ATR::Bit
{
	template
		<	typename
				t_tBuffer
		,	ESize
				t_nSize
		,	EOffset
				t_nMaxOffset
		>
	struct
		Iterator final
	{
		static_assert
		(	static_cast<USize>(t_nMaxOffset)
		<	BitsPerByte
		,	"Bit::Iterator not properly aligned! Expected maximum offset below Bits per Byte!"
		);

		using BitAccess = Access<t_nSize, t_nMaxOffset>;

		using reference = ElementReference<t_tBuffer, t_nSize, t_nMaxOffset>;
		using difference_type = SSize;
		using value_type = typename BitAccess::FieldType;
		using MaskType = typename BitAccess::BufferFieldType;

		t_tBuffer
		*	m_aUnderlyingArray
		;
		MaskType
			m_vMask
		;

		auto constexpr
		(	operator *
		)	()	const
		->	reference
		{	return
			{	m_aUnderlyingArray
			,	m_vMask
			};
		}

		auto constexpr
		(	operator[]
		)	(	SSize
					i_nIndex
			)	const
		->	reference
		{
			auto const vOffset = (*this + i_nIndex);
			return
			*	vOffset
			;
		}

		auto constexpr
		(	operator +=
		)	(	SSize
					i_nIncrement
			)	&
		->	Iterator&
		{
			auto const
				vMask
			=	m_vMask
			;
			if	(vMask == 0)
				::std::unreachable();

			USize const
				vCurrentBitOffset
			=	static_cast<USize>
				(	::std::countr_zero(vMask)
				)
			;

			auto const
				vTotalBitOffset
			=	static_cast<SSize>(vCurrentBitOffset)
			+	static_cast<SSize>(t_nSize)
			*	i_nIncrement
			;
			(	m_aUnderlyingArray
			+=	(	vTotalBitOffset
				/	static_cast<SSize>(BitsPerByte)
				)
			-	// subract one more if the remainder is negative
				static_cast<SSize>
				(	(vTotalBitOffset % static_cast<SSize>(BitsPerByte))
				<	0z
				)
			);

			static_assert
			(	::std::numeric_limits<USize>::max()
			%	BitsPerByte
			==	BitsPerByte - 1uz
			,	"The following optimization is invalid."
			);

			(	m_vMask
			= 	::std::rotl
				(	vMask
				,	static_cast<unsigned int>
					(	static_cast<USize>(vTotalBitOffset) % BitsPerByte
					-	vCurrentBitOffset
					)
				)
			);

			return *this;
		}

		auto constexpr
		(	operator -=
		)	(	SSize
					i_nDecrement
			)	&
		->	Iterator&
		{
			return operator+=(-i_nDecrement);
		}

		friend auto constexpr
		(	operator +
		)	(	Iterator
					i_vIterator
			,	SSize
					i_nIncrement
			)
		->	Iterator
		{	return i_vIterator += i_nIncrement;	}

		friend auto constexpr
		(	operator +
		)	(	SSize
					i_nIncrement
			,	Iterator
					i_vIterator
			)
		->	Iterator
		{	return i_vIterator += i_nIncrement;	}

		friend auto constexpr
		(	operator -
		)	(	Iterator
					i_vIterator
			,	SSize
					i_nDecrement
			)
		->	Iterator
		{	return i_vIterator -= i_nDecrement;	}

		friend auto constexpr
		(	operator -
		)	(	Iterator
					i_vLeft
			,	Iterator
					i_vRight
			)
		->	SSize
		{
			auto const
				vByteDiff
			=	static_cast<SSize>(BitsPerByte)
			*	(	i_vLeft.m_vReference.m_vUnderlyingArray
				-	i_vRight.m_vReference.m_vUnderlyingArray
				)
			;
			auto const
				vLeftMask
			=	i_vLeft.m_vReference.m_vMask
			;

			auto const
				vRightMask
			=	i_vRight.m_vReference.m_vMask
			;

			if	(	vLeftMask == 0
				or	vRightMask == 0
				)
				::std::unreachable();

			SSize const
				vBitDiff
			{	::std::countr_zero(vLeftMask)
			-	::std::countr_zero(vRightMask)
			};
			return
			(	(	vByteDiff
				+	vBitDiff
				)
			/	t_nSize
			);
		}

		auto constexpr
		(	operator++
		)	()	&
		->	Iterator&
		{	return
			(	*this
			+=	1z
			);
		}

		auto constexpr
		(	operator++
		)	(int) &
		->	Iterator
		{	return
			::std::exchange
			(	*this
			, 	*this + 1z
			);
		}

		auto constexpr
		(	operator--
		)	()	&
		->	Iterator&
		{	return
			(	*this
			-=	1z
			);
		}

		auto constexpr
		(	operator--
		)	(int) &
		->	Iterator
		{	return
			::std::exchange
			(	*this
			, 	*this + 1z
			);
		}

		friend auto constexpr
		(	operator <=>
		)	(	Iterator
			,	Iterator
			)
		->	::std::strong_ordering
		=	default;
	};
}
