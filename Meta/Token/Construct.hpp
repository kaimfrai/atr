export module Meta.Token:Construct;

export import :Type;

import <type_traits>;

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
	auto constexpr
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
