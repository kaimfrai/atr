import Test.CMake;
import Test.CMake.Pimpl;

auto
(	main
)	()
->	int
{
	Test::CMake::Def def{};
	Pimpl p{12.4l};
	[[maybe_unused]]ImplAlias* pImpl = p.pImpl;
	return Foo() + Bar() + def.Invoke1() + static_cast<int>(p.get());
}
