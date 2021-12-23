export module Meta.Logic2.Test.Data;

// export import Meta.Logic.Conjunction;
//
// using Term = Meta::Logic::Conjunction;

export import Meta.Logic.Disjunction;

using Term = Meta::Logic::Disjunction;

///	Constants
export Term constexpr inline T = Term::True();
export Term constexpr inline F = Term::False();

/// Literals
export Term constexpr inline p = Term::Literal(0uz);
export Term constexpr inline q = Term::Literal(1uz);
export Term constexpr inline r = Term::Literal(2uz);

