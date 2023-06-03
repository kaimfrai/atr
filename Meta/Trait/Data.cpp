export module Meta.Trait.Data;

import Meta.Trait.Match.BoundedArray;
import Meta.Trait.Match.Class;
import Meta.Trait.Match.Scalar;
import Meta.Trait.Match.Union;

import Meta.Logic.LiteralBase;
import Meta.Token.Type;
import Meta.Lex.Tokenizer;

export namespace
	Meta::Trait
{
	///	Object types which may store data. In particular, this exculdes unbound arrays.
	///	This has a real semantic meaning, in particular for types used as members in a class.
	///	In combination with the following traits, all types categories are distinguished with
	///	as few traits as possible.
	struct
		Data final
	:	LiteralBase
	,	Match::Scalar
	,	Match::BoundedArray
	,	Match::Class
	,	Match::Union
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)
			noexcept
		->	bool
		{	return
			Evaluate
			(	Data{}
			,	TokenizeType<t_tEntity>
			);
		}
	};
}
