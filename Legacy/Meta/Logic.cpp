export module Legacy.Meta.Logic;

export import Meta.TupleList;
export import Meta.Predicate;

/// ************************************************************************************************
///	Tag types to distinguish different term types by inheritance.
/// ************************************************************************************************
struct
	TermTag
{};

struct
	ClauseTag
:	::TermTag
{};

struct
	LiteralTag
:	::ClauseTag
{};

struct
	ConstantTag
:	::LiteralTag
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
=	::Meta::ProtoDerivedFrom
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
and	::Meta::ProtoDerivedFrom
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
=	::ProtoClause
	<	t_tProto
	>
and	::Meta::ProtoDerivedFrom
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
=	::ProtoLiteral
	<	t_tProto
	>
and	::Meta::ProtoDerivedFrom
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
=	::Meta::ProtoClass
	<	t_tProto
	>
and	not
	::ProtoTerm
	<	t_tProto
	>
;

/// ************************************************************************************************
///	Types and templates to express term types.
/// ************************************************************************************************
template
	<	bool
			t_bPolarity
	>
struct
	Constant
;

template
	<	::ProtoAtom
			t_tAtom
	>
struct
	Atom
;

template
	<	::ProtoAtom
			t_tAtom
	>
struct
	Not
;

template
	<	::ProtoLiteral
		...	t_tpLiteral
	>
struct
	And
;

template
	<	::ProtoClause
		...	t_tpClause
	>
struct
	Or
;

template
	<	bool
			t_bPolarity
	>
struct
	Constant final
:	::ConstantTag
{
	explicit constexpr
	(	operator bool
	)	()	const
	{	return t_bPolarity;	}

	auto constexpr
	(	operator()
	)	(	auto
				&&
			...
		)	const
	->	bool
	{	return t_bPolarity;	}

	friend auto constexpr
	(	operator not
	)	(	::Constant<t_bPolarity>
		)
	->	::Constant<not t_bPolarity>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Constant<t_bPolarity>
		,	::Constant<t_bPolarity>
		)
	->	::Constant<t_bPolarity>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Constant<t_bPolarity>
		,	::Constant<not t_bPolarity>
		)
	->	::Constant<false>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Constant<t_bPolarity>
		,	::Constant<t_bPolarity>
		)
	->	::Constant<t_bPolarity>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Constant<t_bPolarity>
		,	::Constant<not t_bPolarity>
		)
	->	::Constant<true>
	{	return {};	}

	friend auto constexpr
	(	LiteralCount
	)	(	::Constant<t_bPolarity>
		)
	->	::Meta::USize
	{	return 0uz;	}

	friend auto constexpr
	(	ClauseCount
	)	(	::Constant<t_bPolarity>
		)
	->	::Meta::USize
	{	return 0uz;	}
};

using
	True
=	::Constant
	<	true
	>
;

using
	False
=	::Constant
	<	false
	>
;

template
	<	::ProtoAtom
			t_tAtom
	>
struct
	Atom final
:	::LiteralTag
{
	auto constexpr
	(	operator()
	)	(	auto
				&&
			...	i_rpArgument
		)	const
	->	bool
	{	return
		t_tAtom
		{}(	// do not include std::forward just for this
			static_cast<decltype(i_rpArgument)>
			(	i_rpArgument
			)...
		)
		;
	}

	friend auto constexpr
	(	operator not
	)	(	::Atom<t_tAtom>
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Atom<t_tAtom>
		,	::True
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Atom<t_tAtom>
		,	::False
		)
	->	::False
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Atom<t_tAtom>
		,	::Atom<t_tAtom>
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	template
		<	::ProtoLiteral
				t_tRightLiteral
		>
	friend auto constexpr
	(	operator and
	)	(	::Atom<t_tAtom>
		,	t_tRightLiteral
		)
	->	::And<::Atom<t_tAtom>, t_tRightLiteral>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::True
		,	::Atom<t_tAtom>
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::False
		,	::Atom<t_tAtom>
		)
	->	::False
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Atom<t_tAtom>
		,	::True
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Atom<t_tAtom>
		,	::False
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Atom<t_tAtom>
		,	::Atom<t_tAtom>
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	template
		<	::ProtoLiteral
				t_tRightLiteral
		>
	friend auto constexpr
	(	operator or
	)	(	Atom<t_tAtom>
		,	t_tRightLiteral
		)
	->	::Or<::Atom<t_tAtom>, t_tRightLiteral>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::True
		,	::Atom<t_tAtom>
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::False
		,	::Atom<t_tAtom>
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	LiteralCount
	)	(	::Atom<t_tAtom>
		)
	->	::Meta::USize
	{	return 1uz;	}

	friend auto constexpr
	(	ClauseCount
	)	(	::Atom<t_tAtom>
		)
	->	::Meta::USize
	{	return 1uz;	}
};

