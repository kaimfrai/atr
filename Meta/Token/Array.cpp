export module Meta.Token.Array;

import Meta.Token.Type;
import Meta.Size;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	TypeToken<::std::array<t_tElement, t_nExtent>> constexpr
		ArrayType
	{};

	template
		<	typename
				t_tElement
		>
	TypeToken<t_tElement[]> constexpr
		ArrayType
		<	t_tElement
		,	0uz
		>
	{};

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	using
		ArrayEntity
	=	TypeEntity
		<	ArrayType
			<	t_tElement
			,	t_nExtent
			>
		>
	;
}
