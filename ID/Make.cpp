export module ID.Make;

export import ID.StringLiteral;
export import Std;

export import PackTemplate.Instance;
export import Pack.Instance;

export import Stateless.Tuple;

export namespace
	ID
{
	/// dispatches a string literal into its characters
	///	creates an instance of the given identifer template with all dispatched characters inserted
	template
		<	template
				<	char
					...
				>
			typename
				t_t1Destination
		,	StringLiteral
				t_vStringLiteral
		>
	Pack::ValueInstance auto constexpr
		Make
		()
	{
		return
		[]	<	Meta::USize
				...	t_npIndex
			>(	std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
				t_t1Destination
				<	t_vStringLiteral
					[	t_npIndex
					]
					...
				>{}
			;
		}(	std::make_index_sequence
			<	t_vStringLiteral.size()
			>{}
		);
	}

	/// creates an identifier type
	template
		<	template
				<	char
					...
				>
			typename
				t_t1Destination
		,	StringLiteral
				t_vStringLiteral
		>
	using
		MakeT
	=	decltype(
			Make
			<	t_t1Destination
			,	t_vStringLiteral
			>()
		)
	;

	/// create an identifier value
	template
		<	template
				<	char
					...
				>
			typename
				t_t1Destination
		,	StringLiteral
				t_vStringLiteral
		>
	Pack::ValueInstance auto constexpr
		MakeV
	=	Make
		<	t_t1Destination
		,	t_vStringLiteral
		>()
	;
}
