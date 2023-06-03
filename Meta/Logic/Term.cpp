export module Meta.Logic.Term;

import Meta.Logic.Bit.Clause;
import Meta.Logic.Bit.Term;
import Meta.Logic.Erased.Term;
import Meta.Logic.Bit.Evaluate;
import Meta.Bit.Index;
import Meta.Token.Type;
import Meta.Token.Index;

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
		Erased::Term static constexpr inline
			Erased
		{	t_vTerm
		,	{	Type<t_tpLiteral>
				...
			}
		};

		explicit(false) constexpr inline
		(	operator
			Erased::Term const&
		)	()	const
			noexcept
		{	return Erased;	}

		auto static constexpr inline
			LiteralCount
		=	sizeof...(t_tpLiteral)
		;

		auto static constexpr inline
			ClauseCount
		=	t_vTerm.ClauseCount()
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	auto
				&&
				...	i_rpArgument
			)
			noexcept
		->	bool
		{	return
			Bit::EvaluateTerm
			(	t_vTerm
			,	Bit::EvaluationField
				(	::std::make_index_sequence
					<	sizeof...(t_tpLiteral)
					>{}
				,	t_tpLiteral{}
					(	::std::forward<decltype(i_rpArgument)>
						(	i_rpArgument
						)
						...
					)
					...
				)
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
	,	::std::size_t
		...	t_npIndex
	>
auto constexpr inline
	MakeTerm
	(	::std::index_sequence
		<	t_npIndex
			...
		>
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
{	return
	{};
}

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
			>(	::std::make_index_sequence
				<	t_vErasedTerm
				.	LiteralCount()
				>{}
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
