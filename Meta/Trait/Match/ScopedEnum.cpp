export module Meta.Trait.Match.ScopedEnum;

import Meta.Lex.CV;
import Meta.Logic.LiteralBase;

import Std;

export namespace
	Meta::Trait::Match
{
	struct
		ScopedEnum
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		requires
			(	::std::is_enum_v
				<	t_tEntity
				>
			and not
				::std::is_convertible_v
				<	t_tEntity
				,	::std::underlying_type_t
					<	t_tEntity
					>
				>
			)
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
}
