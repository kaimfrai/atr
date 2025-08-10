import Test.CMake.CXXModule.Imported;

import std;

auto
(	main
)	()
->	int
{
	std::cout << "Hello World!\n";
	return
		GetInt
		()
	-	static_cast<int>(sizeof(std::size_t))
	;
}
