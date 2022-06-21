export module ATR:Layout.AliasResolver;

import :ID;
import :Layout.Alias;


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
	(	MatchAlias
	)	(	t_tName
		,	...
		)	const
	->	t_tName
	{	return t_tName{};	}

	template
		<	char const
			&
			...	t_rpName
		,	typename
				t_tTarget
		>
	auto constexpr
	(	MatchAlias
	)	(	ID<t_rpName...>
		,	::Alias<t_tTarget, t_rpName...> const*
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
