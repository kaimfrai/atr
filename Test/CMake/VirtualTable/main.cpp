import Test.CMake.Virtual;

auto main() -> int
{
	Test::Interface* i = new Test::Impl();
	delete i;
}
