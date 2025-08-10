import Test.CMake.CXXModule.Imported;

import Test.CMake.CXXModule.DoubleImport;

auto
(	main
)	()
->	int
{
	Virt v;
	return
		GetInt
		()
	-	doubleValue(4)
	;
}
