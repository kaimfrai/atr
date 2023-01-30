export module Meta.Token.Type.Cast;

import Meta.Token.Type;

export namespace
	Meta::Token
{
	template
		<	typename
				t_tTarget
		>
	[[nodiscard]]
	auto constexpr
	(	Cast
	)	(	TypeToken<t_tTarget>
		,	auto
			&&	i_rSource
		)
		noexcept
	->	t_tTarget
	{	return
		static_cast<t_tTarget>
		(	static_cast<decltype(i_rSource)>
			(	i_rSource
			)
		);
	}
}
