#pragma once

#include <type_traits>

import Meta.Logic;

///	Constants
auto constexpr inline T = Meta::True;
auto constexpr inline F = Meta::False;

/// Literals
struct P {};
Meta::Term constexpr inline p = Meta::Atom<P>;
struct Q {};
Meta::Term constexpr inline q = Meta::Atom<P>;
struct R {};
Meta::Term constexpr inline r = Meta::Atom<P>;
