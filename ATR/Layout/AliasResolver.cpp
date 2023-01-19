export module ATR.Layout.AliasResolver;

import ATR.Layout.Alias;

import Meta.ID.Concept;

export template
	<	typename
		...	t_tpAlias
	>
struct
	AliasResolver
:	t_tpAlias
	...
{
	template
		<	typename
				t_tName
		>
	auto constexpr
	(	MatchAlias // NOLINT(cert-dcl50-cpp)
	)	(	t_tName
		,	...
		)	const
	->	t_tName
	{	return t_tName{};	}

	template
		<	::Meta::ProtoID
				t_tName
		,	typename
				t_tTarget
		>
	auto constexpr
	(	MatchAlias
	)	(	t_tName
		,	::Alias<t_tTarget, t_tName> const*
		)	const
	->	decltype(auto)
	{	return
		operator()
		(	t_tTarget{}
		);
	}

	template
		<	typename
				t_tName
		>
	auto constexpr
	(	operator()
	)	(	t_tName
				i_vName
		)	const
	->	decltype(auto)
	{	return MatchAlias(i_vName, this);	}
};

export template
	<	typename
		...	t_tpAlias
	>
AliasResolver<t_tpAlias...> constexpr inline
	ResolveAlias
{};
