export module Meta.Token.Specifier;

import Meta.Memory.Constraint;

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

	// cannot have a mutable unbounded array
	template
		<	typename
				t_tEntity
		>
	struct
		Mut
		<	t_tEntity
				[]
		>
	;
}

export namespace
	Meta::Memory
{
	template
		<	typename
				t_tEntity
		>
	Constraint constexpr
		Constraint_Of
		<	::Meta::Specifier::Mut
			<	t_tEntity
			>
		>
	=	Constraint_Of
		<	t_tEntity
		>
	;
}
