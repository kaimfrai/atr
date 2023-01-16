import Meta.Predicate;

using ::Meta::ProtoConstraint;
using namespace ::Meta;

enum class
	EOverload
{	Arithmetic
,	Integral
};

[[nodiscard]]
auto constexpr
(	FullTerm
)	(	ProtoConstraint
		<	IsArithmetic
		>	auto
	)
	noexcept
->	EOverload
{	return
		EOverload
	::	Arithmetic
	;
}

[[nodiscard]]
auto constexpr
(	FullTerm
)	(	ProtoConstraint
		<	IsIntegral
		>	auto
	)
	noexcept
->	EOverload
{	return
		EOverload
	::	Integral
	;
}


static_assert
(	FullTerm(5.0)
==	EOverload::Arithmetic
);

static_assert
(	FullTerm(5)
==	EOverload::Integral
);


[[nodiscard]]
auto constexpr
(	AdHoc
)	(	ProtoConstraint
		<	IsIntegral
		or	IsFloatingPoint
		>	auto
	)
	noexcept
->	EOverload
{	return
		EOverload
	::	Arithmetic
	;
}

[[nodiscard]]
auto constexpr
(	AdHoc
)	(	ProtoConstraint
		<	IsUnsigned
		or	IsSignedIntegral
		>	auto
	)
	noexcept
->	EOverload
{	return
		EOverload
	::	Integral
	;
}

static_assert
(	AdHoc(5.0)
==	EOverload::Arithmetic
);

static_assert
(	AdHoc(5)
==	EOverload::Integral
);
