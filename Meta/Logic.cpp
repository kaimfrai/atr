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
	explicit consteval
	(	operator bool
	)	()	const
	{	return t_bPolarity;	}

	auto consteval
	(	operator()
	)	(	auto
				&&
			...
		)	const
	->	bool
	{	return t_bPolarity;	}

	friend auto consteval
	(	operator not
	)	(	::Constant<t_bPolarity>
		)
	->	::Constant<not t_bPolarity>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::Constant<t_bPolarity>
		,	::Constant<t_bPolarity>
		)
	->	::Constant<t_bPolarity>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::Constant<t_bPolarity>
		,	::Constant<not t_bPolarity>
		)
	->	::Constant<false>
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::Constant<t_bPolarity>
		,	::Constant<t_bPolarity>
		)
	->	::Constant<t_bPolarity>
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::Constant<t_bPolarity>
		,	::Constant<not t_bPolarity>
		)
	->	::Constant<true>
	{	return {};	}

	friend auto consteval
	(	LiteralCount
	)	(	::Constant<t_bPolarity>
		)
	->	::Meta::USize
	{	return 0uz;	}

	friend auto consteval
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
	auto consteval
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

	friend auto consteval
	(	operator not
	)	(	::Atom<t_tAtom>
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::Atom<t_tAtom>
		,	::True
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::Atom<t_tAtom>
		,	::False
		)
	->	::False
	{	return {};	}

	friend auto consteval
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
	friend auto consteval
	(	operator and
	)	(	::Atom<t_tAtom>
		,	t_tRightLiteral
		)
	->	::And<::Atom<t_tAtom>, t_tRightLiteral>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::True
		,	::Atom<t_tAtom>
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::False
		,	::Atom<t_tAtom>
		)
	->	::False
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::Atom<t_tAtom>
		,	::True
		)
	->	::True
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::Atom<t_tAtom>
		,	::False
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto consteval
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
	friend auto consteval
	(	operator or
	)	(	Atom<t_tAtom>
		,	t_tRightLiteral
		)
	->	::Or<::Atom<t_tAtom>, t_tRightLiteral>
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::True
		,	::Atom<t_tAtom>
		)
	->	::True
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::False
		,	::Atom<t_tAtom>
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto consteval
	(	LiteralCount
	)	(	::Atom<t_tAtom>
		)
	->	::Meta::USize
	{	return 1uz;	}

	friend auto consteval
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
	auto consteval
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

	friend auto consteval
	(	operator not
	)	(	::Not<t_tAtom>
		)
	->	::Atom<t_tAtom>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::Not<t_tAtom>
		,	::True
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::Not<t_tAtom>
		,	::False
		)
	->	::False
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::Not<t_tAtom>
		,	::Atom<t_tAtom>
		)
	->	::False
	{	return {};	}

	friend auto consteval
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
	friend auto consteval
	(	operator and
	)	(	Not<t_tAtom>
		,	t_tRightLiteral
		)
	->	::And<::Not<t_tAtom>, t_tRightLiteral>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::True
		,	::Not<t_tAtom>
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::False
		,	::Not<t_tAtom>
		)
	->	::False
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::Atom<t_tAtom>
		,	::Not<t_tAtom>
		)
	->	::False
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::Not<t_tAtom>
		,	::True
		)
	->	::True
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::Not<t_tAtom>
		,	::False
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::Not<t_tAtom>
		,	::Atom<t_tAtom>
		)
	->	::True
	{	return {};	}

	friend auto consteval
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
	friend auto consteval
	(	operator or
	)	(	Not<t_tAtom>
		,	t_tRightLiteral
		)
	->	::Or<::Not<t_tAtom>, t_tRightLiteral>
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::True
		,	::Not<t_tAtom>
		)
	->	::True
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::False
		,	::Not<t_tAtom>
		)
	->	::Not<t_tAtom>
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::Atom<t_tAtom>
		,	::Not<t_tAtom>
		)
	->	::True
	{	return {};	}

	friend auto consteval
	(	LiteralCount
	)	(	::Not<t_tAtom>
		)
	->	::Meta::USize
	{	return 1uz;	}

	friend auto consteval
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
	static auto consteval
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

	static auto consteval
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

	friend auto consteval
	(	operator not
	)	(	::And<t_tpLiteral...>
		)
	->	::Or<decltype(not t_tpLiteral{})...>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::And<t_tpLiteral...>
		,	::True
		)
	->	::And<t_tpLiteral...>
	{	return {};	}

	friend auto consteval
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
	friend auto consteval
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

	friend auto consteval
	(	operator and
	)	(	::True
		,	::And<t_tpLiteral...>
		)
	->	::And<t_tpLiteral...>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::False
		,	::And<t_tpLiteral...>
		)
	->	::False
	{	return {};	}

	friend auto consteval
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

	friend auto consteval
	(	operator or
	)	(	::And<t_tpLiteral...>
		,	::True
		)
	->	::True
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::And<t_tpLiteral...>
		,	::False
		)
	->	::And<t_tpLiteral...>
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::True
		,	::And<t_tpLiteral...>
		)
	->	::True
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::False
		,	::And<t_tpLiteral...>
		)
	->	::And<t_tpLiteral...>
	{	return {};	}

	friend auto consteval
	(	LiteralCount
	)	(	::And<t_tpLiteral...>
		)
	->	::Meta::USize
	{	return sizeof...(t_tpLiteral);	}

	friend auto consteval
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

	friend auto consteval
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

	friend auto consteval
	(	operator and
	)	(	::Or<t_tpClause...>
		,	::True
		)
	->	::Or<t_tpClause...>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::Or<t_tpClause...>
		,	::False
		)
	->	::False
	{	return {};	}

	friend auto consteval
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

	friend auto consteval
	(	operator and
	)	(	::True
		,	::Or<t_tpClause...>
		)
	->	::Or<t_tpClause...>
	{	return {};	}

	friend auto consteval
	(	operator and
	)	(	::False
		,	::Or<t_tpClause...>
		)
	->	::False
	{	return {};	}

	friend auto consteval
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

	friend auto consteval
	(	operator or
	)	(	::Or<t_tpClause...>
		,	::True
		)
	->	::True
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::Or<t_tpClause...>
		,	::False
		)
	->	::Or<t_tpClause...>
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::True
		,	::Or<t_tpClause...>
		)
	->	::True
	{	return {};	}

	friend auto consteval
	(	operator or
	)	(	::False
		,	::Or<t_tpClause...>
		)
	->	::Or<t_tpClause...>
	{	return {};	}

	friend auto consteval
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
	friend auto consteval
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

	friend auto consteval
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

	friend auto consteval
	(	ClauseCount
	)	(	::Or<t_tpClause...>
		)
	->	::Meta::USize
	{	return sizeof...(t_tpClause);	}
};

