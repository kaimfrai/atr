export module Meta.Token:Index;

export import Meta.Arithmetic;

export namespace
	Meta::Token
{
	template
		<	auto
			...	t_npIndex
		>
	struct
		Index
	{
		template
			<	auto
					t_nAssign
			>
		auto constexpr
		(	operator =
		)	(	Index<t_nAssign>
			)	const
		->	Index
			<	(	(void)t_npIndex
				,	t_nAssign
				)
				...
			>
		{	return {};	}

		template
			<	auto
					t_nAdd
			>
		auto constexpr
		(	operator +=
		)	(	Index<t_nAdd>
			)	const
		->	Index
			<	(	t_npIndex
				+	t_nAdd
				)
				...
			>
		{	return {};	}

		template
			<	auto
				...	t_npSuffix
			>
		friend auto constexpr
		(	operator |
		)	(	Index
			,	Index<t_npSuffix...>
			)
		->	Index
			<	t_npIndex
				...
			,	t_npSuffix
				...
			>
		{	return {};	}

		auto constexpr
		(	operator ++
		)	()	const
		->	Index
			<	(	t_npIndex
				+	1uz
				)
				...
			>
		{	return	{};	}

		template
			<	typename
					t_tCast
			>
		static auto constexpr
		(	CastAll
		)	()
		{	return
			Index
			<	static_cast<t_tCast>
				(	t_npIndex
				)
				...
			>{};
		}
	};
}

export namespace
	Meta
{
	template
		<	auto
			...	t_npIndex
		>
	using
		IndexToken
	=	Token::Index
		<	t_npIndex
			...
		>
	;

	template
		<	auto
			...	t_npIndex
		>
	auto constexpr inline
		Index
	=	IndexToken
		<	t_npIndex
			...
		>{}
	;
}

export namespace
	Meta::inline Literals
{
	template
		<	char
			...	t_nNumeric
		>
	auto constexpr
	(	operator""_idx
	)	()
	->	IndexToken
		<	EvaluateNumericLiteral
			<	t_nNumeric
				...
			>()
		>
	{	return {};	}
}
