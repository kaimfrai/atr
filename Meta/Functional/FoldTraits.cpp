export module Meta.Functional.FoldTraits;

import Meta.Functional.Key;
import Meta.Functional.FoldDirection;

import Std;

export namespace
	Meta::Functional
{
	/*	May be specialized externally to provide Operator and Direction via a Token member.
	 */
	template
		<	typename
				t_tFold
		>
	struct
		FoldTraits
	{
		auto const static constexpr inline& Token = t_tFold::Token;
	};

	/* Satisfied if a specialization of FoldTraits exists that provides both Operator and Direction via a Token member.
	 */
	template
		<	typename
				t_tProto
		>
	concept
		ProtoFold
	=	std::same_as
		<	decltype((FoldTraits<t_tProto>::Token.Operator))
		,	FoldKey const&
		>
	and	std::same_as
		<	decltype((FoldTraits<t_tProto>::Token.Direction))
		,	EFoldDirection const&
		>
	;

	template
		<	FoldKey
				t_vKey
		,	EFoldDirection
				t_eDirection
		>
	struct
		FoldToken final
	{
		auto static constexpr inline Operator = t_vKey;
		auto static constexpr inline Direction = t_eDirection;
	};
}
