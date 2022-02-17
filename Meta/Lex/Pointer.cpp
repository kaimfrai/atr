export module Meta.Lex.Pointer;

export import Meta.Type;
export import Meta.Lex.CV;
export import Meta.Lex.Array;
export import Meta.Lex.Function;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tEntity
		>
	struct
		Ptr final
	{
		constexpr
		(	Ptr
		)	()
		=	default;

		explicit constexpr
		(	Ptr
		)	(	t_tEntity
			)
		{}
	};

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	(	Ptr
	)	(	CV<t_tEntity, t_tpQualifier...>
		)
	->	Ptr
		<	CV<t_tEntity, t_tpQualifier...>
		>
	;

	template
		<	typename
				t_tEntity
		,	typename
				t_tExtent
		>
	(	Ptr
	)	(	Array<t_tEntity, t_tExtent>
		)
	->	Ptr
		<	Array<t_tEntity, t_tExtent>
		>
	;

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	(	Ptr
	)	(	Func<t_tSignature, t_tpQualifier...>
		)
	->	Ptr
		<	Func<t_tSignature, t_tpQualifier...>
		>
	;

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken<t_tEntity*>
		)
	->	decltype(auto)
	{	return
		CV
		{	Ptr
			{	Tokenize(Type<t_tEntity>)
			}
		};
	}
}
