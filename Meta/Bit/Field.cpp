export module Meta.Bit.Field;

import Meta.Bit.Count;
import Meta.Bit.Index;
import Meta.Bit.Index.Test;
import Meta.Byte.InSpan;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Byte.Buffer;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.Sanitize;
import Meta.Bit.Mask;

import Std;

using namespace ::Meta::Literals;

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
		=	Count
			<	t_nWidth
			>
		;
		using
			FieldType
		=	UInt
			<	t_nWidth
			>
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
			Sanitize
		=	&
			Arithmetic::SanitizeUnsigned
			<	Mask<t_nWidth>
			>
		;

		static auto constexpr
			AssertSanitized
		=	&
			Arithmetic::AssertSanitizedUnsigned
			<	Mask<t_nWidth>
			>
		;

		explicit(false) constexpr
		(	Field
		)	()
			noexcept
		=	default;

		explicit(true) constexpr
		(	Field
		)	(	UIntMax
					i_nValue
			)
			noexcept
		:	m_vValue
			{	AssertSanitized
				(	i_nValue
				)
			}
		{}

		//	Accept result of bit operations without casts
		explicit(true) constexpr
		(	Field
		)	(	int
					i_nValue
			)
			noexcept
		requires
			::std::is_same_v
			<	int
			,	decltype
				(	compl
					FieldType{}
				)
			>
		:	Field
			{	static_cast<UIntMax>
				(	i_nValue
				)
			}
		{}

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

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	FieldType
		{	return
			AssertSanitized
			(	static_cast<FieldType>
				(	m_vValue
				)
			);
		}

		auto constexpr
		(	operator =
		)	(	UIntMax
					i_nValue
			)	&
			noexcept
		{	return
			(	*this
			=	Field
				{	i_nValue
				}
			);
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
		{	auto const
				nValue
			=	i_vField.get()
			;

			return
			Field
			{	Sanitize
				(	nValue
				bitand
					-
					nValue
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
		{	auto const
				nValue
			=	get()
			;

			return
				*this
			=	Field
				{	static_cast<FieldType>
					(	nValue
					bitand
						(	nValue
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
