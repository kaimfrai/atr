export module Meta.Logic.Term;

import Meta.Logic.Bit.Term;
import Meta.Logic.Erased.Term;
import Meta.Logic.Bit.Evaluate;
import Meta.Bit.Index;
import Meta.Token;
import Meta.Size;

import Std;

using namespace ::Meta::Literals;

export namespace
	Meta::Logic
{
	template
		<	Bit::Term
				t_vTerm
		,	typename
			...	t_tpLiteral
		>
	class
		Term final
	{
	public:
		static Erased::Term constexpr
			Erased
		{	t_vTerm
		,	{	Type<t_tpLiteral>
				...
			}
		};

		explicit(false) constexpr
		(	operator Erased::Term const&
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

		[[nodiscard]]
		static auto constexpr
		(	operator ()
		)	(	auto
				&&
				...	i_rpArgument
			)
			noexcept
		->	bool
		{	return
			Bit::EvaluateTerm
			(	t_vTerm
			,	::std::array
				{	t_tpLiteral{}
					(	::std::forward<decltype(i_rpArgument)>
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
		<	Bit::Term
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
	<	::Meta::Logic::Erased::Term
			t_vErased
	,	::Meta::USize
		...	t_npIndex
	>
auto constexpr
	MakeTerm
	(	::Meta::IndexToken<t_npIndex...>
	)
->	::Meta::Logic::Term
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
	Meta::Logic
{
	template
		<	Erased::Term
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

	DeduceTerm<Erased::True> const extern
		True
	;

	DeduceTerm<Erased::False> const extern
		False
	;

	template
		<	typename
				t_tLiteral
		>
	Erased::Term constexpr inline
		Literal
	{	Bit::Clause{0_bdx}
	,	{	Type<t_tLiteral>
		}
	};

	template
		<	typename
				t_tLiteral
		>
	using
		DeduceLiteral
	=	Term
		<	Literal
			<	t_tLiteral
			>
		.	BitTerm
		,	t_tLiteral
		>
	;
}
