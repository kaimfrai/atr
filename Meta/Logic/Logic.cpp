export module Meta.Logic;

export import Meta.Pack;
export import Meta.TypeTraits;

/// ************************************************************************************************
///	Tag types to distinguish different term types by inheritance.
/// ************************************************************************************************
struct
	TermTag
{};

struct
	ClauseTag
:	TermTag
{};

struct
	LiteralTag
:	ClauseTag
{};

struct
	ConstantTag
:	LiteralTag
{};

/// ************************************************************************************************
///	Concepts to distinguish term types without full type deduction..
/// ************************************************************************************************
template
	<	typename
			t_tProto
	>
concept
	ProtoTerm
=	Meta::ProtoDerivedFrom
	<	t_tProto
	,	TermTag
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoClause
=	ProtoTerm
	<	t_tProto
	>
and	Meta::ProtoDerivedFrom
	<	t_tProto
	,	ClauseTag
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoLiteral
=	ProtoClause
	<	t_tProto
	>
and	Meta::ProtoDerivedFrom
	<	t_tProto
	,	LiteralTag
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoConstant
=	ProtoLiteral
	<	t_tProto
	>
and	Meta::ProtoDerivedFrom
	<	t_tProto
	,	ConstantTag
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoAtom
=	Meta::ProtoClass
	<	t_tProto
	>
and	not
	ProtoTerm
	<	t_tProto
	>
;

/// ************************************************************************************************
///	Types and templates to express term types.
/// ************************************************************************************************
template
	<	bool
			t_bConstant
	>
struct
	Constant
:	ConstantTag
{
	explicit consteval
	(	operator bool
	)	()	const
	{	return t_bConstant;	}

	auto consteval
	(	operator()
	)	(	auto
				&&
			...
		)	const
	->	bool
	{	return t_bConstant;	}
};

struct
	True final
:	Constant<true>
{
	using
		Constant<true>
	::	operator bool
	;
	using
		Constant<true>
	::	operator()
	;
};

struct
	False final
:	Constant<false>
{
	using
		Constant<false>
	::	operator bool
	;
	using
		Constant<false>
	::	operator()
	;
};

template
	<	ProtoAtom
			t_tAtom
	,	bool
			t_bPolarity
	>
struct
	Literal
:	LiteralTag
{
	auto consteval
	(	operator()
	)	(	auto
				&&
			...	i_rpArgument
		)	const
	->	bool
	{	return
		(	t_bPolarity
		==	t_tAtom
			{}(	// do not include std::forward just for this
				static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)...
			)
		);
	}
};

template
	<	ProtoAtom
			t_tAtom
	>
struct
	Atom final
:	Literal
	<	t_tAtom
	,	true
	>
{
	using
		Literal<t_tAtom, true>
	::	operator()
	;
};

template
	<	ProtoAtom
			t_tAtom
	>
struct
	Not final
:	Literal
	<	t_tAtom
	,	false
	>
{
	using
		Literal<t_tAtom, false>
	::	operator()
	;
};

template
	<	Meta::USize
			t_nSubtermCount
	>
struct
	SubtermCountCheck
{
	static_assert
	(	t_nSubtermCount
	<=	6uz
	,	"Maximum amount of subterms per term exceeded."
		" Please adjust Logic::ProtoClauseConstraint and Logic::ProtoConstraint to reflect"
		" a higher amount of subterms."
	);
};

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
struct
	And final
:	ClauseTag
,	SubtermCountCheck<sizeof...(t_tpLiteral)>
,	Meta::Tuple
	<	t_tpLiteral
		...
	>
{
	using Meta::Tuple<t_tpLiteral...>::operator[];

	consteval
	(	And
	)	()
	=	default;

	explicit consteval
	(	And
	)	(	t_tpLiteral
			...
		)
	{}

	auto consteval
	(	operator()
	)	(	auto
				&&
			...	i_rpArgument
		)	const
	->	bool
	{	return
		(	...
		and	t_tpLiteral{}
			(	// do not include std::forward just for this
				static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)...
			)
		);
	}
};

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	And
)	(	t_tpLiteral
		...
	)
->	And
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoClause
		...	t_tpClause
	>
struct
	Or final
:	TermTag
,	SubtermCountCheck<sizeof...(t_tpClause)>
,	Meta::Tuple
	<	t_tpClause
		...
	>
{
	using Meta::Tuple<t_tpClause...>::operator[];

	consteval
	(	Or
	)	()
	=	default;

	explicit consteval
	(	Or
	)	(	t_tpClause
			...
		)
	{}

	auto consteval
	(	operator()
	)	(	auto
				&&
			...	i_rpArgument
		)	const
	->	bool
	{	return
		(	...
		or	t_tpClause{}
			(	// do not include std::forward just for this
				static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)...
			)
		);
	}
};

template
	<	ProtoClause
		...	t_tpClause
	>
(	Or
)	(	t_tpClause
		...
	)
