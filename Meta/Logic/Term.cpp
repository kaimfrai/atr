export module Meta.Logic.Term;

export import Meta.Logic.BitTerm;
export import Meta.Logic.LiteralBase;
import Meta.Logic.ErasedTerm;
import Meta.Logic.Bit.Evaluate;

import Meta.Size;
import Meta.Buffer.Static;
export import Meta.Token;
import Meta.Functional;
import Meta.Bit.OneIndexRange;
import Meta.Bit.Field;
import Meta.Bit.Field.CountOnes;
import Meta.Bit.Field.Set;
import Meta.Bit.Index;
import Meta.Bit.Index.Arithmetic;
import Meta.Bit.Index.Compare;

import Std;

using namespace ::Meta::Literals;

export namespace
	Meta
{
	template
		<	Logic::BitTerm
				t_vTerm
		,	typename
			...	t_tpLiteral
		>
	class
		Term final
	{
	public:
		static ErasedTerm constexpr
			Erased
		{	t_vTerm
		,	{	Type<t_tpLiteral>
				...
			}
		};

		explicit(false) constexpr
		(	operator ErasedTerm const&
		)	()	const
			noexcept
		{	return Erased;	}

		static USize constexpr
			LiteralCount
		=	sizeof...(t_tpLiteral)
		;

		static USize constexpr
			ClauseCount
		=	t_vTerm.ClauseCount()
		;

		static auto constexpr
		(	operator ()
		)	(	auto
				&&
				...	i_rpArgument
			)
		->	bool
		{	return
			Logic::Bit::EvaluateTerm
			(	t_vTerm
			,	std::array
				{	t_tpLiteral{}
					(	std::forward<decltype(i_rpArgument)>
						(	i_rpArgument
						)
						...
					)
					...
				}
			);
		}
	};

	template
		<	Logic::BitTerm
				t_vTerm
		,	typename
			...	t_tpLiteral
		>
	(	Term
	)	(	Term<t_vTerm, t_tpLiteral...>
		)
	->	Term<t_vTerm, t_tpLiteral...>
	;
}

template
	<	::Meta::ErasedTerm
			t_vErased
	,	::Meta::USize
		...	t_npIndex
	>
auto constexpr
	MakeTerm
	(	::Meta::IndexToken<t_npIndex...>
	)
->	::Meta::Term
	<	t_vErased.BitTerm
	,	::Meta::RestoreTypeEntity
		<	t_vErased
		.	Literals
			[	t_npIndex
			]
		>
		...
	>
;

export namespace
	Meta
{
	template
		<	ErasedTerm
				t_vErasedTerm
		>
	using
		DeduceTerm
	=	decltype
		(	::MakeTerm
			<	t_vErasedTerm
			>(	Sequence<t_vErasedTerm.LiteralCount()>
			)
		)
	;

	DeduceTerm<ErasedTrue> extern
		True
	;

	DeduceTerm<ErasedFalse> extern
		False
	;

	template
		<	typename
				t_tLiteral
		>
	DeduceTerm
	<	ErasedLiteral
		<	t_tLiteral
		>
	>	inline
		Literal
	{};
}