template
	<	::ProtoAtom
			t_tAtom
	>
struct
	Not final
:	::LiteralTag
{
	auto constexpr
	(	operator()
	)	(	auto
				&&
			...	i_rpArgument
		)	const
	->	bool
	{	return
		not
		t_tAtom
		{}(	// do not include std::forward just for this
			static_cast<decltype(i_rpArgument)>
			(	i_rpArgument
			)...
		);
	}

	friend auto constexpr
	(	operator not
	)	(	::Not<t_tAtom>
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Not<t_tAtom>
		,	::True
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Not<t_tAtom>
		,	::False
		)
	->	::False
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Not<t_tAtom>
		,	::Atom<t_tAtom>
		)
	->	::False
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Not<t_tAtom>
		,	::Not<t_tAtom>
		)
	->	::Not<t_tAtom>
	{	return {};	}

	template
		<	::ProtoLiteral
				t_tRightLiteral
		>
	friend auto constexpr
	(	operator and
	)	(	Not<t_tAtom>
		,	t_tRightLiteral
		)
	->	::And<::Not<t_tAtom>, t_tRightLiteral>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::True
		,	::Not<t_tAtom>
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::False
		,	::Not<t_tAtom>
		)
	->	::False
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Atom<t_tAtom>
		,	::Not<t_tAtom>
		)
	->	::False
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Not<t_tAtom>
		,	::True
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Not<t_tAtom>
		,	::False
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Not<t_tAtom>
		,	::Atom<t_tAtom>
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Not<t_tAtom>
		,	::Not<t_tAtom>
		)
	->	::Not<t_tAtom>
	{	return {};	}

	template
		<	::ProtoLiteral
				t_tRightLiteral
		>
	friend auto constexpr
	(	operator or
	)	(	Not<t_tAtom>
		,	t_tRightLiteral
		)
	->	::Or<::Not<t_tAtom>, t_tRightLiteral>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::True
		,	::Not<t_tAtom>
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::False
		,	::Not<t_tAtom>
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Atom<t_tAtom>
		,	::Not<t_tAtom>
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	LiteralCount
	)	(	::Not<t_tAtom>
		)
	->	::Meta::USize
	{	return 1uz;	}

	friend auto constexpr
	(	ClauseCount
	)	(	::Not<t_tAtom>
		)
	->	::Meta::USize
	{	return 1uz;	}
};

template
	<	::Meta::USize
			t_nSubtermCount
	>
struct
	SubtermCountCheck
{
	static_assert
	(	t_nSubtermCount
	<=	16uz
	,	"Maximum amount of subterms per term exceeded."
		" Please adjust Logic::::ProtoClauseConstraint and Logic::ProtoConstraint to reflect"
		" a higher amount of subterms."
	);
};

template
	<	::ProtoClause
			t_tClause
	>
struct
	TermContainerItem
{
	static auto constexpr
	(	Contains
	)	(	t_tClause
		)
	->	bool
	{	return true;	}
};

template
	<	::ProtoClause
		...	t_tpClause
	>
struct
	TermContainer
:	::TermContainerItem
	<	t_tpClause
	>
	...
{
	using TermContainerItem<t_tpClause>::Contains...;

	static auto constexpr
	(	Contains
	)	(	::ProtoClause auto
		)
	->	bool
	{	return false;	}
};


