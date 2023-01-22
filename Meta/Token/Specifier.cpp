export module Meta.Token.Specifier;

export namespace
	Meta::Specifier
{
	template
		<	typename
				t_tEntity
		>
	struct
		Mut final
	{
		[[no_unique_address]]
		mutable t_tEntity Entity;
	};

	// cannot nest mutable
	template
		<	typename
				t_tEntity
		>
	struct
		Mut
		<	Mut
			<	t_tEntity
			>
		>
	;

	// cannot have a mutable lvalue reference
	template
		<	typename
				t_tEntity
		>
	struct
		Mut
		<	t_tEntity&
		>
	;

	// cannot have a mutable rvalue reference
	template
		<	typename
				t_tEntity
		>
	struct
		Mut
		<	t_tEntity&&
		>
	;

	// cannot have a mutable const
	template
		<	typename
				t_tEntity
		>
	struct
		Mut
		<	t_tEntity const
		>
	;
}
