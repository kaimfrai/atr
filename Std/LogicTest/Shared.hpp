#pragma once

#include "../Logic.hpp"

#include <type_traits>

True constexpr inline T{};
False constexpr inline F{};

struct P : AtomBase<P> {} constexpr inline p{};
struct Q : AtomBase<Q> {} constexpr inline q{};
struct R : AtomBase<R> {} constexpr inline r{};

struct S : AtomBase<S> {} constexpr inline s{};

template
	<	ProtoTerm auto
			t_vTerm
	,	ProtoTerm
			t_tExpected
	>
bool constexpr inline
	ExpectType
=	std::is_same_v
	<	decltype(t_vTerm)
	,	t_tExpected
	>
;

template
	<	ProtoTerm auto
			t_vTerm
	,	ProtoTerm
		...	t_tpExpected
	>
bool constexpr inline
	ExpectOneType
=	(	...
	or	ExpectType
		<	t_vTerm
		,	t_tpExpected
		>
	)
;
