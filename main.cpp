import Meta;

struct Base{};

auto constexpr inline
	Foo(::Meta::ProtoConstraint<::Meta::IsBase> auto )
{
	return 3;
}


auto constexpr inline
	Foo(::Meta::ProtoCustom auto)
{
	return 2;
}

static_assert(Foo(Base{}) == 3);


int main(int, char **) {


}
