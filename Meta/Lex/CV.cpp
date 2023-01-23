export module Meta.Lex.CV;

import Meta.Lex.Base;
import Meta.Token.Type;
import Meta.Token.Volatile;

export namespace
	Meta::Lex
{
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
						==	Volatile
						)
					;
				}
				else
				{	return
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
