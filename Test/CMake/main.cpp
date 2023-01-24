import Test.CMake.FooBar;
import Test.CMake.Pimpl;

auto
(	main
)	()
->	int
{
	Test::CMake::Def def{};
	Pimpl p{12.4L};
	[[maybe_unused]]ImplAlias* pImpl = p.pImpl;
	return Foo() + Bar() + def.Invoke1() + static_cast<int>(p.get());
}
