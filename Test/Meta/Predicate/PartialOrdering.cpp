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
(	Overload
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
(	Overload
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
(	Overload(5.0)
==	EOverload::Arithmetic
);

static_assert
(	Overload(5)
==	EOverload::Integral
);
