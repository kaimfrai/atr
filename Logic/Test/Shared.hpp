#pragma once

#include <type_traits>

import Logic;

///	Constants
auto constexpr inline T = Logic::True;
auto constexpr inline F = Logic::False;

/// Literals
struct P {};
Logic::Term constexpr inline p = Logic::Atom<P>;
struct Q {};
Logic::Term constexpr inline q = Logic::Atom<P>;
struct R {};
Logic::Term constexpr inline r = Logic::Atom<P>;
