export module Meta.Logic2.Test.Data;

export import Meta.Logic2;

///	Constants
export ::BitTerm constexpr inline T = ::BitClause{};
export ::BitTerm constexpr inline F = ::BitTerm{};

/// Literals
export ::BitTerm constexpr inline p = ::BitClause{1u << 0u};
export ::BitTerm constexpr inline q = ::BitClause{1u << 1u};
export ::BitTerm constexpr inline r = ::BitClause{1u << 2u};
