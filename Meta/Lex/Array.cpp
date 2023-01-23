export module Meta.Lex.Array;

import Meta.Lex.CV;

import Meta.Token.Extent;
import Meta.Token.Type;
import Meta.Size;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tElement
		,	typename
				t_tExtent
		>
	struct
		Array
	{
		static Token::TypeToken constexpr
			Type
		=	t_tElement::Type
		+	t_tExtent{}
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
				t_tElement
		,	USize
				t_nExtent
		,	typename
			...	t_tpQualifier
		>
	using
		MatchCVArray
	=	CV
		<	Array
			<	t_tElement
			,	Token::Extent<t_nExtent>
			>
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		,	typename
			...	t_tpQualifier
		>
	[[nodiscard]]
	auto constexpr
	(	MakeArray
	)	(	t_tElement
		,	Token::Extent<t_nExtent>
		,	t_tpQualifier
			...
		)
		noexcept
	->	MatchCVArray
		<	t_tElement
		,	t_nExtent
		,	t_tpQualifier
			...
		>
	{	return {};	}
}
