export module Meta.Token.Transform.AddEllipsis;

import Meta.Token.Transform.Identity;
import Meta.Token.Type;

export namespace
	Meta::Token::Transform
{
	struct
		AddEllipsis
	:	Identity
	{
		using Identity::operator();

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...)
				>
			)
			noexcept
		->	TypeToken
			<	t_tResult(t_tpParameter..., ...)
			>
		{	return {};	}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) noexcept
				>
			)
			noexcept
		->	TypeToken
			<	t_tResult(t_tpParameter..., ...) noexcept
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Token::Transform::AddEllipsis const extern
		AddEllipsis
	;
}
