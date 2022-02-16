export module Meta.Type.Entity;

export import Meta.Type;

export namespace
	Meta::Token
{
	struct
		CV
	{
		bool
			Const : 1
		=	false
		;
		bool
			Volatile : 1
		=	false
		;
	};

	template
		<	typename
				t_tEntity
		>
	struct
		Entity
	:	CV
	{};

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tEntity
			>
		)
	->	Entity<t_tEntity>
	{	return{};	}

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tEntity const
			>
		)
	->	Entity<t_tEntity>
	{	return { .Const = true };	}

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tEntity volatile
			>
		)
	->	Entity<t_tEntity>
	{	return { .Volatile = true };	}

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tEntity const volatile
			>
		)
	->	Entity<t_tEntity>
	{	return { .Const = true, .Volatile = true };	}
}
