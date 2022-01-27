export module ID.Concepts;

export import ID.Make;
export import ID.StringLiteral;

export import PackTemplate.Instance;

export namespace
	ID
{
	/// checks if an identifier starts with a given string and is an instance of a given template
	template
		<	typename
				t_tID
		,	StringLiteral
				t_vStart
		>
	concept
		Same
	=	Std::SameAs
		<	t_tID
		,	MakeT
			<	t_vStart
			>
		>
	;

	/// checks if an identifier starts with a given string and is an instance of a given template
	template
		<	typename
				t_tID
		,	StringLiteral
				t_vStart
		>
	concept
		Prefix
	=	Stateless::Type<t_tID>
	and	starts_with(t_tID{}, t_vStart)
	;

	/// checks if an identifier end with a given string and is an instance of a given template
	template
		<	typename
				t_tID
		,	StringLiteral
				t_vEnd
		>
	concept
		Suffix
	=	Stateless::Type<t_tID>
	and	ends_with(t_tID{}, t_vEnd)
	;
}
