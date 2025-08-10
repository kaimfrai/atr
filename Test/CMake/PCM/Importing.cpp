import Test.CMake.PCM.Imported;

import Test.CMake.PCM.DoubleImport;

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
