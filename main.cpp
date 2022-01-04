import Meta;


template
	<	typename
			t_tProto
	>
concept
	Arithmetic
=	::Meta::ProtoConstraint<t_tProto, Meta::IsArithmetic>
;

auto constexpr
	Foo(Arithmetic auto )
{
	return 3;
}

template
	<	typename
			t_tProto
	>
concept
	Integral
=	::Meta::ProtoConstraint<t_tProto, Meta::IsIntegral>
;

auto constexpr
	Foo(Integral auto)
{
	return 2;
}

static_assert(Foo(1) == 2);


int main(int, char **) {


}
