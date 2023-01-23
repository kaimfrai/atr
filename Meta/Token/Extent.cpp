export module Meta.Token.Extent;

import Meta.Token.Specifier;
import Meta.Token.Type;

import Meta.Size;

export namespace
	Meta::Token
{
	template
		<	USize
				t_nExtent
		>
	struct
		Extent
	:	TypeToken<Extent<t_nExtent>>
	{
		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tElement>
			,	Extent
			)
			noexcept
		->	TypeToken<t_tElement[t_nExtent]>
		{	return {};	}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<Specifier::Mut<t_tElement>>
			,	Extent
			)
			noexcept
		->	TypeToken<Specifier::Mut<t_tElement[t_nExtent]>>
		{	return {};	}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tElement[t_nExtent]>
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
		friend auto constexpr
		(	operator -
		)	(	TypeToken<Specifier::Mut<t_tElement[t_nExtent]>>
			,	Extent
			)
			noexcept
		->	TypeToken<Specifier::Mut<t_tElement>>
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
		friend auto constexpr
		(	operator +
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
		friend auto constexpr
		(	operator -
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
				t_nExtent
		>
	Token::Extent<t_nExtent> constexpr inline
		Extent
	{};
}
