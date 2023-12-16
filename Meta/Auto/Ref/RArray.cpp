export module Meta.Auto.Ref.RArray;

import Meta.Auto.Primary;
import Meta.Auto.Ref.StaticCountArray;

import Meta.Size;

export namespace
	Meta
{
	template
		<	typename
				t_tElement
		,	SSize
				t_vCount
		>
	struct
		Auto
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
		(	Auto
		)	(	Auto const
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
	=	Auto
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
