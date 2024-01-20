export module Meta.Bit.Field;

import Meta.Arithmetic.Integer;
import Meta.Arithmetic.Sanitize;
import Meta.Bit.Index.Test;
import Meta.Bit.Index;
import Meta.Bit.Mask;
import Meta.Byte.Buffer;
import Meta.Memory.Alignment;
import Meta.Memory.Constraint;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Size;

import Std;

using namespace ::Meta::Literals;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_vWidth
		>
	requires
		(	t_vWidth
		>	0_bit
		)
	struct
	//	no private members to be usable as template argument
		Field
	{
		using
			IndexType
		=	Index
			<	t_vWidth
			>
		;

		using
			FieldType
		=	UInt
			<	t_vWidth
			>
		;

		using
			ValueType
		=	::std::conditional_t
			<	Memory::SizeOf<FieldType>
			==	ByteSize(t_vWidth)
			,	// if no memory is saved, use fast to compile integers
				FieldType
			,	// if it's possible to save some memory, we will
				// may hit compilation time
				Byte::Buffer
				<	t_vWidth
				>
			>
		;

		ValueType
			m_vValue
		;

		auto static constexpr inline
			Sanitize
		=	&
			Arithmetic::SanitizeUnsigned
			<	Mask
				<	t_vWidth
				>
			>
		;

		auto static constexpr inline
			AssertSanitized
		=	&
			Arithmetic::AssertSanitizedUnsigned
			<	Mask
				<	t_vWidth
				>
			>
		;

		explicit(false) constexpr inline
		(	Field
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Field
		)	(	UIntMax
					i_vValue
			)
			noexcept
		:	m_vValue
			{	AssertSanitized
				(	i_vValue
				)
			}
		{}

		[[nodiscard]]
		auto constexpr inline
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

		auto constexpr inline
		(	operator=
		)	(	UIntMax
					i_vValue
			)	&
			noexcept
		->	Field&
		{	return
			(	*this
			=	Field
				{	i_vValue
				}
			);
		}

		template
			<	auto
					t_vOtherWidth
			>
		[[nodiscard]]
		explicit(t_vOtherWidth < t_vWidth) constexpr inline
		(	operator
			Field<t_vOtherWidth>
		)	()	const
			noexcept
		{	return
			Field<t_vOtherWidth>
			{	get()
			};
		}

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			bool
		)	()	const
			noexcept
		{	return
				get()
			!=	FieldType{}
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
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
		auto constexpr inline
		(	operator[]
		)	(	IndexType
					i_vIndex
			)	const
			noexcept
		->	bool
		{	return
			Test
			(	get()
			,	i_vIndex
			);
		}
	};

	template
		<	typename
				t_tObject
		>
	using
		Field_For
	=	Field
		<	Memory::SizeOf
			<	t_tObject
			>
		>
	;
}

export namespace
	Meta::Memory
{
	template
		<	BitSize
				t_vWidth
		>
	Constraint constexpr inline
		Constraint_Of
		<	Bit::Field
			<	t_vWidth
			>
		>
	=	[]{	return
			Constraint
			{	.Align
				=	{	::std::countr_zero
						(	static_cast<::Meta::USize>
							(	t_vWidth
								.	Value
							)
						)
					+	1
					}
			,	.Size
				=	t_vWidth
			};
		}()
	;
}
