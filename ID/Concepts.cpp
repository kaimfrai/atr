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
		,	template
				<	typename
						t_tNestedChar
				,	t_tNestedChar
					...
				>
			typename
				t_t1Sequence
		>
	concept
		Same
	=	Std::SameAs
		<	t_tID
		,	MakeT
			<	t_t1Sequence
			,	t_vStart
			>
		>
	;

	/// checks if an identifier starts with a given string and is an instance of a given template
	template
		<	typename
				t_tID
		,	StringLiteral
				t_vStart
		,	template
				<	typename
						t_tNestedChar
				,	t_tNestedChar
					...
				>
			typename
				t_t1Sequence
		>
	concept
		Prefix
	=	PackTemplate::SequenceInstanceOf
		<	t_tID
		,	t_t1Sequence
		>
	and	t_tID
		::	template
			StartsWith
			<	t_vStart
			>()
	;

	/// checks if an identifier end with a given string and is an instance of a given template
	template
		<	typename
				t_tID
		,	StringLiteral
				t_vStart
		,	template
				<	typename
						t_tNestedChar
				,	t_tNestedChar
					...
				>
			typename
				t_t1Sequence
		>
	concept
		Suffix
	=	PackTemplate::SequenceInstanceOf
		<	t_tID
		,	t_t1Sequence
		>
	and	t_tID
		::	template
			EndsWith
			<	t_vStart
			>()
	;
}
