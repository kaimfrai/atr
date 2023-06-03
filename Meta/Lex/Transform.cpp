export module Meta.Lex.Transform;

import Meta.Token.Type;

export namespace
	Meta::Lex
{
	template
		<	typename
			...	t_tpTransform
		>
	struct
		Transform final
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vToken
			)
			noexcept
		->	decltype(auto)
		{	return
			(	i_vToken
			+	...
			+	t_tpTransform{}
			);
		}
	};
}

