export module Meta.Token.Function;

///	tokens also required by functions
export import Meta.Token.CV;
export import Meta.Token.Reference;

export namespace
	Meta::Token
{
	struct
		Noexcept
	{};

	struct
		Ellipsis
	{};
}

export namespace
	Meta
{
	Token::Noexcept constexpr inline
		Noexcept
	{};

	Token::Ellipsis constexpr inline
		Ellipsis
	{};
}
