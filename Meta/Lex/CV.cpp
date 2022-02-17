export module Meta.Lex.CV;

export import Meta.Type;
export import Meta.Type.CV;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpCV
		>
	struct
		CV final
	{
		constexpr
		(	CV
		)	()
		=	default;

		explicit constexpr
		(	CV
		)	(	CV<t_tEntity>
			,	t_tpCV
				...
			)
		{}
	};

	template
		<	typename
				t_tEntity
		>
	struct
		CV<t_tEntity> final
	{
		//	keep implicit copy and move constructor
	};

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	CV<t_tEntity>
		)
	->	CV<t_tEntity>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	CV<t_tEntity>
		,	Token::Const
		)
	->	CV
		<	t_tEntity
		,	Token::Const
		>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	CV<t_tEntity>
		,	Token::Volatile
		)
	->	CV
		<	t_tEntity
		,	Token::Volatile
		>
	;

	template
		<	typename
				t_tEntity
		>
	(	CV
	)	(	CV<t_tEntity>
		,	Token::Const
		,	Token::Volatile
		)
	->	CV
		<	t_tEntity
		,	Token::Const
		,	Token::Volatile
		>
	;

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tEntity
			>
		)
	->	CV<t_tEntity>
	{	return {};	}

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tEntity const
			>
		)
	->	decltype(auto)
	{	return
		CV
		{	Tokenize(Type<t_tEntity>)
		,	Const
		};
	}

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tEntity volatile
			>
		)
	->	decltype(auto)
	{	return
		CV
		{	Tokenize(Type<t_tEntity>)
		,	Volatile
		};
	}

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tEntity const volatile
			>
		)
	->	decltype(auto)
	{	return
		CV
		{	Tokenize(Type<t_tEntity>)
		,	Const
		,	Volatile
		};
	}
}
