export module Meta.Trait.Match.Class;

import Meta.Lex.CV;
import Meta.Logic.LiteralBase;

import Std;

export namespace
	Meta::Trait::Match
{
	struct
		Class
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		requires
			::std::is_class_v<t_tEntity>
		[[nodiscard]]
		auto friend constexpr
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
}
