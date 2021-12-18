export module Meta.Logic2.Test.Data;

export import Meta.Logic2;

///	Constants
export ::BitTerm constexpr inline T = ::AbsorbingClause;
export ::BitTerm constexpr inline F = ::IdentityClause;

/// Literals
export ::BitTerm constexpr inline p = ::BitClause{1u << 0u, 0u};
export ::BitTerm constexpr inline q = ::BitClause{1u << 1u, 0u};
export ::BitTerm constexpr inline r = ::BitClause{1u << 2u, 0u};
