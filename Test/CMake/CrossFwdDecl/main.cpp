import Test.CMake.CrossFwdDecl;

auto main() -> int
{
	using namespace CrossFwdDecl;
	Factory f{};
	auto* base = f.Create();
	delete base;
}