->	Or
	<	t_tpClause
		...
	>
;

/// ************************************************************************************************
///	Factory functions to deduce the correct term template.
/// ************************************************************************************************
auto consteval
(	Tautology
)	(	ProtoTerm auto
	,	ProtoTerm auto
		...
	)
->	True
{	return True{};	}

auto consteval
(	Constradiction
)	(	ProtoTerm auto
	,	ProtoTerm auto
		...
	)
->	False
{	return {};	}

auto consteval
(	Conjunction
)	(	ProtoLiteral auto
			i_vLiteral
	)
->	ProtoLiteral auto
{	return	i_vLiteral;	}

auto consteval
(	Conjunction
)	(	ProtoLiteral auto
			i_vFirstLiteral
	,	ProtoLiteral auto
			i_vSecondLiteral
	,	ProtoLiteral auto
		...	i_vpRemainingLiteral
	)
->	ProtoClause auto
{	return
	And
	{	i_vFirstLiteral
	,	i_vSecondLiteral
	,	i_vpRemainingLiteral
		...
	};
}

auto consteval
(	Disjunction
)	(	ProtoClause auto
			i_vClause
	)
->	ProtoClause auto
{	return	i_vClause;	}

auto consteval
(	Disjunction
)	(	ProtoClause auto
			i_vFirstClause
	,	ProtoClause auto
			i_vSecondClause
	,	ProtoClause auto
		...	i_vpRemainingClause
	)
->	ProtoTerm auto
{	return
	Or
	{	i_vFirstClause
	,	i_vSecondClause
	,	i_vpRemainingClause
		...
	};
}

/// ************************************************************************************************
///	Properties of term types.
/// ************************************************************************************************
auto consteval
(	LiteralCount
)	(	ProtoConstant auto
	)
{	return 0uz;	}

auto consteval
(	LiteralCount
)	(	ProtoLiteral auto
	)
{	return 1uz;	}

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	LiteralCount
)	(	And<t_tpLiteral...>
	)
{	return sizeof...(t_tpLiteral);	}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	LiteralCount
)	(	Or<t_tpClause...>
	)
{	return
	(	...
	+	LiteralCount
		(	t_tpClause{}
		)
	);
}

auto consteval
(	ClauseCount
)	(	ProtoConstant auto
	)
{	return 0uz;	}

auto consteval
(	ClauseCount
)	(	ProtoClause auto
	)
{	return 1uz;	}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	ClauseCount
)	(	Or<t_tpClause...>
	)
{	return sizeof...(t_tpClause);	}

/// ************************************************************************************************
///	Apply transformation to all atom of a term..
/// ************************************************************************************************
auto consteval
(	Transform
)	(	auto
	,	ProtoConstant auto
			i_vConstant
	)
->	ProtoConstant auto
{	return i_vConstant;	}

template
	<	ProtoAtom
			t_tAtom
	>
auto consteval
(	Transform
)	(	auto
			i_fTransform
	,	Atom<t_tAtom>
			i_vLiteral
	)
->	ProtoLiteral auto
{	return
	Atom
	{	i_fTransform
		(	i_vLiteral
		)
	};
}

template
	<	ProtoAtom
			t_tAtom
	>
auto consteval
(	Transform
)	(	auto
			i_fTransform
	,	Not<t_tAtom>
			i_vLiteral
	)
->	ProtoLiteral auto
{	return
	Not
	{	i_fTransform
		(	i_vLiteral
		)
	};
}

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	Transform
)	(	auto
			i_fTransform
	,	And<t_tpLiteral...>
	)
->	ProtoClause auto
{	return
	Conjunction
	(	Transform
		(	i_fTransform
		,	t_tpLiteral{}
		)
		...
	);
}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	Transform
)	(	auto
			i_fTransform
	,	Or<t_tpClause...>
	)
->	ProtoTerm auto
{	return
	Disjunction
	(	Transform
		(	i_fTransform
		,	t_tpClause{}
		)
		...
	);
}

/// ************************************************************************************************
///	Substitute subterms with different subterms.
/// ************************************************************************************************
struct
	SubstitutionBase
{
	auto consteval
	(	operator()
	)	(	ProtoLiteral auto
				i_vLiteral
		)	const
	->	ProtoLiteral auto
	{	return i_vLiteral;	}
};

template
	<	ProtoTerm
			t_tSubTerm
	,	ProtoTerm
			t_tSubstitute
	>
struct
	SubstitutionItem
{
	auto consteval
	(	operator()
	)	(	t_tSubTerm
		)	const
	->	t_tSubstitute
	{	return{};	}
};

template
	<	ProtoLiteral
		...	t_tpSubLiteral
	>
struct
	SubstitutionItem
	<	And<t_tpSubLiteral...>
	,	True
	>
:	SubstitutionItem
	<	t_tpSubLiteral
	,	True
	>
	...
{
	using SubstitutionItem<t_tpSubLiteral, True>::operator()...;
};

