export module Meta.Lex.Member;

export import Meta.Lex.CV;
export import Meta.Lex.Function;

import Meta.Token.Type;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tOwner
		>
	struct
		Owner
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
			)
		->	TypeToken<t_tEntity t_tOwner::*>
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity t_tOwner::*>
			)
		->	TypeToken<t_tEntity>
		{	return{};	}
	};

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	struct
		Member
	:	t_tMember
	,	Owner<t_tOwner>
	{
		using
			Entity
		=	typename t_tMember::Entity
			t_tOwner::*
		;

		static Token::TypeToken<Entity> constexpr
			Type
		{};

		constexpr
		(	operator EraseTypeToken
		)	()	const
			noexcept
		{	return Type;	}
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
		,	Owner<t_tOwner>
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
		,	Owner<t_tOwner>
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
		,	typename
			...	t_tpQualifier
		>
	using
		MatchCVMember
	=	CV
		<	Member
			<	t_tMember
			,	t_tOwner
			>
		,	t_tpQualifier
			...
		>
	;
}
