export module Legacy.Test.Meta.Logic.Data;

export import Legacy.Meta.Logic;

///	Constants
export auto constexpr inline T = ::Legacy::Meta::True;
export auto constexpr inline F = ::Legacy::Meta::False;

/// Literals
export struct P {};
export ::Legacy::Meta::Term constexpr inline p = ::Legacy::Meta::Atom<::P>;
export struct Q {};
export ::Legacy::Meta::Term constexpr inline q = ::Legacy::Meta::Atom<::Q>;
export struct R {};
export ::Legacy::Meta::Term constexpr inline r = ::Legacy::Meta::Atom<::R>;