template
	<	ProtoClause
		...	t_tpSubClause
	>
struct
	SubstitutionItem
	<	Or<t_tpSubClause...>
	,	False
	>
:	SubstitutionItem
	<	t_tpSubClause
	,	False
	>
	...
{
	using SubstitutionItem<t_tpSubClause, False>::operator()...;
};

template
	<	ProtoTerm
		...	t_tpSubTerm
	>
struct
	Substitute
{
	consteval
	(	Substitute
	)	(	t_tpSubTerm
			...
		)
	{}

	template
		<	ProtoTerm
			...	t_tpSubstitute
		>
	requires
		(	sizeof...(t_tpSubTerm)
		==	sizeof...(t_tpSubstitute)
		)
	struct
		Substitution
	:	SubstitutionBase
	,	SubstitutionItem
		<	t_tpSubTerm
		,	t_tpSubstitute
		>
		...
	{
		using
			SubstitutionBase
		::	operator()
		;

		using
			SubstitutionItem
			<	t_tpSubTerm
			,	t_tpSubstitute
			>
		::	operator()
			...
		;

		template
			<	ProtoLiteral
				...	t_tpLiteral
			>
		auto consteval
		(	operator()
		)	(	And<t_tpLiteral...>
			)	const
		->	ProtoTerm auto
		{	return
			(	...
			and	operator()
				(	t_tpLiteral{}
				)
			);
		}

		template
			<	ProtoClause
				...	t_tpClause
			>
		auto consteval
		(	operator()
		)	(	Or<t_tpClause...>
			)	const
		->	ProtoTerm auto
		{	return
			(	...
			or	operator()
				(	t_tpClause{}
				)
			);
		}
	};

	template
		<	ProtoTerm
			...	t_tpSubstitute
		>
	auto consteval
	(	operator()
	)	(	t_tpSubstitute
			...
		)	const
	->	Substitution<t_tpSubstitute...>
	{	return {};	}
};

template
	<	ProtoTerm
		...	t_tpSubTerm
	>
(	Substitute
)	(	t_tpSubTerm
		...
	)
->	Substitute
	<	t_tpSubTerm
		...
	>
;