template
	<	::ProtoLiteral
		...	t_tpLiteral
	>
struct
	And final
:	::ClauseTag
,	::SubtermCountCheck<sizeof...(t_tpLiteral)>
,	::Meta::Tuple
	<	t_tpLiteral
		...
	>
{
	using ::Meta::Tuple<t_tpLiteral...>::operator[];

	auto constexpr
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

	friend auto constexpr
	(	operator not
	)	(	::And<t_tpLiteral...>
		)
	->	::Or<decltype(not t_tpLiteral{})...>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::And<t_tpLiteral...>
		,	::True
		)
	->	::And<t_tpLiteral...>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::And<t_tpLiteral...>
		,	::False
		)
	->	::False
	{	return {};	}

	template
		<	::ProtoLiteral
				t_tRightLiteral
		>
	friend auto constexpr
	(	operator and
	)	(	::And<t_tpLiteral...>
				i_vLeft
		,	t_tRightLiteral
				i_vRight
		)
	->	::ProtoClause auto
	{
		using Container = ::TermContainer<t_tpLiteral...>;

		if	constexpr(Container::Contains(i_vRight))
			return i_vLeft;
		else
		if	constexpr(Container::Contains(not i_vRight))
			return ::False{};
		else
			return ::And<t_tpLiteral..., t_tRightLiteral>{};
	}

	friend auto constexpr
	(	operator and
	)	(	::True
		,	::And<t_tpLiteral...>
		)
	->	::And<t_tpLiteral...>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::False
		,	::And<t_tpLiteral...>
		)
	->	::False
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::ProtoTerm auto
				i_vLeft
		,	::And<t_tpLiteral...>
		)
	->	::ProtoTerm auto
	{	return
		(	i_vLeft
		and	...
		and	t_tpLiteral{}
		);
	}

	friend auto constexpr
	(	operator or
	)	(	::And<t_tpLiteral...>
		,	::True
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::And<t_tpLiteral...>
		,	::False
		)
	->	::And<t_tpLiteral...>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::True
		,	::And<t_tpLiteral...>
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::False
		,	::And<t_tpLiteral...>
		)
	->	::And<t_tpLiteral...>
	{	return {};	}

	friend auto constexpr
	(	LiteralCount
	)	(	::And<t_tpLiteral...>
		)
	->	::Meta::USize
	{	return sizeof...(t_tpLiteral);	}

	friend auto constexpr
	(	ClauseCount
	)	(	::And<t_tpLiteral...>
		)
	->	::Meta::USize
	{	return 1uz;	}
};

template
	<	::ProtoClause
		...	t_tpClause
	>
struct
	Or final
