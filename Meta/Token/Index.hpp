export module Meta.Token:Index;

export import Meta.Arithmetic;

export import Std;

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
		constexpr
		(	operator auto
		)	()	const
			requires
				(	sizeof...(t_npIndex)
				==	1uz
				)
		{	return (t_npIndex + ... + 0uz);}

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

		static auto constexpr
		(	TransformReduce
		)	(	auto
				&&	i_fTransform
			,	auto
				&&	i_fReduce
			)
			requires
				(	...
				and	std::invocable
					<	decltype(i_fTransform)
					,	Index<t_npIndex>
					>
				)
			and	std::invocable
				<	decltype(i_fReduce)
				,	std::invoke_result_t
					<	decltype(i_fTransform)
					,	Index<t_npIndex>
					>
					...
				>
		{	return
			std::forward<decltype(i_fReduce)>
			(	i_fReduce
			)(	std::forward<decltype(i_fTransform)>
				(	i_fTransform
				)(	Index<t_npIndex>
					{}
				)
				...
			);
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
