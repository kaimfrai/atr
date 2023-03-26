export module Meta.Bit.Field;

import Meta.Bit.Index;
import Meta.Bit.Index.Test;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Memory.Alignment;
import Meta.Memory.Constraint;
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
	//	no private members to be usable as template argument
		Field
	{
		using
			IndexType
		=	Index
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
			ValueType
		=	::std::conditional_t
			<	Memory::SizeOf<FieldType>
			==	ByteSize(t_nWidth)
			,	// if no memory is saved, use fast to compile integers
				FieldType
			,	// if it's possible to save some memory, we will
				// may hit compilation time
				Byte::Buffer
				<	t_nWidth
				>
			>
		;

		ValueType
			m_vValue
		;

		static auto constexpr
			Sanitize
		=	&
			Arithmetic::SanitizeUnsigned
			<	Mask
				<	t_nWidth
				>
			>
		;

		static auto constexpr
			AssertSanitized
		=	&
			Arithmetic::AssertSanitizedUnsigned
			<	Mask
				<	t_nWidth
				>
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
		->	Field&
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
			{	get()
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
		(	operator[]
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
				t_nWidth
		>
	Constraint constexpr inline
		Constraint_Of
		<	Bit::Field
			<	t_nWidth
			>
		>
	=	[]{	auto
				vConstraint
			=	Constraint_Of
				<	UInt
					<	t_nWidth
					>
				>
			;
			if	(	vConstraint
					.	Size
				!=	t_nWidth
				)
			{
				vConstraint
				.	Align
				=	1_align
				;

				vConstraint
				.	Size
				=	t_nWidth
				;
			}
			return
				vConstraint
			;
		}()
	;
}
