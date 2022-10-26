module Test.CMake.Virtual;

import Std;

namespace
	Test
{
	Interface::~Interface() { std::cout << "Destroy Interface\n"; }

	Impl::~Impl() { std::cout << "Destroy Impl\n"; }
}

