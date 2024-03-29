import Meta.Predicate.Category;
import Meta.Logic.Constraint;
import Meta.Logic.Disjunction;

using ::Meta::ProtoConstraint;
using namespace ::Meta;

enum class
	EOverload
{	Arithmetic
,	Integral
};

[[nodiscard]]
auto constexpr inline
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
auto constexpr inline
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
auto constexpr inline
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
auto constexpr inline
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
