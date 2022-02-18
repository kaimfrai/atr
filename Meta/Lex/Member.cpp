export module Meta.Lex.Member;

export import Meta.Token.Type;
export import Meta.Lex.CV;
export import Meta.Lex.Function;

export namespace
	Meta::Lex
{
	template
		<	typename
		>
	struct
		Owner
	{};

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	struct
		Member
	:	t_tMember
	,	t_tOwner
	{};

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
		,	Owner<t_tOwner>
		)
	->	Member
		<	CV<t_tData, t_tpQualifier...>
		,	Owner<t_tOwner>
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
		,	Owner<t_tOwner>
		)
	->	Member
		<	Func<t_tSignature, t_tpQualifier...>
		,	Owner<t_tOwner>
		>
	;
}
