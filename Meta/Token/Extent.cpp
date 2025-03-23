export module Meta.Token.Extent;

import Meta.Arithmetic.Literals;
import Meta.Token.Specifier;
import Meta.Token.Type;

import Meta.Size;

using ::Meta::USize;
using ::Meta::TypeToken;
using ::Meta::Specifier::Mut;

export namespace Meta::Token
{
	template
		<	USize
				t_vExtent
		>
	struct
		Extent
	:	TypeToken<Extent<t_vExtent>>
	{
		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	TypeToken<t_tElement>
			,	Extent
			)
			noexcept
		->	TypeToken<t_tElement[t_vExtent]>
		{	return {};	}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	TypeToken<Mut<t_tElement>>
			,	Extent
			)
			noexcept
		->	TypeToken<Mut<t_tElement[t_vExtent]>>
		{	return {};	}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	TypeToken<t_tElement[t_vExtent]>
			,	Extent
			)
			noexcept
		->	TypeToken<t_tElement>
		{	return {};	}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	TypeToken<Mut<t_tElement[t_vExtent]>>
			,	Extent
			)
			noexcept
		->	TypeToken<Mut<t_tElement>>
		{	return {};	}
	};

	template
		<>
	struct
		Extent<0uz>
	:	TypeToken<Extent<0uz>>
	{
		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	TypeToken<t_tElement>
			,	Extent
			)
			noexcept
		->	TypeToken<t_tElement[]>
		{	return {};	}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	TypeToken<t_tElement[]>
			,	Extent
			)
			noexcept
		->	TypeToken<t_tElement>
		{	return {};	}
	};
}

export namespace
	Meta
{
	template
		<	USize
				t_vExtent
		>
	Token::Extent<t_vExtent> constexpr inline
		Extent
	{};
}

export namespace
	Meta::inline Literals
{
	template
		<	char
			...	t_vpNumeric
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator""_ext
	)	()
		noexcept
	->	Token::Extent
		<	Arithmetic::EvaluateNumericLiteral
			<	t_vpNumeric
				...
			>()
		>
	{	return {};	}
}
