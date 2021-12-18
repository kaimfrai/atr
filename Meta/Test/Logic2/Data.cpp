export module Meta.Logic2.Test.Data;

export import Meta.Logic.BitTerm;

///	Constants
export ::Meta::Logic::BitTerm constexpr inline T = ::Meta::Logic::BitClause::Absorbing();
export ::Meta::Logic::BitTerm constexpr inline F = ::Meta::Logic::BitClause::Identity();

/// Literals
export ::Meta::Logic::BitTerm constexpr inline p = ::Meta::Logic::BitClause{1u << 0u, 0u};
export ::Meta::Logic::BitTerm constexpr inline q = ::Meta::Logic::BitClause{1u << 1u, 0u};
export ::Meta::Logic::BitTerm constexpr inline r = ::Meta::Logic::BitClause{1u << 2u, 0u};
