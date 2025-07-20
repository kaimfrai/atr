export module Meta.Token.Array;

import Meta.Token.Type;
import Meta.Size;

import std;

export namespace
	Meta
{
	template
		<	typename
				t_tElement
		,	USize
				t_vExtent
		>
	TypeToken<::std::array<t_tElement, t_vExtent>> constexpr inline
		ArrayType
	{};

	template
		<	typename
				t_tElement
		>
	TypeToken<t_tElement[]> constexpr inline
		ArrayType
		<	t_tElement
		,	0uz
		>
	{};

	template
		<	typename
				t_tElement
		,	USize
				t_vExtent
		>
	using
		ArrayEntity
	=	TypeEntity
		<	ArrayType
			<	t_tElement
			,	t_vExtent
			>
		>
	;
}