auto consteval
(	SubstituteTrue
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{	return
	Substitute
	{	i_vpSubTerm
		...
	}(	(	(void)i_vpSubTerm
		,	True{}
		)
		...
	);
}

auto consteval
(	SubstituteFalse
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{	return
	Substitute
	{	i_vpSubTerm
		...
	}(	(	(void)i_vpSubTerm
		,	False{}
		)
		...
	);
}

auto consteval
(	SubstituteNegation
)	(	ProtoTerm auto
		...	i_vpSubTerm
	)
{	return
	Substitute
	{	i_vpSubTerm
		...
	}(	not
		i_vpSubTerm
		...
	);
}

auto consteval
(	AssumeLiteralsTrue
)	(	ProtoLiteral auto
		...	i_vpLiteral
	)
{	return
	Substitute
	{	i_vpLiteral
		...
	,	not
		i_vpLiteral
		...
	}(	//	first half literals substituted by true
		(	(void)i_vpLiteral
		,	True{}
		)
		...
	,	//	second half negations substituted by false
		(	(void)i_vpLiteral
		,	False{}
		)
		...
	);
}

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	AssumeLiteralsTrue
)	(	And<t_tpLiteral...>
	)
{	return
	AssumeLiteralsTrue
	(	t_tpLiteral{}
		...
	);
}

/// ************************************************************************************************
///	Equivalence functions on term types..
/// ************************************************************************************************
auto consteval
(	IsTrue
)	(	True
	)
->	bool
{	return true;	}

auto consteval
(	IsTrue
)	(	ProtoTerm auto
	)
->	bool
{	return false;	}

auto consteval
(	IsFalse
)	(	False
	)
->	bool
{	return true;	}

auto consteval
(	IsFalse
)	(	ProtoTerm auto
	)
->	bool
{	return false;	}

auto consteval
(	Implies
)	(	ProtoClause auto
			i_vAssumedTrue
	,	ProtoTerm auto
			i_vTerm
	)
->	bool
{
	if	constexpr
		(	IsFalse
			(	i_vAssumedTrue
			)
		)
		return
			true
		;
	else
		return
		IsTrue
		(	AssumeLiteralsTrue
			(	i_vAssumedTrue
			)(	i_vTerm
			)
		);
}

template
	<	ProtoClause
		...	t_tpAssumedTrue
	>
auto consteval
(	Implies
)	(	Or<t_tpAssumedTrue...>
	,	ProtoTerm auto
			i_vTerm
	)
->	bool
{	return
	(	...
	and	Implies
		(	t_tpAssumedTrue{}
		,	i_vTerm
		)
	);
}

template
	<	ProtoTerm
			t_tTerm
	>
auto consteval
(	operator ==
)	(	t_tTerm
	,	t_tTerm
	)
->	bool
{	return true;	}

auto consteval
(	operator ==
)	(	ProtoTerm auto
			i_vLeftTerm
	,	ProtoTerm auto
			i_vRightTerm
	)
->	bool
{
	//	multiple if constexpr to prevent unnecessary template instantiations
	if	constexpr
		(	ClauseCount
			(	i_vLeftTerm
			)
		!=	ClauseCount
			(	i_vRightTerm
			)
		)
		return
			false
		;
	else
	if	constexpr
		(	LiteralCount
			(	i_vLeftTerm
			)
		!=	LiteralCount
			(	i_vRightTerm
			)
		)
		return
			false
		;
	else
	if	constexpr
		(	not
			Implies
			(	i_vLeftTerm
			,	i_vRightTerm
			)
		)
		return
			false
		;
	else
		return
		Implies
		(	i_vRightTerm
		,	i_vLeftTerm
		);
}


/// ************************************************************************************************
///	Computes the conditional term under which a literal becomes redundant.
/// ************************************************************************************************
template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
struct
	LiteralRedundancy
{
	explicit consteval
	(	LiteralRedundancy
	)	(	t_tFilterLiteral
		,	t_tpClauseLiteral
			...
		)
	{}

	explicit consteval
	(	LiteralRedundancy
	)	(	t_tFilterLiteral
		,	And<t_tpClauseLiteral...>
		)
	{}

	static ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpClauseLiteral{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpSubTerm
		)	const
	->	ProtoTerm auto
	{
		auto constexpr
			fReplaceByNegation
		=	SubstituteNegation
			(	t_tFilterLiteral{}
			)
		;

		auto constexpr
			fAssumeNegationAndLiteralsTrue
		=	AssumeLiteralsTrue
			(	fReplaceByNegation
				(	t_tpClauseLiteral{}
				)
				...
			)
		;
		auto constexpr
			fIgnoreThisClause
		=	SubstituteFalse
			(	ThisClause
			)
		;

		return
		(	...
		or	fAssumeNegationAndLiteralsTrue
			(	fIgnoreThisClause
				(	i_vpSubTerm
				)
			)
		);
	}
};

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
(	LiteralRedundancy
)	(	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	)
->	LiteralRedundancy
	<	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	>
;

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
(	LiteralRedundancy
)	(	t_tFilterLiteral
	,	And<t_tpClauseLiteral...>
	)
->	LiteralRedundancy
	<	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	>
;

/// ************************************************************************************************
///	Computes the conditional term under which a clause becomes redundant.
/// ************************************************************************************************
template
	<	ProtoLiteral
		...	t_tpLiteral
	>
struct
	ClauseRedundancy
{
	explicit consteval
	(	ClauseRedundancy
	)	(	t_tpLiteral
			...
		)
	{}

	explicit consteval
	(	ClauseRedundancy
	)	(	And<t_tpLiteral...>
		)
	{}

	static ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpLiteral{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	ProtoTerm auto
			...	i_vpSubTerm
		)	const
	->	ProtoTerm auto
	{
		auto constexpr
			nContainedCount
		=(	0uz
		+	...
		+	(	ThisClause
			==	i_vpSubTerm
			)
		);
		static_assert
		(	nContainedCount
		>=	1ul
		,	"Cannot check clause redundancy without the clause itself."
		);
		if	constexpr
			(	nContainedCount
			>	1uz
			)
			return
			True
			{};
		else
		{
			auto constexpr
				fAssumeLiteralsTrue
			=	AssumeLiteralsTrue
				(	ThisClause
				)
			;
			auto constexpr
				fIgnoreThisClause
			=	SubstituteFalse
				(	ThisClause
				)
			;
			return
			(	...
			or	fAssumeLiteralsTrue
				(	fIgnoreThisClause
					(	i_vpSubTerm
					)
				)
			);
		}
	}
};

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	ClauseRedundancy
)	(	t_tpLiteral
		...
	)
->	ClauseRedundancy
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	ClauseRedundancy
)	(	And<t_tpLiteral...>
	)
->	ClauseRedundancy
	<	t_tpLiteral
		...
	>
;

