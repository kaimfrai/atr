import Test.CMake;

auto
(	main
)	()
->	int
{
	Test::CMake::Fwd fwd{};
	return Foo() + Bar() + fwd.Invoke1();
}