/// ************************************************************************************************
///	Factory functions to deduce the correct term template.
/// ************************************************************************************************
auto consteval
(	Tautology
)	(	::ProtoTerm auto
		...
	)
->	::True
{	return {};	}

auto consteval
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
auto consteval
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
auto consteval
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
auto consteval
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
auto consteval
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
	auto consteval
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
	auto consteval
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
	consteval
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
		auto consteval
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
		auto consteval
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
	auto consteval
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

auto consteval
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

auto consteval
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

auto consteval
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

auto consteval
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
)	(	::ProtoTerm auto
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
)	(	::ProtoTerm auto
	)
->	bool
{	return false;	}

auto consteval
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
auto consteval
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
auto consteval
(	operator ==
)	(	t_tTerm
	,	t_tTerm
	)
->	bool
{	return true;	}

auto consteval
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

	static ::ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpClauseLiteral{}
			...
		)
	;

	auto consteval
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

	static ::ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpLiteral{}
			...
		)
	;

	auto consteval
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

	static ::ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpClauseLiteral{}
			...
		)
	;

	auto consteval
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

	static ::ProtoClause auto constexpr
		ThisClause
	=	Conjunction
		(	t_tpLiteral{}
			...
		)
	;

	auto consteval
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

	static ::ProtoTerm auto constexpr
		ThisTerm
	=	Disjunction
		(	t_tpSubTerm{}
			...
		)
	;

	auto consteval
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
auto consteval
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

