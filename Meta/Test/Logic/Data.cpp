export module Meta.Logic.Test.Data;

export import Meta.Logic;

///	Constants
export auto constexpr inline T = ::Meta::True;
export auto constexpr inline F = ::Meta::False;

/// Literals
export struct P {};
export ::Meta::Term constexpr inline p = ::Meta::Atom<::P>;
export struct Q {};
export ::Meta::Term constexpr inline q = ::Meta::Atom<::Q>;
export struct R {};
export ::Meta::Term constexpr inline r = ::Meta::Atom<::R>;
