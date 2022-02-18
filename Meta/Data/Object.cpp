export module Meta.Data.Object;

export import Meta.Lex;

export namespace
	Meta::Data
{
	template
		<	typename
				t_tUntokenized
		>
	struct
		Object
	:	Object
		<	Meta::TokenizeEntity<t_tUntokenized>
		>
	{};

	template
		<	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::MatchCV
			<	void
			,	t_tpQualifier
				...
			>
		>
	{};

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::Func
			<	t_tSignature
			,	t_tpQualifier
				...
			>
		>
	{};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::CV
			<	t_tData
			,	t_tpQualifier
				...
			>
		>
	{
		[[no_unique_address]]
		typename
			Lex::CV
			<	t_tData
			,	t_tpQualifier
				...
			>
		::	Entity
			Data
		;
	};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::CV
			<	t_tData
			,	Token::Const
			,	t_tpQualifier
				...
			>
		>
	{
		[[no_unique_address]]
		typename
			Lex::CV
			<	t_tData
			,	//	remove const
				t_tpQualifier
				...
			>
		::	Entity
			Data
		;

		auto constexpr
		(	operator =
		)	(	Object const&
			)	&
		=	delete;

		auto constexpr
		(	operator =
		)	(	Object&&
			)	&
		=	delete;
	};

	template
		<	typename
				t_tData
		,	typename
				t_tCategory
		>
	struct
		Object
		<	Lex::Ref
			<	t_tData
			,	t_tCategory
			>
		>
	{
		typename t_tData::Entity
		*	Data
		;
	};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		,	typename
				t_tExtent
		>
	struct
		Object
		<	Lex::Array
			<	Lex::CV<t_tData, t_tpQualifier...>
			,	t_tExtent
			>
		>
	{
		typename Lex::Array
			<	Lex::CV<t_tData, t_tpQualifier...>
			,	t_tExtent
			>
		::	Entity
			Data
		;
	};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::Array
			<	Lex::CV<t_tData, t_tpQualifier...>
			,	Token::Extent<0uz>
			>
		>
	{};
}
