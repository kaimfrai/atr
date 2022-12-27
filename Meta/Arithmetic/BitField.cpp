export module Meta.Arithmetic.BitField;

import Meta.Arithmetic.BitSize;
import Meta.Arithmetic.BitIndex;
import Meta.Byte.Count;
import Meta.Byte.Buffer;
import Meta.Bit.Count;
import Meta.Size;

import Std;

using namespace Meta::Literals;

export namespace
	Meta::Arithmetic
{
	template
		<	Bits
				t_nWidth
		>
	requires
		(	t_nWidth
		>	1_bits
		)
	struct
	// no private members to be usable as template argument
		BitField
	{
		using
			IndexType
		=	BitIndex
			<	t_nWidth
			>
		;
		using
			SizeType
		=	BitSize
			<	t_nWidth
			>
		;
		using
			FieldType
		=	typename
				IndexType
			::	FieldType
		;

		using
			BufferType
		=	Byte::Buffer
			<	t_nWidth
			>
		;

		BufferType
			m_vValue
		;

		static auto constexpr
		(	Sanitize
		)	(	FieldType
					i_nField
			)
			noexcept
		->	FieldType
		{
			if	constexpr
				(	t_nWidth
				==	Byte::SizeOf<FieldType>
				)
			{
				return i_nField;
			}
			else
			{
				return
				FieldType
				(	i_nField
				bitand
					compl
					(	compl FieldType{}
					<<	IndexType{t_nWidth.get()}
					)
				);
			}
		}

		explicit(false) constexpr
		(	BitField
		)	()
			noexcept
		=	default;

		explicit(true) constexpr
		(	BitField
		)	(	FieldType
					i_vValue
			)
		:	m_vValue
			{	i_vValue
			}
		{
			(void)get();
		}

		explicit(true) constexpr
		(	BitField
		)	(	IndexType
					i_nIndex
			)
		:	BitField
			{	Power(i_nIndex)
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	FieldType
		{
			FieldType const
				nField
			{	m_vValue
			};
			if	(nField != Sanitize(nField))
				::std::unreachable();
			return nField;
		}

		[[nodiscard]]
		explicit(true) constexpr
		(	operator bool
		)	()	const
			noexcept
		{	return
				get()
			!=	FieldType{}
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator not
		)	(	BitField
					i_vField
			)
			noexcept
		{	return not static_cast<bool>(i_vField);	}

		[[nodiscard]]
		friend auto constexpr
		(	operator bitand
		)	(	BitField
					i_vLeft
			,	BitField
					i_vRight
			)
			noexcept
		->	BitField
		{	return
			BitField
			{	Sanitize
				(	i_vLeft.get()
				bitand
					i_vRight.get()
				)
			};
		}

		auto constexpr
		(	operator &=
		)	(	BitField
					i_vRight
			)	&
			noexcept
		->	BitField&
		{	return
				*this
			=	*this
			bitand
				i_vRight
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator bitor
		)	(	BitField
					i_vLeft
			,	BitField
					i_vRight
			)
			noexcept
		->	BitField
		{	return
			BitField
			{	Sanitize
				(	i_vLeft.get()
				bitor
					i_vRight.get()
				)
			};
		}

		auto constexpr
		(	operator |=
		)	(	BitField
					i_vRight
			)	&
			noexcept
		->	BitField&
		{	return
				*this
			=	*this
			bitor
				i_vRight
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator xor
		)	(	BitField
					i_vLeft
			,	BitField
					i_vRight
			)
			noexcept
		->	BitField
		{	return
			BitField
			{	Sanitize
				(	i_vLeft.get()
				xor	i_vRight.get()
				)
			};
		}

		auto constexpr
		(	operator ^=
		)	(	BitField
					i_vRight
			)	&
			noexcept
		->	BitField&
		{	return
				*this
			=	*this
			xor	i_vRight
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator compl
		)	(	BitField
					i_vField
			)
			noexcept
		->	BitField
		{	return
			BitField
			{	Sanitize
				(	compl
					i_vField.get()
				)
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator <<
		)	(	BitField
					i_vField
			,	IndexType
					i_nIndex
			)
			noexcept
		->	BitField
		{	return
			BitField
			{	Sanitize
				(	i_vField.get()
				<<	i_nIndex
				)
			};
		}

		auto constexpr
		(	operator <<=
		)	(	IndexType
					i_nIndex
			)	&
			noexcept
		->	BitField&
		{	return
				*this
			=	*this
			<<	i_nIndex
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator >>
		)	(	BitField
					i_vField
			,	IndexType
					i_nIndex
			)
			noexcept
		->	BitField
		{	return
			BitField
			{	Sanitize
				(	i_vField.get()
				>>	i_nIndex
				)
			};
		}

		auto constexpr
		(	operator >>=
		)	(	IndexType
					i_nIndex
			)	&
			noexcept
		->	BitField&
		{	return
				*this
			=	*this
			>>	i_nIndex
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	IndexType
					i_nIndex
			)	const
			noexcept
		->	bool
		{	return
			Test
			(	get()
			,	i_nIndex
			);
		}

		friend auto constexpr
		(	operator ==
		)	(	BitField
					i_vLeft
			,	BitField
					i_vRight
			)
			noexcept
		->	bool
		{	return
				i_vLeft.get()
			==	i_vRight.get()
			;
		}

		friend auto constexpr
		(	operator <=>
		)	(	BitField
					i_vLeft
			,	BitField
					i_vRight
			)
			noexcept
		->	::std::strong_ordering
		{	return
				i_vLeft.get()
			<=>	i_vRight.get()
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	CountOnes
		)	(	BitField
					i_vField
			)
			noexcept
		->	SizeType
		{	return
			SizeType
			{	static_cast<typename SizeType::SizeType>
				(	::std::popcount
					(	i_vField.get()
					)
				)
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	LowestOne
		)	(	BitField
					i_vField
			)
			noexcept
		->	BitField
		{	return
			BitField
			{	Sanitize
				(	i_vField.get()
				bitand
					-
					i_vField.get()
				)
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	IndexLowestOne
		)	(	BitField
					i_vField
			)
			noexcept
		->	IndexType
		{
			if	(i_vField.get() == FieldType{})
				::std::unreachable();

			return
			IndexType
			{	static_cast<typename IndexType::IndexType>
				(	::std::countr_zero
					(	i_vField.get()
					)
				)
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	CurrentWidth
		)	(	BitField
					i_vField
			)
			noexcept
		->	SizeType
		{	return
			SizeType
			{	static_cast<typename SizeType::SizeType>
				(	::std::bit_width
					(	i_vField.get()
					)
				)
			};
		}

		auto constexpr
		(	UnsetLowestOne
		)	()	&
		->	BitField&
		{	return
				*this
			=	BitField
				{	Sanitize
					(	get()
					bitand
						(	get()
						-	FieldType{1}
						)
					)
				}
			;
		}

		auto constexpr
		(	Set
		)	(	IndexType
					i_nIndex
			)	&
			noexcept
		->	BitField&
		{	return *this |= BitField{i_nIndex};	}

		auto constexpr
		(	Unset
		)	(	IndexType
					i_nIndex
			)	&
			noexcept
		->	BitField&
		{	return *this &= compl BitField{i_nIndex};	}
	};
}