/// ************************************************************************************************
///	Filters Literals within clauses for which there exists a clause with the negated Literal or
//	without it that shares all other literals.
///	For example:
///		(A and B and C)	or	(not A and B)
/// =>	(B and C)		or	(not A and B)
///		(A and B)	or	(not A and B)
///	=>	(B)			or	(B)
///		(A and B)	or	(not A)
///	=>	(B)			or	(not A)
///		(A)		or	(not A)
///	=>	(True)	or	(True)
///	Additionally synthesizes a new sub term from the clause without the literal if it makes more
///	clauses redundant than it introduces.
///	For example:
///		(A and B)	or	(not A and not B)	or	(A and C)	or	(not A and not C)
///	=>	(A and B)	or	(not A and not B)	or	(A and C)	or	(    B and not C)
///	=>	(False)		or	(not A and not B)	or	(A	and	C)	or	(    B and not C)
/// ************************************************************************************************
template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
struct
	LiteralFilter
{
	explicit consteval
	(	LiteralFilter
	)	(	t_tFilterLiteral
		,	t_tpClauseLiteral
			...
		)
	{}

	explicit consteval
	(	LiteralFilter
	)	(	t_tFilterLiteral
		,	And<t_tpClauseLiteral...>
		)
	{}

	static ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpClauseLiteral{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpSubTerm
		)	const
	->	ProtoClause auto
	{
		ProtoTerm auto constexpr
			vRedundancyCondition
		=	LiteralRedundancy
			{	t_tFilterLiteral{}
			,	ThisClause
			}(	i_vpSubTerm
				...
			)
		;

		//	this literal is always redundant
		if	constexpr
			(	IsTrue
				(	vRedundancyCondition
				)
			)
		{
			auto constexpr
				fSubstituteTrue
			=	SubstituteTrue
				(	t_tFilterLiteral{}
				)
			;
			//	new clause without the literal
			return
			(	...
			and	fSubstituteTrue
				(	t_tpClauseLiteral{}
				)
			);
		}
		else
		//	before replacing this clause can be considered it must be redundant
		if	constexpr
			(	IsFalse
				(	ClauseRedundancy
					{	ThisClause
					}(	i_vpSubTerm
						...
					,	//	no need to create a synthesized term just yet
						//	the other literals are assumed true anyways
						vRedundancyCondition
					)
				)
			)
			return
			False
			{};
		else
		{
			ProtoTerm auto constexpr
				vSynthesizedTerm
			=(	...
			and	Substitute
				{	t_tFilterLiteral{}
				}(	vRedundancyCondition
				)(	t_tpClauseLiteral{}
				)
			);

			//	at least 1 at this point (ThisClause)
			auto constexpr
				vNewRedundantClauseCount
			=(	0uz
			+	...
			+	IsTrue
				(	ClauseRedundancy
					{	i_vpSubTerm
					}(	i_vpSubTerm
						...
					,	vSynthesizedTerm
					)
				)
			);

			//	at least 1 at this point (can neither be True nor False)
			auto constexpr
				vAddedClauseCount
			=	ClauseCount
				(	vSynthesizedTerm
				)
			;
			//	using the synthesized term instead of this clause makes more clauses redundant than
			//	it introduces
			if	constexpr
				(	vNewRedundantClauseCount
				>	vAddedClauseCount
				)
				return
					vSynthesizedTerm
				;
			else
				return
				False
				{};
		}
	}
};

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
(	LiteralFilter
)	(	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	)
->	LiteralFilter
	<	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	>
;

template
	<	ProtoLiteral
			t_tFilterLiteral
	,	ProtoLiteral
		...	t_tpClauseLiteral
	>
(	LiteralFilter
)	(	t_tFilterLiteral
	,	And<t_tpClauseLiteral...>
	)
->	LiteralFilter
	<	t_tFilterLiteral
	,	t_tpClauseLiteral
		...
	>
;

/// ************************************************************************************************
///	Filters Clauses which imply the Disjunction of all other clauses.
///	For example:
///		(A and	B and C)	or	(A and B)
///	=>	(False)				or	(A and B)
///		(A and B)	or	(A and C)	or	(not B and C)
///	=>	(A and B)	or	(False)		or	(not B and C)
/// ************************************************************************************************
template
	<	ProtoLiteral
		...	t_tpLiteral
	>
struct
	ClauseFilter
{
	explicit consteval
	(	ClauseFilter
	)	(	t_tpLiteral
			...
		)
	{}

	explicit consteval
	(	ClauseFilter
	)	(	And<t_tpLiteral...>
		)
	{}

	static ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpLiteral{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	ProtoClause auto
			...	i_vpSubTerm
		)	const
	->	ProtoTerm auto
	{
		//	this clause is simply redundant, replace it by false
		if	constexpr
			(	IsTrue
				(	ClauseRedundancy
					{	ThisClause
					}(	i_vpSubTerm
						...
					)
				)
			)
			//	cancel this clause
			return
			False
			{};
		else
		//	another clause is redundant
		//	delay further simplification
		if	constexpr
			(	(	0uz
				+	...
				+	IsTrue
					(	ClauseRedundancy
						{	i_vpSubTerm
						}(	i_vpSubTerm
							...
						)
					)
				)
			>	0uz
			)
			return
				ThisClause
			;
		else
		{
			//	filter literals within this clause
			//	this may result in multiple clauses with a filtered literal each
			ProtoTerm auto constexpr
				vFilteredLiteralTerm
			=(	...
			or	LiteralFilter
				{	t_tpLiteral{}
				,	ThisClause
				}(	i_vpSubTerm
					...
				)
			);
			//	no literal was filtered
			if	constexpr
				(	IsFalse
					(	vFilteredLiteralTerm
					)
				)
				return
					ThisClause
				;
			else
				return
					vFilteredLiteralTerm
				;
		}
	}
};

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	ClauseFilter
)	(	t_tpLiteral
		...
	)
