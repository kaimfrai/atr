export module Meta.Token.Transform.AddNoexcept;

import Meta.Token.Transform.Identity;
import Meta.Token.Type;

export namespace
	Meta::Token::Transform
{
	struct
		AddNoexcept
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
		auto static constexpr inline
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...)
				>
			)
			noexcept
		->	TypeToken
			<	t_tResult(t_tpParameter...) noexcept
			>
		{	return {};	}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...)
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
	Token::Transform::AddNoexcept const extern
		AddNoexcept
	;
}