:	::TermTag
,	::SubtermCountCheck<sizeof...(t_tpClause)>
,	::Meta::Tuple
	<	t_tpClause
		...
	>
{
	using ::Meta::Tuple<t_tpClause...>::operator[];

	auto constexpr
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

	friend auto constexpr
	(	operator not
	)	(	::Or<t_tpClause...>
		)
	->	::ProtoTerm auto
	{
		if	constexpr
			((	...
			and	::ProtoLiteral
				<	t_tpClause
				>
			))
			return
			::And
			<	decltype
				(	not
					t_tpClause{}
				)
				...
			>{};
		else
			return
			(	...
			and	not
				t_tpClause{}
			);
	}

	friend auto constexpr
	(	operator and
	)	(	::Or<t_tpClause...>
		,	::True
		)
	->	::Or<t_tpClause...>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Or<t_tpClause...>
		,	::False
		)
	->	::False
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::Or<t_tpClause...>
		,	::ProtoTerm auto
				i_vRight
		)
	->	::ProtoTerm auto
	{	return
		(	...
		or	(	t_tpClause{}
			and	i_vRight
			)
		);
	}

	friend auto constexpr
	(	operator and
	)	(	::True
		,	::Or<t_tpClause...>
		)
	->	::Or<t_tpClause...>
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::False
		,	::Or<t_tpClause...>
		)
	->	::False
	{	return {};	}

	friend auto constexpr
	(	operator and
	)	(	::ProtoClause auto
				i_vLeft
		,	::Or<t_tpClause...>
		)
	->	::ProtoTerm auto
	{	return
		(	...
		or	(	i_vLeft
			and	t_tpClause{}
			)
		);
	}

	friend auto constexpr
	(	operator or
	)	(	::Or<t_tpClause...>
		,	::True
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::Or<t_tpClause...>
		,	::False
		)
	->	::Or<t_tpClause...>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::True
		,	::Or<t_tpClause...>
		)
	->	::True
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::False
		,	::Or<t_tpClause...>
		)
	->	::Or<t_tpClause...>
	{	return {};	}

	friend auto constexpr
	(	operator or
	)	(	::ProtoTerm auto
				i_vLeft
		,	::Or<t_tpClause...>
		)
	->	::ProtoTerm auto
	{	return
		(	i_vLeft
		or	...
		or	t_tpClause{}
		);
	}

	template
		<	::ProtoClause
				t_tRightClause
		>
	friend auto constexpr
	(	operator or
	)	(	::Or<t_tpClause...>
				i_vLeft
		,	t_tRightClause
				i_vRight
		)
	->	::ProtoTerm auto
	{
		using Container = ::TermContainer<t_tpClause...>;
		if	constexpr(Container::Contains(i_vRight))
			return i_vLeft;
		else
		if	constexpr((ProtoLiteral<t_tpClause> and ... and ProtoLiteral<t_tRightClause>))
		{
			if	constexpr(Container::Contains(not i_vRight))
				return ::True{};
			else
				return ::Or<t_tpClause..., t_tRightClause>{};
		}
		else
			return
				SimplifyDisjunction
				(	i_vLeft
				,	i_vRight
				)
			;
	}

	friend auto constexpr
	(	LiteralCount
	)	(	::Or<t_tpClause...>
		)
	->	::Meta::USize
	{	return
		(	...
		+	LiteralCount
			(	t_tpClause{}
			)
		);
	}

	friend auto constexpr
	(	ClauseCount
	)	(	::Or<t_tpClause...>
		)
	->	::Meta::USize
	{	return sizeof...(t_tpClause);	}
};

/// ************************************************************************************************
///	Factory functions to deduce the correct term template.
/// ************************************************************************************************
auto constexpr
(	Tautology
)	(	::ProtoTerm auto
		...
	)
->	::True
{	return {};	}

auto constexpr
(	Constradiction
)	(	::ProtoTerm auto
		...
	)
->	::False
{	return {};	}

template
	<	::ProtoLiteral
			t_tLiteral
	>
auto constexpr
(	Conjunction
)	(	t_tLiteral
	)
->	t_tLiteral
{	return {};	}

template
	<	::ProtoLiteral
			t_tFirstLiteral
	,	::ProtoLiteral
			t_tSecondLiteral
	,	::ProtoLiteral
		...	t_tpRemainingLiteral
	>
auto constexpr
(	Conjunction
)	(	t_tFirstLiteral
	,	t_tSecondLiteral
	,	t_tpRemainingLiteral
		...
	)
->	::And
	<	t_tFirstLiteral
	,	t_tSecondLiteral
	,	t_tpRemainingLiteral
		...
	>
{	return {};	}

template
	<	::ProtoClause
			t_tClause
	>
auto constexpr
(	Disjunction
)	(	t_tClause
	)
->	t_tClause
{	return {};	}

template
	<	::ProtoClause
			t_tFirstClause
	,	::ProtoClause
			t_tSecondClause
	,	::ProtoClause
		...	t_tpRemainingClause
	>
auto constexpr
(	Disjunction
)	(	t_tFirstClause
	,	t_tSecondClause
	,	t_tpRemainingClause
		...
	)
->	::Or
	<	t_tFirstClause
	,	t_tSecondClause
	,	t_tpRemainingClause
		...
	>
{	return {};	}

