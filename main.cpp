import Meta;

struct Base{};

auto constexpr inline
	Foo(::Meta::ProtoConstraint<::Meta::IsArithmetic> auto )
{
	return 3;
}


auto constexpr inline
	Foo(::Meta::ProtoConstraint<::Meta::IsIntegral> auto)
{
	return 2;
}

static_assert(Foo(1) == 2);


int main(int, char **) {


}
