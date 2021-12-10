export module Meta.Logic2.Test.Data;

export import Meta.Logic2;

///	Constants
export auto constexpr inline T = ::True;
export auto constexpr inline F = ::False;

/// Literals
export ::BitLiteral constexpr inline p = ::BitLiteral{0u, true};
export ::BitLiteral constexpr inline q = ::BitLiteral{1u, true};
export ::BitLiteral constexpr inline r = ::BitLiteral{2u, true};
