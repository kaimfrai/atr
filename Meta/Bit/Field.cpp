export module Meta.Bit.Field;

import Meta.Bit.IndexRange;
import Meta.Bit.Index;
import Meta.Byte.InSpan;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Byte.Buffer;
import Meta.Arithmetic.Integer;

import Std;

using namespace Meta::Literals;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_nWidth
		>
	requires
		(	t_nWidth
		>	0_bit
		)
	struct
	// no private members to be usable as template argument
		Field
	{
		using
			IndexType
		=	Index
			<	t_nWidth
			>
		;
		using
			CountType
		=	IndexRange
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

		[[nodiscard]]
		static auto constexpr
		(	Sanitize
		)	(	UIntMax
					i_nField
			)
			noexcept
		->	FieldType
		{
			if	constexpr
				(	t_nWidth
				==	Memory::SizeOf<FieldType>
				)
			{	return
				static_cast<FieldType>
				(	i_nField
				);
			}
			else
			{	return
				static_cast<FieldType>
				(	static_cast<FieldType>
					(	i_nField
					)
				bitand
					static_cast<FieldType>
					(	compl
						(	compl FieldType{}
						<<	t_nWidth.get()
						)
					)
				);
			}
		}

		explicit(false) constexpr
		(	Field
		)	()
			noexcept
		=	default;

		explicit(true) constexpr
		(	Field
		)	(	FieldType
					i_vValue
			)
			noexcept
		:	m_vValue
			{	i_vValue
			}
		{
			(void)get();
		}

		explicit(true) constexpr
		(	Field
		)	(	Byte::InSpan
					i_vSpan
			)
			noexcept
		:	m_vValue
			{	i_vSpan
			}
		{
			(void)get();
		}

		explicit(true) constexpr
		(	Field
		)	(	CountType
					i_vSetBits
			)
			noexcept
		:	Field
			{	compl
				Field
				{}
			>>	(	CountType::MaximumValue
				-	i_vSetBits.get()
				)
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

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(t_nOtherWidth < t_nWidth) constexpr
		(	operator Field<t_nOtherWidth>
		)	()	const
			noexcept
		{	return
			Field<t_nOtherWidth>
			{	Byte::InSpan
				{	m_vValue
				}
			};
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
		)	(	Field
					i_vField
			)
			noexcept
		{	return
			not
			static_cast<bool>
			(	i_vField
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator bitand
		)	(	Field
					i_vLeft
			,	Field
					i_vRight
			)
			noexcept
		->	Field
		{	return
			Field
			{	static_cast<FieldType>
				(	i_vLeft.get()
				bitand
					i_vRight.get()
				)
			};
		}

		auto constexpr
		(	operator &=
		)	(	Field
					i_vRight
			)	&
			noexcept
		->	Field&
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
		)	(	Field
					i_vLeft
			,	Field
					i_vRight
			)
			noexcept
		->	Field
		{	return
			Field
			{	static_cast<FieldType>
				(	i_vLeft.get()
				bitor
					i_vRight.get()
				)
			};
		}

		auto constexpr
		(	operator |=
		)	(	Field
					i_vRight
			)	&
			noexcept
		->	Field&
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
		)	(	Field
					i_vLeft
			,	Field
					i_vRight
			)
			noexcept
		->	Field
		{	return
			Field
			{	static_cast<FieldType>
				(	i_vLeft.get()
				xor	i_vRight.get()
				)
			};
		}

		auto constexpr
		(	operator ^=
		)	(	Field
					i_vRight
			)	&
			noexcept
		->	Field&
		{	return
				*this
			=	*this
			xor	i_vRight
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator compl
		)	(	Field
					i_vField
			)
			noexcept
		->	Field
		{	return
			Field
			{	Sanitize
				(	static_cast<FieldType>
					(	compl
						i_vField.get()
					)
				)
			};
		}

		template
			<	auto
					t_nOffset
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator <<
		)	(	Field
					i_vField
			,	Index<t_nOffset>
					i_nIndex
			)
			noexcept
		->	Field
			<	t_nWidth
			+	Index<t_nOffset>::HighestValue
			>
		{	using
				tLargerField
			=	Field
				<	t_nWidth
				+	Index<t_nOffset>::HighestValue
				>
			;

			return
			tLargerField
			{	static_cast<tLargerField::FieldType>
				(	static_cast<tLargerField::FieldType>
					(	i_vField.get()
					)
				<<	static_cast<tLargerField::FieldType>
					(	i_nIndex.get()
					)
				)
			};
		}

		auto constexpr
		(	operator <<=
		)	(	IndexType
					i_nIndex
			)	&
			noexcept
		->	Field&
		{
			return
				*this
			=	Field
				{	Sanitize
					(	static_cast<FieldType>
						(	get()
						<<	i_nIndex.get()
						)
					)
				}
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator >>
		)	(	Field
					i_vField
			,	IndexType
					i_nIndex
			)
			noexcept
		->	Field
		{	return
			Field
			{	Sanitize
				(	static_cast<FieldType>
					(	i_vField.get()
					>>	i_nIndex.get()
					)
				)
			};
		}

		auto constexpr
		(	operator >>=
		)	(	IndexType
					i_nIndex
			)	&
			noexcept
		->	Field&
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
		)	(	Field
					i_vLeft
			,	Field
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
		)	(	Field
					i_vLeft
			,	Field
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
		)	(	Field
					i_vField
			)
			noexcept
		->	CountType
		{	return
			CountType
			{	static_cast<CountType::CountType>
				(	::std::popcount
					(	i_vField.get()
					)
				)
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	LowestOne
		)	(	Field
					i_vField
			)
			noexcept
		->	Field
		{	return
			Field
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
		)	(	Field
					i_vField
			)
			noexcept
		->	IndexType
		{
			auto const
				nField
			=	i_vField.get()
			;
			if	(nField == FieldType{})
				::std::unreachable();

			return
			IndexType
			{	static_cast<IndexType::IndexType>
				(	::std::countr_zero
					(	nField
					)
				)
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	CurrentWidth
		)	(	Field
					i_vField
			)
			noexcept
		->	CountType
		{	return
			CountType
			{	static_cast<typename CountType::CountType>
				(	::std::bit_width
					(	i_vField.get()
					)
				)
			};
		}

		auto constexpr
		(	UnsetLowestOne
		)	()	&
		->	Field&
		{	return
				*this
			=	Field
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
		->	Field&
		{	return
				*this
			|=	Field
				{	Power
					(	i_nIndex
					)
				}
			;
		}

		auto constexpr
		(	Unset
		)	(	IndexType
					i_nIndex
			)	&
			noexcept
		->	Field&
		{	return
				*this
			&=	compl
				Field
				{	Power
					(	i_nIndex
					)
				}
			;
		}
	};
}
