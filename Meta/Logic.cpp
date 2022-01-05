export module Meta.Logic;

export import Meta.Logic.BitTerm;

export import Meta.Concepts;
export import Meta.TupleSet;

import Std;

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
	auto constexpr
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
	auto constexpr
	(	EvaluateClause
	)	(	IndexToken
			<	t_npLiteralIndex
				...
			>
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
	auto constexpr
	(	EvaluateTerm
	)	(	IndexToken
			<	t_npClauseIndex
				...
			>
		,	TupleSet<t_tpLiteral...> const
			&	i_rLiterals
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{
		return
		(	...
		or	EvaluateClause<t_vTerm[t_npClauseIndex]>
			(	Sequence
				<	t_vTerm[t_npClauseIndex]
				.	LiteralCount()
				>()
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
	auto constexpr inline
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

	template
		<	USize
				t_vLiteralField
		,	typename
			...	t_tpLiteral
		>
	auto constexpr
	(	TrimLiterals
	)	(	TupleSet<t_tpLiteral...> const
			&	i_rLiterals
		)
	{
		auto constexpr
			nRequiredLiteralCount
		=	CountOneBits(t_vLiteralField)
		;
		if	constexpr
			(	nRequiredLiteralCount
			==	sizeof...(t_tpLiteral)
			)
			return i_rLiterals;
		else
			return
			[	&i_rLiterals
			]	<	USize
					...	t_npIndex
				>(	IndexToken<t_npIndex...>
				)
			{	return
				TupleSet
				{	i_rLiterals
					[	Index
						<	GetIndexOfNthOneBit
							(	t_vLiteralField
							,	t_npIndex
							)
						>
					]
					...
				};
			}(	Sequence<nRequiredLiteralCount>()
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
		Term
	{
		template<Logic::BitTerm, typename...>
		friend class Term;

		explicit constexpr
		(	Term
		)	(	TupleSet<t_tpLiteral...> const
				&	i_rLiterals
			)
		:	Literals
			{	i_rLiterals
			}
		{}

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
					(	TrimLiterals
						<	vResultLiteralField
						>(	Literals.Union
							(	i_rRight.Literals
							)
						)
					)
				;
		}

	public:
		static Logic::BitTerm constexpr
			BitTerm
		=	t_vTerm
		;

		TupleSet<t_tpLiteral...> const
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

		constexpr
		(	Term
		)	()
		requires
			(	LiteralCount
			==	0uz
			)
		and	(	t_vTerm.IsAbsorbing()
			or	t_vTerm.IsIdentity()
			)
		{}

		explicit constexpr
		(	Term
		)	(	t_tpLiteral const
				&
				...	i_rpLiteral
			)
		requires
			(	LiteralCount
			==	1uz
			)
		and	(	ClauseCount
			==	1uz
			)
		and	(	t_vTerm[0uz].LiteralCount()
			==	1uz
			)
		:	Literals
			{	i_rpLiteral
				...
			}
		{}

		explicit constexpr
		(	Term
		)	(	Trait::Not<t_tpLiteral> const
				&...
			)
		=	delete;

		constexpr
		(	Term
		)	(	Term const&
			)
		=	default;

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
				>()
			,	Literals
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		template
			<	USize
					t_nClauseIndex
			>
		friend auto constexpr
		(	GetClause
		)	(	Term const
				&	i_rTerm
			)
		requires
			(t_nClauseIndex < Logic::ClauseLimit)
		{
			auto constexpr
				vClause
			=	t_vTerm
				[	t_nClauseIndex
				]
			;

			auto constexpr
				vClauseLiteralField
			=	vClause.LiteralField()
			;
			auto constexpr
				vClauseTerm
			=	Logic::BitTerm
				{	vClause
				}
			;

			if	constexpr
				(	vClauseLiteralField
				==	0uz
				)
				return Term<vClauseTerm>{};
			else
				return
					Term
					<	vClauseTerm.TrimLiterals()
					>
				::	SetLiterals
					(	TrimLiterals
						<	vClauseLiteralField
						>(	i_rTerm.Literals
						)
					)
				;
		}
	};

	template
		<	typename
				t_tLiteral
		>
	(	Term
	)	(	t_tLiteral const&
		)
	->	Term
		<	Logic::BitClause{0uz}
		,	t_tLiteral
		>
	;

	template
		<	Logic::BitTerm
				t_vTerm
		,	typename
			...	t_tpLiteral
		>
	(	Term
	)	(	Term<t_vTerm, t_tpLiteral...> const&
		)
	->	Term<t_vTerm, t_tpLiteral...>
	;

	Term constexpr inline
		True
	=	Term<Logic::BitClause::Absorbing()>
		{}
	;

	Term constexpr inline
		False
	=	Term<Logic::BitClause::Identity()>
		{}
	;

	namespace
		Trait
	{
		USize constexpr inline
			ConstraintLiteralLimit
		=	8uz
		;

		USize constexpr inline
			ConstraintClauseLimit
		=	4uz
		;

		template
			<	Logic::BitClause
					t_vClause
			,	TupleSet
					t_vLiterals
			>
		struct
			ConstraintClause
		{
			static_assert
			(	t_vClause.LiteralCount()
			<=	ConstraintLiteralLimit
			,	"Too many predicates to be used in a constraint clause!"
			);

			template
				<	USize
						t_nLiteralIndex
				>
			static auto constexpr
			(	GetLiteral
			)	()
			{
				if	constexpr(t_vClause.IsIdentity())
					return
					Trait::Contradiction
					{};
				else
				if	constexpr
					(	t_vClause.TestPositive
						(	t_nLiteralIndex
						)
					)
					return
					t_vLiterals
					[	Index<t_nLiteralIndex>
					];
				else
				if	constexpr
					(	t_vClause.TestNegative
						(	t_nLiteralIndex
						)
					)
					return
					not
					t_vLiterals
					[	Index<t_nLiteralIndex>
					];
				else
					return
					Trait::Tautology
					{};
			}

			template
				<	USize
						t_nLiteralIndex
				>
			requires
				(t_nLiteralIndex < ConstraintLiteralLimit)
			using
				Literal
			=	ConstraintLiteral
				<	decltype(GetLiteral<t_nLiteralIndex>())
				,	GetLiteral<t_nLiteralIndex>()
				>
			;
		};

		template
			<	Logic::BitTerm
					t_vTerm
			,	TupleSet
					t_vLiterals
			>
		struct
			ConstraintTerm
		{
			static_assert
			(	t_vTerm.ClauseCount()
			<=	ConstraintClauseLimit
			,	"Too many clauses to be used in a constraint term!"
			);

			template
				<	USize
						t_nClauseIndex
				>
			requires
				(t_nClauseIndex < ConstraintClauseLimit)
			using
				Clause
			=	ConstraintClause
				<	t_vTerm[t_nClauseIndex].TrimLiterals()
				,	TrimLiterals<t_vTerm[t_nClauseIndex].LiteralField()>
					(	t_vLiterals
					)
				>
			;
		};
	}

	template
		<	typename
				t_tProto
		,	Term
				t_fTrait
		>
	concept
		ProtoConstraint
	=	Proto::Term
		<	t_tProto
		,	Trait::ConstraintTerm
			<	t_fTrait.BitTerm
			,	t_fTrait.Literals
			>
		>
	;
}
