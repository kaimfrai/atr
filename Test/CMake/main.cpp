import Test.CMake;
import Test.CMake.Pimpl;

auto
(	main
)	()
->	int
{
	Test::CMake::Fwd fwd{};
	Pimpl p{12.4l};
	[[maybe_unused]]ImplAlias* pImpl = p.pImpl;
	return Foo() + Bar() + fwd.Invoke1() + static_cast<int>(p.get());
}
