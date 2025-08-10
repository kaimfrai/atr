module Test.CMake.CXXModule.TransImported;

int GetTransInt() { return 4; }

static double largeArray[1024]
{};

Virt::~Virt()
{
	largeArray[13] = 1.0;
}
