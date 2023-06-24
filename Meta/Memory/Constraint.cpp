export module Meta.Memory.Constraint;

import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Memory.Alignment;
import Meta.Size;

import Std;

namespace
	Meta::Memory
{
	export Alignment constexpr inline
		ByteAlign
	{	::std::countr_zero
		(	static_cast<USize>
			(	BitSize
				(	1_byte
				)
			.	Value
			)
		)
	+	1
	};

	// necessary to check unions
	template
		<	typename
				t_tEntity
		>
	struct
		Wrapper
	{
		[[no_unique_address]]
		t_tEntity _;
	};

	template
		<	typename
				t_tEntity
		>
	Alignment constexpr inline
		Align_Of
	{	::std::countr_zero
		(	alignof
			(	t_tEntity
			)
		)
	+	ByteAlign
		.	Value
	};


	template
		<	typename
				t_tEntity
		>
	BitSize constexpr inline
		Size_Of
	=	ByteSize
		{	sizeof
			(	t_tEntity
			)
		}
	;
}

export namespace
	Meta::Memory
{
	struct
		Constraint
	{
		Alignment
			Align
		;
		BitSize
			Size
		;

		[[nodiscard]]
		auto constexpr inline
		(	IsAligned
		)	()	const
			noexcept
		->	bool
		{	return
				Align
			>	0_align
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	IsStateful
		)	()	const
			noexcept
		->	bool
		{	return
				Size
			>	0_bit
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<=>
		)	(	Constraint
			,	Constraint
			)
			noexcept
		=	default;
	};

	//	customization point
	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
	{	0_align
	,	0_bit
	};

	template
		<>
	Constraint constexpr inline
		Constraint_Of
		<	bool
		>
	{	1_align
	,	1_bit
	};

	template
		<>
	Constraint constexpr inline
		Constraint_Of
		<	::std::nullptr_t
		>
	{	Align_Of<::std::nullptr_t>
	,	Size_Of<::std::nullptr_t>
	};

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity
			*
		>
	{	Align_Of<t_tEntity*>
	,	Size_Of<t_tEntity*>
	};

	template
		<	typename
				t_tMember
		,	typename
				t_tObject
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tMember
			t_tObject
			::*
		>
	{	Align_Of<t_tMember t_tObject::*>
	,	Size_Of<t_tMember t_tObject::*>
	};

	template
		<	typename
				t_tEntity
		>
	requires
	(	requires
		{	sizeof(t_tEntity);
			alignof(t_tEntity);
		}
	and	(	not
			::std::is_class_v
			<	t_tEntity
			>
		or	not
			::std::is_empty_v
			<	t_tEntity
			>
		)
	and	(	not
			::std::is_union_v
			<	t_tEntity
			>
		or	not
			::std::is_empty_v
			<	Wrapper
				<	t_tEntity
				>
			>
		)
	)
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity
		>
	{	Align_Of<t_tEntity>
	,	Size_Of<t_tEntity>
	};

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity const
		>
	=	Constraint_Of
		<	t_tEntity
		>
	;

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity volatile
		>
	=	Constraint_Of
		<	t_tEntity
		>
	;

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity const volatile
		>
	=	Constraint_Of
		<	t_tEntity
		>
	;

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity
				[]
		>
	{	Constraint_Of
		<	t_tEntity
		>
		.	Align
	,	0_bit
	};

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity const
				[]
		>
	=	Constraint_Of
		<	t_tEntity
				[]
		>
	;

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity volatile
				[]
		>
	=	Constraint_Of
		<	t_tEntity
				[]
		>
	;

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity const volatile
				[]
		>
	=	Constraint_Of
		<	t_tEntity
				[]
		>
	;

	template
		<	typename
				t_tEntity
		,	USize
				t_vExtent
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity
				[	t_vExtent
				]
		>
	{	Constraint_Of
			<	t_tEntity
			>
		.	Align
	,		Constraint_Of
				<	t_tEntity
				>
			.	Size
		*	t_vExtent
	};

	template
		<	typename
				t_tEntity
		,	USize
				t_vExtent
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity const
				[	t_vExtent
				]
		>
	=	Constraint_Of
		<	t_tEntity
				[	t_vExtent
				]
		>
	;

	template
		<	typename
				t_tEntity
		,	USize
				t_vExtent
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity volatile
				[	t_vExtent
				]
		>
	=	Constraint_Of
		<	t_tEntity
				[	t_vExtent
				]
		>
	;

	template
		<	typename
				t_tEntity
		,	USize
				t_vExtent
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity const volatile
				[	t_vExtent
				]
		>
	=	Constraint_Of
		<	t_tEntity
				[	t_vExtent
				]
		>
	;

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity
			&
		>
	=	Constraint_Of
		<	t_tEntity
			*
		>
	;

	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
		<	t_tEntity
			&&
		>
	=	Constraint_Of
		<	t_tEntity
			*
		>
	;

	template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		BitSize_Of
	=		Constraint_Of
			<	t_tEntity
			>
		.	Size
	;

	template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		BitAlign_Of
	=		Constraint_Of
			<	t_tEntity
			>
		.	Align
	;
}
