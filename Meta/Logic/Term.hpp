export module Meta.Logic:Term;

export import :BitTerm;
export import :LiteralBase;

export import Meta.Data;
export import Meta.Arithmetic;

import Std;

using ::Meta::Arithmetic::CountUpperZeroBits;
using ::Meta::Arithmetic::CountLowerZeroBits;

namespace
	Meta
{
	template
		<	Logic::BitClause
				t_vLiteral
		,	typename
			...	t_tpLiteral
		,	typename
			...	t_tpArgument
		>
	static auto constexpr
	(	EvaluateLiteral
	)	(	TupleSet<t_tpLiteral...> const
			&	i_rLiterals
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{
		if	constexpr(t_vLiteral.Positive)
		{
			auto constexpr nIndex = CountLowerZeroBits(t_vLiteral.Positive);
			return
			i_rLiterals[Index<nIndex>]
			(	::std::forward<t_tpArgument>(i_rpArgument)
				...
			);
		}
		else
		{
			auto constexpr nIndex = CountLowerZeroBits(t_vLiteral.Negative);
			return
			not
			i_rLiterals[Index<nIndex>]
			(	::std::forward<t_tpArgument>(i_rpArgument)
				...
			);
		}
	}

	template
		<	Logic::BitClause
				t_vClause
		,	USize
			...	t_npLiteralIndex
		,	typename
			...	t_tpLiteral
		,	typename
			...	t_tpArgument
		>
	static auto constexpr
	(	EvaluateClause
	)	(	IndexToken<t_npLiteralIndex...>
		,	TupleSet<t_tpLiteral...> const
			&	i_rLiterals
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{	return
		(	...
		and	EvaluateLiteral<t_vClause[t_npLiteralIndex]>
			(	i_rLiterals
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			)
		);
	}

	template
		<	Logic::BitTerm
				t_vTerm
		,	USize
			...	t_npClauseIndex
		,	typename
			...	t_tpLiteral
		,	typename
			...	t_tpArgument
		>
	static auto constexpr
	(	EvaluateTerm
	)	(	IndexToken<t_npClauseIndex...>
		,	TupleSet<t_tpLiteral...> const
			&	i_rLiterals
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{	return
		(	...
		or	EvaluateClause<t_vTerm[t_npClauseIndex]>
			(	Sequence
				<	t_vTerm[t_npClauseIndex]
				.	LiteralCount()
				>
			,	i_rLiterals
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			)
		);
	}

	template
		<	typename
				t_tResult
		>
	using
		BinaryTermFunction
	=	auto
		(*)	(	Logic::BitTerm const&
			,	Logic::BitTerm const&
			)
		->	t_tResult
	;

	BinaryTermFunction<Logic::BitTerm> constexpr inline
		ComputeDisjunction
	=	&Logic::Intersection
	;
	BinaryTermFunction<Logic::BitTerm>  constexpr inline
		ComputeConjunction
	=	&Logic::Union
	;
	BinaryTermFunction<bool>  constexpr inline
		ComputeEquivalence
	=	&Logic::operator==
	;

	template
		<	typename
			...	t_tpLiteral
		>
	static auto constexpr inline
		DeduceTupleSet
	=	static_cast
		<	TupleSet
			<	t_tpLiteral
				...
			>	const
			*
		>(	nullptr
		)
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpLeftLiteral
		,	typename
			...	t_tpRightLiteral
		>
	static auto constexpr
	(	Compute
	)	(	BinaryTermFunction<t_tResult>
				i_fCompute
		,	Logic::BitTerm const
			&	i_rLeftTerm
		,	TupleSet<t_tpLeftLiteral...> const
			*	i_aDeduceLeftLiterals
		,	Logic::BitTerm const
			&	i_rRightTerm
		,	TupleSet<t_tpRightLiteral...> const
			*	i_aDeduceRightLiterals
		)
	->	t_tResult
	{
		using
			tLiteralUnion
		=	decltype
			(	i_aDeduceLeftLiterals
			->	Union
				(	*i_aDeduceRightLiterals
				)
			)
		;
		static_assert
		(	(	tLiteralUnion
			::	size()
			<=	Logic::LiteralLimit
			)
		,	"Exceeded maximum amount of predicates per term!"
		);

		::std::array<USize const, sizeof...(t_tpRightLiteral)> constexpr
			vPermutationArray
		={	(	tLiteralUnion
			::	IndexOf(Type<t_tpRightLiteral>)
			)
			...
		};

		return
		i_fCompute
		(	i_rLeftTerm
		,		i_rRightTerm
			.	Permutation
				(	vPermutationArray
				)
		);
	}
}

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
		template<Logic::BitTerm, typename...>
		friend class Term;

		template
			<	typename
				...	t_tpNewLiteral
			>
		static auto constexpr
		(	SetLiterals
		)	(	TupleSet
				<	t_tpNewLiteral
					...
				>	const
				&	i_rLiterals
			)
		->	Term
			<	t_vTerm
			,	t_tpNewLiteral
				...
			>
		{	return
			Term
			<	t_vTerm
			,	t_tpNewLiteral
				...
			>{	i_rLiterals
			};
		}

		template
			<	BinaryTermFunction<Logic::BitTerm>
					i_fCompute
			,	Logic::BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightLiteral
			>
		auto constexpr
		(	ComputeTerm
		)	(	Term<t_vRightTerm, t_tpRightLiteral...> const
				&	i_rRight
			)	const
		{
			auto constexpr
				vResultTerm
			=	Compute
				(	i_fCompute
				,	t_vTerm
				,	DeduceTupleSet<t_tpLiteral...>
				,	t_vRightTerm
				,	DeduceTupleSet<t_tpRightLiteral...>
				)
			;

			auto constexpr
				vResultLiteralField
			=	vResultTerm.LiteralField()
			;

			if	constexpr
				(	vResultLiteralField
				==	0uz
				)
				return Term<vResultTerm>{};
			else
				return
					Term
					<	vResultTerm.TrimLiterals()
					>
				::	SetLiterals
					(	Literals
					.	Union
						(	i_rRight.Literals
						)
					.	Filter
						(	Index<vResultLiteralField>
						)
					)
				;
		}

	public:
		static Logic::BitTerm constexpr
			BitTerm
		=	t_vTerm
		;

		TupleSet<t_tpLiteral...>
			Literals
		;

		static USize constexpr
			LiteralCount
		=	sizeof...(t_tpLiteral)
		;

		static USize constexpr
			ClauseCount
		=	t_vTerm.ClauseCount()
		;

		auto constexpr
		(	operator not
		)	()	const
		{	return
			Term
			<	Negation(t_vTerm)
			,	t_tpLiteral
				...
			>{	Literals
			};
		}

		auto constexpr
		(	operator and
		)	(	Term const
				&
			)	const
		->	Term
		{	return *this;	}

		auto constexpr
		(	operator or
		)	(	Term const
				&
			)	const
		->	Term
		{	return *this;	}

		auto constexpr
		(	operator ==
		)	(	Term const&
			)	const
		->	bool
		{	return true;	}

		template
			<	Logic::BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightLiteral
			>
		auto constexpr
		(	operator and
		)	(	Term<t_vRightTerm, t_tpRightLiteral...> const
				&	i_rRight
			)	const
		{	return ComputeTerm<ComputeConjunction>(i_rRight);	}

		template
			<	Logic::BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightLiteral
			>
		auto constexpr
		(	operator or
		)	(	Term<t_vRightTerm, t_tpRightLiteral...> const
				&	i_rRight
			)	const
		{	return ComputeTerm<ComputeDisjunction>(i_rRight);	}

		template
			<	Logic::BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightLiteral
			>
		auto constexpr
		(	operator ==
		)	(	Term<t_vRightTerm, t_tpRightLiteral...> const&
			)	const
		{	return
			Compute
			(	ComputeEquivalence
			,	t_vTerm
			,	DeduceTupleSet<t_tpLiteral...>
			,	t_vRightTerm
			,	DeduceTupleSet<t_tpRightLiteral...>
			);
		}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator ()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	const
		->	bool
		{	return
			EvaluateTerm
			<	t_vTerm
			>(	Sequence
				<	t_vTerm.ClauseCount()
				>
			,	Literals
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
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

	extern Term<Logic::BitClause::Absorbing()>
		True
	;

	extern Term<Logic::BitClause::Identity()>
		False
	;

	template
		<	typename
				t_tLiteral
		>
	Term
	<	Logic::BitClause{0uz}
	,	t_tLiteral
	>	inline
		Literal
	{};
}
