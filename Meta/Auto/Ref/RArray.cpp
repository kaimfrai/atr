export module Meta.Auto.Ref.RArray;

import Meta.Auto.Var;
import Meta.Auto.Ref.StaticCountArray;

import Meta.Size;

export namespace
	Meta::Auto
{
	template
		<	typename
				t_tElement
		,	SSize
				t_vCount
		>
	struct
		Var
		<	t_tElement
			(&)	[	t_vCount
				]
		>
	:	StaticCountArray
		<	t_tElement
			&
		,	t_vCount
		>
	{
		using
			reference
		=	t_tElement
			&
		;

		using
			StaticCountArray
			<	t_tElement
				&
			,	t_vCount
			>
		::	StaticCountArray
		;

		explicit(false) constexpr inline
		(	Var
		)	(	Var const
				&
			)
			noexcept
		=	default;
	};

	template
		<	typename
				t_tElement
		,	SSize
				t_vExtent
		>
	using
		RArray
	=	Var
		<	t_tElement
			(&)	[	t_vExtent
				]
		>
	;

	template
		<	typename
				t_tElement
		,	SSize
				t_vExtent
		>
	using
		CArray
	=	RArray
		<	t_tElement const
		,	t_vExtent
		>
	;
}
