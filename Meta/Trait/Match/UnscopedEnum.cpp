export module Meta.Trait.Match.UnscopedEnum;

import Meta.Lex.CV;
import Meta.Logic.LiteralBase;

import Std;

export namespace
	Meta::Trait::Match
{
	struct
		UnscopedEnum
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		requires
			(	::std::is_enum_v<t_tEntity>
			and not
				::std::is_scoped_enum_v<t_tEntity>
			)
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCV
				<	t_tEntity
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};
}