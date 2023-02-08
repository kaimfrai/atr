export module Meta.Lex.CV;

import Meta.Token.Type;
import Meta.Token.Volatile;

import Std;

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
	(	[]{	auto constexpr
				nQualifierCount
			=	sizeof...(t_tpQualifier)
			;
			if	constexpr
				(	nQualifierCount
				==	2uz
				)
			{	::std::array<::Meta::TypeID, nQualifierCount> const
					vQualifier
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
					nQualifierCount
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
	auto constexpr
	(	MakeCV
	)	(	MatchCV<t_tEntity>
		,	t_tpQualifier
			...
		)
		noexcept
	->	MatchCV<t_tEntity, t_tpQualifier...>
	{	return {};	}
}
