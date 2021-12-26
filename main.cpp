import Meta.Logic.Disjunction;
// import Std;

// auto constexpr
// 	Foo(Meta::ProtoConstraint<Meta::IsFloatingPoint> auto)
// {
// 	return 5;
// }
// auto constexpr
// 	Foo(Meta::ProtoConstraint<Meta::IsIntegral> auto)
// {
// 	return 4;
// }

// auto constexpr
// 	Foo(Meta::ProtoConstraint<Meta::IsIntegral or Meta::IsFloatingPoint> auto)
// {
// 	return 3;
// }
// auto constexpr
// 	Foo(Meta::ProtoConstraint<Meta::IsArithmetic> auto)
// {
// 	return 2;
// }

// static_assert(Foo(1) == 4);
// static_assert(Foo(2.0) == 5);


int main(int, char **) {

	using namespace Meta::Logic;
	Disjunction A = Disjunction::Literal(0);
	Disjunction B = Disjunction::Literal(1);
	Disjunction C = Disjunction::Literal(2);
	Disjunction D = Disjunction::Literal(3);
	Disjunction E = Disjunction::Literal(4);
	Disjunction F = Disjunction::Literal(5);
	Disjunction G = Disjunction::Literal(6);
	Disjunction H = Disjunction::Literal(7);

	Disjunction six = A or B or C or D or E or F;
	Disjunction two = G or H;
	Disjunction result [[maybe_unused]]
		= six or two
	;
	return 0;
}
