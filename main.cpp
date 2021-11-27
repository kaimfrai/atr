#include <iostream>
// #include <utility>

import Meta;

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

auto constexpr
	Foo(Meta::ProtoConstraint<Meta::IsIntegral or Meta::IsFloatingPoint> auto)
{
	return 3;
}
auto constexpr
	Foo(Meta::ProtoConstraint<Meta::IsArithmetic> auto)
{
	return 2;
}

static_assert(Foo(1) == 3);
static_assert(Foo(2.0) ==3 );

int main(int, char **) {
    std::cout << "Hello, world!" << std::endl;
    return 0;
}
