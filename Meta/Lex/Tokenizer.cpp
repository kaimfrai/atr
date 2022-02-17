export module Meta.Lex;

export import Meta.Type;
export import Meta.Lex.Array;
export import Meta.Lex.CV;
export import Meta.Lex.Function;
export import Meta.Lex.Member;
export import Meta.Lex.Pointer;
export import Meta.Lex.Reference;

export namespace
	Meta::Lex
{
	struct
		Tokenizer final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vType
			)	const
		->	decltype(auto)
		{	return
			Tokenize
			(	i_vType
			);
		}
	};
}

export namespace
	Meta
{
	Lex::Tokenizer constexpr inline
		Tokenize
	{};

	template
		<	typename
				t_tEntity
		>
	using
		TokenizeEntity
	=	decltype
		(	Tokenize
			(	Type<t_tEntity>
			)
		)
	;
}
