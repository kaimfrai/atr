export module Meta.Logic2.Test.Data;

export import Meta.Logic.BitTerm;

///	Constants
export ::Meta::Logic::BitTerm constexpr inline T = ::Meta::Logic::BitClause::Absorbing();
export ::Meta::Logic::BitTerm constexpr inline F = ::Meta::Logic::BitClause::Identity();

/// Literals
export ::Meta::Logic::BitTerm constexpr inline p = ::Meta::Logic::BitClause{0uz};
export ::Meta::Logic::BitTerm constexpr inline q = ::Meta::Logic::BitClause{1uz};
export ::Meta::Logic::BitTerm constexpr inline r = ::Meta::Logic::BitClause{2uz};
