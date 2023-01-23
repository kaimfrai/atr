export module Meta.Lex.CV;

import Meta.Lex.Base;
import Meta.Token.Type;
import Meta.Token.Volatile;

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
	(	[]{	if	constexpr
				(	sizeof...(t_tpQualifier)
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
					sizeof...(t_tpQualifier)
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
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	using
		CV
	=	::CV
		<	t_tEntity
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
		MatchCV
	=	::CV
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
	)	(	::CV<t_tEntity>
		,	t_tpQualifier
			...
		)
		noexcept
	->	::CV<t_tEntity, t_tpQualifier...>
	{	return {};	}
}
