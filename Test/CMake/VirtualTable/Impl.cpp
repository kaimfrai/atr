module Test.CMake.Virtual;

import std;

namespace
	Test
{
	Interface::~Interface() { std::cout << "Destroy Interface\n"; }

	Impl::~Impl() { std::cout << "Destroy Impl\n"; }
}

