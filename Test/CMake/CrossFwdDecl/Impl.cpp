module;

#include <new>

module Test.CMake.CrossFwdDecl;

namespace
	CrossFwdDecl
{
	auto Factory::Create() const -> Derived*
	{
		return new Derived{};
	}
}
