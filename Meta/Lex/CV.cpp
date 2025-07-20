export module Meta.Lex.CV;

import Meta.Token.Type;
import Meta.Token.TypeID;
import Meta.Token.Volatile;

import std;

template
	<	typename
			t_tEntity
	,	typename
		...	t_tpQualifier
	>
struct
	CV
:	decltype
	((	t_tEntity{}
	+	...
	+	t_tpQualifier{}
	))
{
	static_assert
	(	[]
		{
			auto static constexpr
				vQualifierCount
			=	sizeof...(t_tpQualifier)
			;
			if	constexpr
				(	vQualifierCount
				==	2uz
				)
			{	::Meta::TypeID const
					vQualifier
					[]
				{	::Meta::Type<t_tpQualifier>
					...
				};
				return
					(	vQualifier[0uz]
					!=	vQualifier[1uz]
					)
				and	(	vQualifier[1uz]
					==	::Meta::Volatile
					)
				;
			}
			else
			{	return
					vQualifierCount
				<	2uz
				;
			}
		}()
	,	"Invalid sequence of qualifiers!"
	);
};

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	using
		MatchCV
	=	::CV
		<	t_tData
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	using
		MatchCVType
	=	MatchCV
		<	TypeToken<t_tData>
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
	auto constexpr inline
	(	MakeCV
	)	(	MatchCV<t_tEntity>
		,	t_tpQualifier
			...
		)
		noexcept
	->	MatchCV<t_tEntity, t_tpQualifier...>
	{	return {};	}
}
