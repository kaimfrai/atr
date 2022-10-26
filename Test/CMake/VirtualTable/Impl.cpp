module Test.CMake.Virtual;

import <iostream>;

namespace
	Test
{
	Interface::~Interface() { std::cout << "Destroy Interface\n"; }

	Impl::~Impl() { std::cout << "Destroy Impl\n"; }
}