->	ClauseFilter
	<	t_tpLiteral
		...
	>
;

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
(	ClauseFilter
)	(	And<t_tpLiteral...>
	)
->	ClauseFilter
	<	t_tpLiteral
		...
	>
;

/// ************************************************************************************************
///	Takes in a new clause into a term and simplifies the resulting term as best as possible.
/// ************************************************************************************************
template
	<	ProtoClause
		...	t_tpSubTerm
	>
struct
	Simplifier
{
	explicit consteval
	(	Simplifier
	)	(	t_tpSubTerm
			...
		)
	{}

	explicit consteval
	(	Simplifier
	)	(	Or<t_tpSubTerm...>
		)
	{}

	static ProtoTerm auto constexpr
		ThisTerm
	=	Disjunction
		(	t_tpSubTerm{}
			...
		)
	;

	auto consteval
	(	operator()
	)	(	True
		)	const
	->	True
	{	return {};	}

	auto consteval
	(	operator()
	)	(	False
		)	const
	->	ProtoTerm auto
	{	return
			ThisTerm
		;
	}
	auto consteval
	(	operator()
	)	(	ProtoClause auto
				i_vNewSubTerm
		)	const
	->	ProtoTerm auto
	{
		ProtoTerm auto constexpr
			vSimplifiedNewSubTerm
		=	ClauseFilter
			{	i_vNewSubTerm
			}(	t_tpSubTerm{}
				...
			,	i_vNewSubTerm
			)
		;

		if	constexpr
			(	i_vNewSubTerm
			!=	vSimplifiedNewSubTerm
			)
			return
			(	ThisTerm
			or	vSimplifiedNewSubTerm
			);
		else
		{
			ProtoTerm auto constexpr
				vSimplifiedOldTerm
			=(	...
			or	ClauseFilter
				{	t_tpSubTerm{}
				}(	t_tpSubTerm{}
					...
				,	i_vNewSubTerm
				)
			);

			if	constexpr
				(	vSimplifiedOldTerm
				!=	ThisTerm
				)
				return
				(	vSimplifiedOldTerm
				or	i_vNewSubTerm
				);
			else
				return
				Disjunction
				(	t_tpSubTerm{}
					...
				,	i_vNewSubTerm
				);
		}
	}
};

template
	<>
struct
	Simplifier
	<	True
	>
{
	explicit consteval
	(	Simplifier
	)	(	True
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
		)	const
	->	True
	{	return {};	}
};

template
	<>
struct
	Simplifier
	<	False
	>
{
	explicit consteval
	(	Simplifier
	)	(	False
		)
	{}

	auto consteval
	(	operator()
	)	(	ProtoClause auto
				i_vNewSubTerm
		)	const
	->	ProtoClause auto
	{	return
			i_vNewSubTerm
		;
	}
};

template
	<	ProtoClause
		...	t_tpSubTerm
	>
(	Simplifier
)	(	t_tpSubTerm
		...
	)
->	Simplifier
	<	t_tpSubTerm
		...
	>
;

template
	<	ProtoClause
		...	t_tpSubTerm
	>
(	Simplifier
)	(	Or<t_tpSubTerm...>
	)
->	Simplifier
	<	t_tpSubTerm
		...
	>
;

/// ************************************************************************************************
///	Form the negation of a term.
/// ************************************************************************************************
auto consteval
(	operator not
)	(	True
	)
->	False
{	return {};	}

auto consteval
(	operator not
)	(	False
	)
->	True
{	return {};	}

template
	<	ProtoAtom
			t_tAtom
	>
auto consteval
(	operator not
)	(	Atom<t_tAtom>
	)
->	Not<t_tAtom>
{	return {};	}

template
	<	ProtoAtom
			t_tAtom
	>
auto consteval
(	operator not
)	(	Not<t_tAtom>
	)
->	Atom<t_tAtom>
{	return {};	}

template
	<	ProtoLiteral
		...	t_tpLiteral
	>
auto consteval
(	operator not
)	(	And<t_tpLiteral...>
	)
->	ProtoTerm auto
{	return
	Or
	{	not
		t_tpLiteral
		{}
		...
	};
}

template
	<	ProtoClause
		...	t_tpClause
	>
auto consteval
(	operator not
)	(	Or<t_tpClause...>
	)
->	ProtoTerm auto
{
	if	constexpr
		((	...
		and	ProtoLiteral
			<	t_tpClause
			>
		))
		return
		Conjunction
		(	not
			t_tpClause{}
			...
		);
	else
		return
		(	...
		and	not
			t_tpClause{}
		);
}

