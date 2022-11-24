export module Meta.ID:Literals;

export import :Alias;
export import :StringLiteral;

export namespace
	Meta::inline Literals
{
	template
		<	StringLiteral
				t_vString
		>
	[[nodiscard]]
	auto constexpr
	(	operator
		""_ID
	)	()
	->	ID_T
		<	t_vString
		>
	{	return{};	}

	template
		<	StringLiteral
				t_vString
		>
	[[nodiscard]]
	auto constexpr
	(	operator
		""_SV
	)	()
	->	StringView
	{	return ID_T<t_vString>::StringView;	}
}

