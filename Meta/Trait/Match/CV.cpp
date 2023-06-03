export module Meta.Trait.Match.CV;

import Meta.Lex.CV;
import Meta.Logic.LiteralBase;

export namespace
	Meta::Trait::Match
{
	template
		<	typename
				t_tEntity
		>
	struct
		CV
	{
		template
			<	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVType
				<	t_tEntity
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	template
		<	typename
				t_tEntity
		,	bool
		>
	struct
		CV_If
	:	CV
		<	t_tEntity
		>
	{};

	template
		<	typename
				t_tEntity
		>
	struct
		CV_If
		<	t_tEntity
		,	false
		>
	{};
}