/// ************************************************************************************************
///	Form the disjunction of two terms.
/// ************************************************************************************************
auto consteval
(	operator or
)	(	ProtoTerm auto
			i_vLeft
	,	ProtoClause auto
			i_vRight
	)
->	ProtoTerm auto
{	return
	Simplifier
	{	i_vLeft
	}(	i_vRight
	);
}

template
	<	ProtoClause
		...	t_tpRightClause
	>
auto consteval
(	operator or
)	(	ProtoTerm auto
			i_vLeft
	,	Or<t_tpRightClause...>
	)
->	ProtoTerm auto
{	return
	(	i_vLeft
	or	...
	or	t_tpRightClause{}
	);
}

/// ************************************************************************************************
///	Form the conjunction of two terms.
/// ************************************************************************************************
auto consteval
(	operator and
)	(	ProtoClause auto
			i_vLeft
	,	ProtoLiteral auto
			i_vRight
	)
->	ProtoClause auto
{	return
	not
	(	not
		i_vLeft
	or	not
		i_vRight
	);
}

template
	<	ProtoLiteral
		...	t_tpRightLiteral
	>
auto consteval
(	operator and
)	(	ProtoTerm auto
			i_vLeft
	,	And<t_tpRightLiteral...>
	)
->	ProtoTerm auto
{	return
	(	i_vLeft
	and	...
	and	t_tpRightLiteral{}
	);
}

template
	<	ProtoClause
		...	t_tpRightClause
	>
auto consteval
(	operator and
)	(	ProtoClause auto
			i_vLeft
	,	Or<t_tpRightClause...>
	)
->	ProtoTerm auto
{	return
	(	...
	or	(	i_vLeft
		and	t_tpRightClause{}
		)
	);
}

template
	<	ProtoClause
		...	t_tpLeftClause
	>
auto consteval
(	operator and
)	(	Or<t_tpLeftClause...>
	,	ProtoTerm auto
			i_vRight
	)
->	ProtoTerm auto
{	return
	(	...
	or	(	t_tpLeftClause{}
		and	i_vRight
		)
	);
}

/// ************************************************************************************************
///	export namespace
///	Performs logical computations and simplifications on terms of predicates using their disjunctive
///	normal form.
/// ************************************************************************************************
export namespace
	Meta
{
	///	Wraps around a logical term which will be as simplified as possible.
	//	Wrapping ensures that the invariant of the template can never be
	///	violated from outside the module by means of specialization or
	///	type deduction, which is not possible without access to the template
	///	and type definitions.
	template
		<	ProtoTerm
				t_tTerm
		>
	struct
		Term
	{
		consteval
		(	Term
		)	()
		=	default;

		explicit consteval
		(	Term
		)	(	t_tTerm
			)
		{}

		consteval
		(	Term
		)	(	Term<t_tTerm> const
					&
			)
		=	default;

		auto consteval
		(	operator()
		)	(	auto&&
				...	i_rpArgument
			)	const
		{	return
			t_tTerm{}
			(	static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			);
		}
	};

	template
		<	SSize
				t_nLiteralIndex
		,	ProtoClause
				t_tTerm
		>
	auto consteval
	(	SelectLiteral
	)	(	Term<t_tTerm>
				i_vTerm
		)
	{
		if	constexpr
			(	ProtoLiteral
				<	t_tTerm
				>
			)
			return
			i_vTerm
			;
		else
			return
			Term
			{	t_tTerm{}
				[	RingIndex
					<	t_nLiteralIndex
					>{}
				]
			};
	}

	template
		<	SSize
				t_nClauseIndex
		,	ProtoTerm
				t_tTerm
		>
	auto consteval
	(	SelectClause
	)	(	Term<t_tTerm>
				i_vTerm
		)
	{
		if	constexpr
			(	ProtoClause
				<	t_tTerm
				>
			)
			return
			i_vTerm
			;
		else
			return
			Term
			{	t_tTerm{}
				[	RingIndex
					<	t_nClauseIndex
					>{}
				]
			};
	}

	///	Deduce type from argument.
	template
		<	ProtoTerm
				t_tTerm
		>
	(	Term
	)	(	t_tTerm
		)
	->	Term
		<	t_tTerm
		>
	;

	///	Deduce type from argument.
	template
		<	ProtoTerm
				t_tTerm
		>
	(	Term
	)	(	Term<t_tTerm> const
				&
		)
	->	Term
		<	t_tTerm
		>
	;

	template
		<	ProtoTerm
				t_tTerm
		>
	auto consteval
	(	Transform
	)	(	auto
				i_fTransform
		,	Term<t_tTerm>
		)
	{	return
		Term
		{	Transform
			(	i_fTransform
			,	t_tTerm{}
			)
		};
	}

	///	Checks the two given terms for equivalence.
	template
		<	ProtoTerm
				t_tLeftTerm
		,	ProtoTerm
				t_tRightTerm
		>
	auto consteval
	(	operator ==
	)	(	Term<t_tLeftTerm>
		,	Term<t_tRightTerm>
		)
	->	bool
	{	return
		(	t_tLeftTerm{}
		==	t_tRightTerm{}
		);
	}

	///	Forms the negation of the given term.
	template
		<	ProtoTerm
				t_tTerm
		>
	auto consteval
	(	operator not
	)	(	Term<t_tTerm>
		)
	{	return
		Term
		{	not
			t_tTerm
			{}
		};
	}

	///	Forms the Conjunction of the two given terms.
	template
		<	ProtoTerm
				t_tLeftTerm
		,	ProtoTerm
				t_tRightTerm
		>
	auto consteval
	(	operator and
	)	(	Term<t_tLeftTerm>
		,	Term<t_tRightTerm>
		)
	{	return
		Term
		{	t_tLeftTerm{}
		and t_tRightTerm{}
		};
	}

	///	Forms the Disjunction of the two given terms.
	template
		<	ProtoTerm
				t_tLeftTerm
		,	ProtoTerm
				t_tRightTerm
		>
	auto consteval
	(	operator or
	)	(	Term<t_tLeftTerm>
		,	Term<t_tRightTerm>
		)
	{	return
		Term
		{	t_tLeftTerm{}
		or	t_tRightTerm{}
		};
	}

	auto constexpr inline
		True
	=	Term
		<	::True
		>{}
	;

	auto constexpr inline
		False
	=	Term
		<	::False
		>{}
	;

	///	Convenience alias to create a term for an atomic predicate.
	template
		<	ProtoAtom
				t_tAtom
		>
	auto constexpr inline
		Atom
	=	Term
		<	::Atom
			<	t_tAtom
			>
		>{}
	;

	template
		<	typename
				t_tProto
		,	Term
				t_vLiteral
		>
	concept
		ProtoLiteralConstraint
	=	ProtoPredicate
		<	t_tProto
		,	t_vLiteral
		>
	;

	template
		<	typename
				t_tProto
		,	Term
				t_vClause
		>
	concept
		ProtoClauseConstraint
	=	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<0z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<1z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<2z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<3z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<4z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<5z>(t_vClause)
		>
	;

	template
		<	typename
				t_tProto
		,	Term
				t_vTerm
		>
	concept
		ProtoConstraint
	=	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<0z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<1z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<2z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<3z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<4z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<5z>(t_vTerm)
		>
	;
}

