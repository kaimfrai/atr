#include <iostream>

import Meta.TypeTraits;
/*
auto constexpr
	Foo(Logic::ProtoConstraint<TypeTraits::IsFloatingPoint> auto)
{
	return 5;
}
auto constexpr
	Foo(Logic::ProtoConstraint<TypeTraits::IsIntegral> auto)
{
	return 4;
}*/

auto constexpr
	Foo(Logic::ProtoConstraint<TypeTraits::IsIntegral or TypeTraits::IsFloatingPoint> auto)
{
	return 3;
}
auto constexpr
	Foo(Logic::ProtoConstraint<TypeTraits::IsArithmetic> auto)
{
	return 2;
}

static_assert(Foo(1) == 3);
static_assert(Foo(2.0) == 3);

int main(int, char **) {
    std::cout << "Hello, world!" << std::endl;
    return 0;
}