/// ************************************************************************************************
///	Substitute subterms with different subterms.
/// ************************************************************************************************
struct
	SubstitutionBase
{
	auto constexpr
	(	operator()
	)	(	::ProtoLiteral auto
				i_vLiteral
		)	const
	->	::ProtoLiteral auto
	{	return i_vLiteral;	}
};

template
	<	::ProtoTerm
			t_tSubTerm
	,	::ProtoTerm
			t_tSubstitute
	>
struct
	SubstitutionItem
{
	auto constexpr
	(	operator()
	)	(	t_tSubTerm
		)	const
	->	t_tSubstitute
	{	return {};	}
};

template
	<	::ProtoLiteral
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
	<	::ProtoClause
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
	<	::ProtoTerm
		...	t_tpSubTerm
	>
struct
	Substitute
{
	constexpr
	(	Substitute
	)	(	t_tpSubTerm
			...
		)
	{}

	template
		<	::ProtoTerm
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
			<	::ProtoLiteral
				...	t_tpLiteral
			>
		auto constexpr
		(	operator()
		)	(	And<t_tpLiteral...>
			)	const
		->	::ProtoTerm auto
		{	return
			(	...
			and	operator()
				(	t_tpLiteral{}
				)
			);
		}

		template
			<	::ProtoClause
				...	t_tpClause
			>
		auto constexpr
		(	operator()
		)	(	Or<t_tpClause...>
			)	const
		->	::ProtoTerm auto
		{	return
			(	...
			or	operator()
				(	t_tpClause{}
				)
			);
		}
	};

	template
		<	::ProtoTerm
			...	t_tpSubstitute
		>
	auto constexpr
	(	operator()
	)	(	t_tpSubstitute
			...
		)	const
	->	Substitution<t_tpSubstitute...>
	{	return {};	}
};

template
	<	::ProtoTerm
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

