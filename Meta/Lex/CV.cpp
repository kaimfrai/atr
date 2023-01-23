export module Meta.Lex.CV;

import Meta.Token.Type;
import Meta.Token.Const;
import Meta.Token.Mutable;
import Meta.Token.Volatile;

import Std;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tFundamental
		>
	struct
		Base
	{
		static_assert
		(	(	::std::is_fundamental_v<t_tFundamental>
			or	::std::is_class_v<t_tFundamental>
			or	::std::is_union_v<t_tFundamental>
			or	::std::is_enum_v<t_tFundamental>
			)
		and	not ::std::is_const_v<t_tFundamental>
		and	not ::std::is_volatile_v<t_tFundamental>
		,	"Tokenize ended prematurely!"
		);

		static Token::TypeToken<t_tFundamental> constexpr
			Type
		{};

		using
			Entity
		=	t_tFundamental
		;
	};

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	struct
		CV
	{
		static_assert
		(	[]{	if	constexpr
					(	sizeof...(t_tpQualifier)
					==	2uz
					)
				{	TypeID const
						vQualifier
						[]
					{	Type<t_tpQualifier>
						...
					};
					return
						(	vQualifier[0uz]
						!=	vQualifier[1uz]
						)
					and	(	vQualifier[1uz]
						==	Type<Token::Volatile>
						)
					;
				}
				else
				{
					return
						sizeof...(t_tpQualifier)
					<	2uz
					;
				}
			}()
		,	"Invalid sequence of qualifiers!"
		);

		static Token::TypeToken constexpr
			Type
		=(	t_tEntity::Type
		+	...
		+	t_tpQualifier{}
		);

		using
			Entity
		=	TypeEntity<Type>
		;

		constexpr
		(	operator TypeID
		)	()	const
			noexcept
		{	return Type;	}
	};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	using
		MatchCV
	=	CV
		<	Base<t_tData>
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	[[nodiscard]]
	auto constexpr
	(	MakeCV
	)	(	CV<t_tEntity>
		,	t_tpQualifier
			...
		)
		noexcept
	->	CV<t_tEntity, t_tpQualifier...>
	{	return {};	}
}
