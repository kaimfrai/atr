export module Meta.Lex.Member;

export import Meta.Type;
export import Meta.Lex.CV;
export import Meta.Lex.Function;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	struct
		Member final
	{
		constexpr
		(	Member
		)	()
		=	default;

		explicit constexpr
		(	Member
		)	(	t_tMember
			,	CV<t_tOwner>
			)
		{}
	};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		,	typename
				t_tOwner
		>
	(	Member
	)	(	CV<t_tData, t_tpQualifier...>
		,	CV<t_tOwner>
		)
	->	Member
		<	CV<t_tData, t_tpQualifier...>
		,	t_tOwner
		>
	;

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		,	typename
				t_tOwner
		>
	(	Member
	)	(	Func<t_tSignature, t_tpQualifier...>
		,	CV<t_tOwner>
		)
	->	Member
		<	Func<t_tSignature, t_tpQualifier...>
		,	t_tOwner
		>
	;

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tMember t_tOwner::*
			>
		)
	->	decltype(auto)
	{	return
		CV
		{	Member
			{	Tokenize(Type<t_tMember>)
			,	Tokenize(Type<t_tOwner>)
			}
		};
	}
}