auto consteval
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
	Meta
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
		consteval
		(	Term
		)	()
		=	default;

		explicit consteval
		(	Term
		)	(	t_tTerm
			)
		{}

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

		///	Checks the two given terms for equivalence.
		template
			<	::ProtoTerm
					t_tRightTerm
			>
		friend auto consteval
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
		friend auto consteval
		(	operator not
		)	(	Term
			)
		{	return
			::Meta::Term
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
		friend auto consteval
		(	operator and
		)	(	Term
			,	Term<t_tRightTerm>
			)
		{	return
			::Meta::Term
			{	t_tTerm{}
			and t_tRightTerm{}
			};
		}

		///	Forms the Disjunction of the two given terms.
		template
			<	::ProtoTerm
					t_tRightTerm
			>
		friend auto consteval
		(	operator or
		)	(	Term
			,	Term<t_tRightTerm>
			)
		{	return
			::Meta::Term
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
	auto consteval
	(	SelectAtom
	)	(	Term<::Atom<t_tAtom>>
		)
	->	t_tAtom
	{	return {};	}

	template
		<	::ProtoAtom
				t_tAtom
		>
	auto consteval
	(	SelectAtom
	)	(	Term<::Not<t_tAtom>>
		)
	->	Term<::Not<t_tAtom>>
	{	return {};	}

	template
		<	SSize
				t_nLiteralIndex
		,	::ProtoClause
				t_tTerm
		>
	auto consteval
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
				[	RingIndex
					<	t_nLiteralIndex
					>{}
				]
			};
	}

	template
		<	SSize
				t_nClauseIndex
		,	::ProtoTerm
				t_tTerm
		>
	auto consteval
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
				[	RingIndex
					<	t_nClauseIndex
					>{}
				]
			};
	}

	template
		<	::ProtoTerm
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
	=	ProtoTrait
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

// module :private;

/// ****************************************************************************
///	Tests for Concepts
/// ****************************************************************************

// struct P {};
// struct Q {};
// struct R {};
// struct S {};
//
// static_assert(
// 	::ProtoAtom<		P	>);
// static_assert(not
// 	::ProtoTerm<		P	>);
// static_assert(not
// 	::ProtoClause<	P	>);
// static_assert(not
// 	::ProtoLiteral<	P	>);
// static_assert(not
// 	::ProtoConstant<	P	>);

// static_assert(not
// 	::ProtoAtom<		True	>);
// static_assert(
// 	::ProtoTerm<		True	>);
// static_assert(
// 	::ProtoClause<	True	>);
// static_assert(
// 	::ProtoLiteral<	True	>);
// static_assert(
// 	::ProtoConstant<	True	>);
//
// static_assert(not
// 	::ProtoAtom<		False	>);
// static_assert(
// 	::ProtoTerm<		False	>);
// static_assert(
// 	::ProtoClause<	False	>);
// static_assert(
// 	::ProtoLiteral<	False	>);
// static_assert(
// 	::ProtoConstant<	False	>);
//
// static_assert(
// 	!::ProtoAtom<		Atom<P>	>);
// static_assert(
// 	::ProtoTerm<		Atom<P>	>);
// static_assert(
// 	::ProtoClause<	Atom<P>	>);
// static_assert(
// 	::ProtoLiteral<	Atom<P>	>);
// static_assert(not
// 	::ProtoConstant<	Atom<P>	>);
//
// static_assert(not
// 	::ProtoAtom<		Not<P>	>);
// static_assert(
// 	::ProtoTerm<		Not<P>	>);
// static_assert(
// 	::ProtoClause<	Not<P>	>);
// static_assert(
// 	::ProtoLiteral<	Not<P>	>);
// static_assert(not
// 	::ProtoConstant<	Not<P>	>);
//
// static_assert(not
// 	::ProtoAtom<		And<Atom<P>, Atom<Q>>	>);
// static_assert(
// 	::ProtoTerm<		And<Atom<P>, Atom<Q>>	>);
// static_assert(
// 	::ProtoClause<	And<Atom<P>, Atom<Q>>	>);
// static_assert(not
// 	::ProtoLiteral<	And<Atom<P>, Atom<Q>>	>);
// static_assert(not
// 	::ProtoConstant<	And<Atom<P>, Atom<Q>>	>);
//
// static_assert(not
// 	::ProtoAtom<		Or<Atom<P>, Atom<Q>>	>);
// static_assert(
// 	::ProtoTerm<		Or<Atom<P>, Atom<Q>>	>);
// static_assert(not
// 	::ProtoClause<	Or<Atom<P>, Atom<Q>>	>);
// static_assert(not
// 	::ProtoLiteral<	Or<Atom<P>, Atom<Q>>	>);
// static_assert(not
// 	::ProtoConstant<	Or<Atom<P>, Atom<Q>>	>);
//
// static_assert(not
// 	::ProtoAtom<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
// static_assert(
// 	::ProtoTerm<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
// static_assert(not
// 	::ProtoClause<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
// static_assert(not
// 	::ProtoLiteral<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
// static_assert(not
// 	::ProtoConstant<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
//
// static_assert(not
// 	::ProtoAtom<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
// static_assert(
// 	::ProtoTerm<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
// static_assert(not
// 	::ProtoClause<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
// static_assert(not
// 	::ProtoLiteral<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
// static_assert(not
// 	::ProtoConstant<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