auto constexpr
(	SubstituteTrue
)	(	::ProtoTerm auto
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

auto constexpr
(	SubstituteFalse
)	(	::ProtoTerm auto
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

auto constexpr
(	SubstituteNegation
)	(	::ProtoTerm auto
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

auto constexpr
(	AssumeLiteralsTrue
)	(	::ProtoLiteral auto
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
	<	::ProtoLiteral
		...	t_tpLiteral
	>
auto constexpr
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
auto constexpr
(	IsTrue
)	(	True
	)
->	bool
{	return true;	}

auto constexpr
(	IsTrue
)	(	::ProtoTerm auto
	)
->	bool
{	return false;	}

auto constexpr
(	IsFalse
)	(	False
	)
->	bool
{	return true;	}

auto constexpr
(	IsFalse
)	(	::ProtoTerm auto
	)
->	bool
{	return false;	}

auto constexpr
(	Implies
)	(	::ProtoClause auto
			i_vAssumedTrue
	,	::ProtoTerm auto
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
	<	::ProtoClause
		...	t_tpAssumedTrue
	>
auto constexpr
(	Implies
)	(	Or<t_tpAssumedTrue...>
	,	::ProtoTerm auto
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
	<	::ProtoTerm
			t_tTerm
	>
auto constexpr
(	operator ==
)	(	t_tTerm
	,	t_tTerm
	)
->	bool
{	return true;	}

auto constexpr
(	operator ==
)	(	::ProtoTerm auto
			i_vLeftTerm
	,	::ProtoTerm auto
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
	<	::ProtoLiteral
			t_tFilterLiteral
	,	::ProtoLiteral
		...	t_tpClauseLiteral
	>
struct
	LiteralRedundancy
{
	explicit constexpr
	(	LiteralRedundancy
	)	(	t_tFilterLiteral
		,	t_tpClauseLiteral
			...
		)
	{}

	explicit constexpr
	(	LiteralRedundancy
	)	(	t_tFilterLiteral
		,	And<t_tpClauseLiteral...>
		)
	{}

	static ::ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpClauseLiteral{}
			...
		)
	;

	auto constexpr
	(	operator()
	)	(	::ProtoClause auto
			...	i_vpSubTerm
		)	const
	->	::ProtoTerm auto
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
	<	::ProtoLiteral
			t_tFilterLiteral
	,	::ProtoLiteral
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
	<	::ProtoLiteral
			t_tFilterLiteral
	,	::ProtoLiteral
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
	<	::ProtoLiteral
		...	t_tpLiteral
	>
struct
	ClauseRedundancy
{
	explicit constexpr
	(	ClauseRedundancy
	)	(	t_tpLiteral
			...
		)
	{}

	explicit constexpr
	(	ClauseRedundancy
	)	(	And<t_tpLiteral...>
		)
	{}

	static ::ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpLiteral{}
			...
		)
	;

	auto constexpr
	(	operator()
	)	(	::ProtoTerm auto
			...	i_vpSubTerm
		)	const
	->	::ProtoTerm auto
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
	<	::ProtoLiteral
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
	<	::ProtoLiteral
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
	<	::ProtoLiteral
			t_tFilterLiteral
	,	::ProtoLiteral
		...	t_tpClauseLiteral
	>
struct
	LiteralFilter
{
	explicit constexpr
	(	LiteralFilter
	)	(	t_tFilterLiteral
		,	t_tpClauseLiteral
			...
		)
	{}

	explicit constexpr
	(	LiteralFilter
	)	(	t_tFilterLiteral
		,	And<t_tpClauseLiteral...>
		)
	{}

	static ::ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpClauseLiteral{}
			...
		)
	;

	auto constexpr
	(	operator()
	)	(	::ProtoClause auto
			...	i_vpSubTerm
		)	const
	->	::ProtoClause auto
	{
		::ProtoTerm auto constexpr
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
			(	not
				IsTrue
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
			::ProtoTerm auto constexpr
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
	<	::ProtoLiteral
			t_tFilterLiteral
	,	::ProtoLiteral
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
	<	::ProtoLiteral
			t_tFilterLiteral
	,	::ProtoLiteral
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
	<	::ProtoLiteral
		...	t_tpLiteral
	>
struct
	ClauseFilter
{
	explicit constexpr
	(	ClauseFilter
	)	(	t_tpLiteral
			...
		)
	{}

	explicit constexpr
	(	ClauseFilter
	)	(	And<t_tpLiteral...>
		)
	{}

	static ::ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpLiteral{}
			...
		)
	;

	auto constexpr
	(	operator()
	)	(	::ProtoClause auto
			...	i_vpSubTerm
		)	const
	->	::ProtoTerm auto
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
			::ProtoTerm auto constexpr
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
	<	::ProtoLiteral
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
	<	::ProtoLiteral
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
	<	::ProtoClause
		...	t_tpSubTerm
	>
struct
	Simplifier
{
	explicit constexpr
	(	Simplifier
	)	(	t_tpSubTerm
			...
		)
	{}

	explicit constexpr
	(	Simplifier
	)	(	Or<t_tpSubTerm...>
		)
	{}

	static ::ProtoTerm auto constexpr
		ThisTerm
	=	Disjunction
		(	t_tpSubTerm{}
			...
		)
	;

	auto constexpr
	(	operator()
	)	(	::ProtoClause auto
				i_vNewSubTerm
		)	const
	->	::ProtoTerm auto
	{
		::ProtoTerm auto constexpr
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
			::ProtoTerm auto constexpr
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
	<	::ProtoClause
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
	<	::ProtoClause
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
///	Form the disjunction of two terms.
/// ************************************************************************************************
auto constexpr
(	SimplifyDisjunction
)	(	::ProtoTerm auto
			i_vLeft
	,	::ProtoClause auto
			i_vRight
	)
->	::ProtoTerm auto
{	return
	Simplifier
	{	i_vLeft
	}(	i_vRight
	);
}

auto constexpr
(	operator or
)	(	::ProtoTerm auto
			i_vLeft
	,	::ProtoClause auto
			i_vRight
	)
->	::ProtoTerm auto
{	return
	Simplifier
	{	i_vLeft
	}(	i_vRight
	);
}

/// ************************************************************************************************
///	export namespace
///	Performs logical computations and simplifications on terms of predicates using their disjunctive
///	normal form.
/// ************************************************************************************************
export namespace
	Legacy::Meta
{
	///	Wraps around a logical term which will be as simplified as possible.
	//	Wrapping ensures that the invariant of the template can never be
	///	violated from outside the module by means of specialization or
	///	type deduction, which is not possible without access to the template
	///	and type definitions.
	template
		<	::ProtoTerm
				t_tTerm
		>
	struct
		Term
	{
		constexpr
		(	Term
		)	()
		=	default;

		explicit constexpr
		(	Term
		)	(	t_tTerm
			)
		{}

		auto constexpr
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

		///	Checks the two given terms for equivalence.
		template
			<	::ProtoTerm
					t_tRightTerm
			>
		friend auto constexpr
		(	operator ==
		)	(	Term
			,	Term<t_tRightTerm>
			)
		->	bool
		{	return
			(	t_tTerm{}
			==	t_tRightTerm{}
			);
		}

		///	Forms the negation of the given term.
		friend auto constexpr
		(	operator not
		)	(	Term
			)
		{	return
			::Legacy::Meta::Term
			{	not
				t_tTerm
				{}
			};
		}

		///	Forms the Conjunction of the two given terms.
		template
			<	::ProtoTerm
					t_tRightTerm
			>
		friend auto constexpr
		(	operator and
		)	(	Term
			,	Term<t_tRightTerm>
			)
		{	return
			::Legacy::Meta::Term
			{	t_tTerm{}
			and t_tRightTerm{}
			};
		}

		///	Forms the Disjunction of the two given terms.
		template
			<	::ProtoTerm
					t_tRightTerm
			>
		friend auto constexpr
		(	operator or
		)	(	Term
			,	Term<t_tRightTerm>
			)
		{	return
			::Legacy::Meta::Term
			{	t_tTerm{}
			or	t_tRightTerm{}
			};
		}
	};

	///	Deduce type from argument.
	template
		<	::ProtoTerm
				t_tTerm
		>
	(	Term
	)	(	t_tTerm
		)
	->	Term
		<	t_tTerm
		>
	;

	template
		<	::ProtoAtom
				t_tAtom
		>
	auto constexpr
	(	SelectAtom
	)	(	Term<::Atom<t_tAtom>>
		)
	->	t_tAtom
	{	return {};	}

	template
		<	::ProtoAtom
				t_tAtom
		>
	auto constexpr
	(	SelectAtom
	)	(	Term<::Not<t_tAtom>>
		)
	->	Term<::Not<t_tAtom>>
	{	return {};	}

	template
		<	::Meta::SSize
				t_nLiteralIndex
		,	::ProtoClause
				t_tTerm
		>
	auto constexpr
	(	SelectLiteral
	)	(	Term<t_tTerm>
				i_vTerm
		)
	{
		if	constexpr
			(	::ProtoLiteral
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
				[	::Meta::RingIndex
					<	t_nLiteralIndex
					>{}
				]
			};
	}

	template
		<	::Meta::SSize
				t_nClauseIndex
		,	::ProtoTerm
				t_tTerm
		>
	auto constexpr
	(	SelectClause
	)	(	Term<t_tTerm>
				i_vTerm
		)
	{
		if	constexpr
			(	::ProtoClause
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
				[	::Meta::RingIndex
					<	t_nClauseIndex
					>{}
				]
			};
	}

	template
		<	::ProtoTerm
				t_tTerm
		>
	auto constexpr
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
		<	::ProtoAtom
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
	=	::Meta::ProtoTrait
		<	t_tProto
		,	SelectAtom(t_vLiteral)
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
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<6z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<7z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<8z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<9z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<10z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<11z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<12z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<13z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<14z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<15z>(t_vClause)
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
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<6z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<7z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<8z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<9z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<10z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<11z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<12z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<13z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<14z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<15z>(t_vTerm)
		>
	;
}