module :private;

/// ****************************************************************************
///	Tests for Concepts
/// ****************************************************************************

struct P {};
struct Q {};
struct R {};
struct S {};

static_assert(
	ProtoAtom<		P	>);
static_assert(not
	ProtoTerm<		P	>);
static_assert(not
	ProtoClause<	P	>);
static_assert(not
	ProtoLiteral<	P	>);
static_assert(not
	ProtoConstant<	P	>);

static_assert(not
	ProtoAtom<		True	>);
static_assert(
	ProtoTerm<		True	>);
static_assert(
	ProtoClause<	True	>);
static_assert(
	ProtoLiteral<	True	>);
static_assert(
	ProtoConstant<	True	>);

static_assert(not
	ProtoAtom<		False	>);
static_assert(
	ProtoTerm<		False	>);
static_assert(
	ProtoClause<	False	>);
static_assert(
	ProtoLiteral<	False	>);
static_assert(
	ProtoConstant<	False	>);

static_assert(
	!ProtoAtom<		Atom<P>	>);
static_assert(
	ProtoTerm<		Atom<P>	>);
static_assert(
	ProtoClause<	Atom<P>	>);
static_assert(
	ProtoLiteral<	Atom<P>	>);
static_assert(not
	ProtoConstant<	Atom<P>	>);

static_assert(not
	ProtoAtom<		Not<P>	>);
static_assert(
	ProtoTerm<		Not<P>	>);
static_assert(
	ProtoClause<	Not<P>	>);
static_assert(
	ProtoLiteral<	Not<P>	>);
static_assert(not
	ProtoConstant<	Not<P>	>);

static_assert(not
	ProtoAtom<		And<Atom<P>, Atom<Q>>	>);
static_assert(
	ProtoTerm<		And<Atom<P>, Atom<Q>>	>);
static_assert(
	ProtoClause<	And<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoLiteral<	And<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoConstant<	And<Atom<P>, Atom<Q>>	>);

static_assert(not
	ProtoAtom<		Or<Atom<P>, Atom<Q>>	>);
static_assert(
	ProtoTerm<		Or<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoClause<	Or<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoLiteral<	Or<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoConstant<	Or<Atom<P>, Atom<Q>>	>);

static_assert(not
	ProtoAtom<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(
	ProtoTerm<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(not
	ProtoClause<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(not
	ProtoLiteral<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(not
	ProtoConstant<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);

static_assert(not
	ProtoAtom<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(
	ProtoTerm<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(not
	ProtoClause<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(not
	ProtoLiteral<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(not
	ProtoConstant<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
