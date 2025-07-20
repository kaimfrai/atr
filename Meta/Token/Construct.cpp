export module Meta.Token.Construct;

import Meta.Token.Type;

import std;

export namespace
	Meta::Token
{
	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpArgument
		>
	requires
		::std::is_constructible_v
		<	t_tEntity
		,	t_tpArgument
			...
		>
	[[nodiscard]]
	auto constexpr inline
	(	Construct
	)	(	TypeToken<t_tEntity>
		,	t_tpArgument&&
			...	i_rpArgument
		)
		noexcept
		(	::std::is_nothrow_constructible_v
			<	t_tEntity
			,	t_tpArgument
				...
			>
		)
	->	t_tEntity
	{	return
		t_tEntity
		{	static_cast<decltype(i_rpArgument)>
			(	i_rpArgument
			)
			...
		};
	}
}
