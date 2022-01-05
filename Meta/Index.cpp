export module Meta.Index;

export import Std;

export import Meta.Integer;
export import Meta.Literals;

namespace
	Meta
{
	export template
		<	USize
			...	t_npIndex
		>
	struct
		IndexToken
	{
		template
			<	USize
					t_nAssign
			>
		auto constexpr
		(	operator =
		)	(	IndexToken<t_nAssign>
			)	const
		->	IndexToken
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
		)	(	IndexToken<t_nAdd>
			)	const
		->	IndexToken
			<	(	t_npIndex
				+	t_nAdd
				)
				...
			>
		{	return {};	}

		auto constexpr
		(	operator ++
		)	()	const
		->	IndexToken
			<	(	t_npIndex
				+	1uz
				)
				...
			>
		{	return	{};	}
	};

	export template
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

	namespace
		Literals
	{
		export template
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

	export template
		<	USize
				t_nLength
		>
	auto constexpr inline
	(	Sequence
	)	(	IndexToken
			<	t_nLength
			>
			=	{}
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
