#pragma once

#include <type_traits>

import Logic;

///	Constants
auto constexpr inline T = Logic::True{};
auto constexpr inline F = Logic::False{};

/// Literals
struct P : Logic::Atom<P> {} constexpr inline p{};
struct Q : Logic::Atom<Q> {} constexpr inline q{};
struct R : Logic::Atom<R> {} constexpr inline r{};
