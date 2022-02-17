export module Meta.Index;

export import Std;
export import Meta.Integer;
export import Meta.Literals;

export namespace
	Meta::Token
{
	template
		<	USize
			...	t_npIndex
		>
	struct
		Index
	{
		template
			<	USize
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
			<	USize
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
	};
}

export namespace
	Meta
{
	template
		<	USize
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
		<	USize
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

namespace
	Meta
{
	template
		<	USize
				t_nLength
		>
	auto constexpr inline
	(	MakeSequence
	)	(	IndexToken<t_nLength>
		)
	{	return
		[]	<	USize
				...	t_npIndex
			>(	::std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
			IndexToken
			<	t_npIndex
				...
			>{};
		}(	::std::make_index_sequence
			<	t_nLength
			>{}
		);
	}
}

export namespace
	Meta
{
	template
		<	USize
				t_nSize
		>
	auto constexpr inline
		Sequence
	=	MakeSequence
		(	Index<t_nSize>
		)
	;

	template
		<	USize
				t_nSize
		>
	auto constexpr inline
		ZeroSequence
	=	(	Sequence<t_nSize>
		=	Index<0uz>
		)
	;
}

export namespace
	Meta::Literals
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
