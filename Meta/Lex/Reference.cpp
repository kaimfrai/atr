export module Meta.Lex.Reference;

import Meta.Lex.CV;
import Meta.Lex.Array;
import Meta.Lex.Function;

import Meta.Token.LRef;
import Meta.Token.RRef;
import Meta.Token.Type;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tEntity
		,	typename
				t_tReference
		>
	struct
		Ref
	{
		static Token::TypeToken constexpr
			Type
		=	t_tEntity::Type
		+	t_tReference{}
		;

		using
			Entity
		=	TypeEntity<Type>
		;

		[[nodiscard]]
		explicit(false) constexpr
		(	operator TypeID
		)	()	const
			noexcept
		{	return Type;	}
	};

	template
		<	typename
				t_tEntity
		,	typename
				t_tCategory
		>
	[[nodiscard]]
	auto constexpr
	(	MakeRef
	)	(	t_tEntity
		,	t_tCategory
		)
		noexcept
	->	Ref
		<	t_tEntity
		,	t_tCategory
		>
	{	return {};	}

	template
		<	typename
				t_tEntity
		>
	using
		MatchLRef
	=	Ref
		<	t_tEntity
		,	Token::LRef
		>
	;

	template
		<	typename
				t_tEntity
		>
	using
		MatchRRef
	=	Ref
		<	t_tEntity
		,	Token::RRef
		>
	;
}
