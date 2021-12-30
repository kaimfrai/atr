//import Meta;


template<typename T> struct Type{};


struct
	Tautology
{
	auto constexpr operator()(auto) const { return true; }
};

struct
	Trait
{
	auto constexpr operator()(auto) const { return false; }
	auto constexpr operator()(Type<int>) const { return true; }
};

template
	<	typename
			t_tProto
	,	auto
			t_fTrait
	>
concept
	ProtoTrait
=	t_fTrait
	(	Type<t_tProto>{}
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoAll
=	ProtoTrait
	<	t_tProto
	,	Tautology{}
	>
;
// template
// 	<	typename
// 			t_tProto
// 	,	auto
// 			t_fTrait
// 	>
// concept
// 	ProtoConstraint
// =		ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x00>(t_fTrait)>
// 	and	ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x01>(t_fTrait)>
// 	and	ProtoAll<t_tProto>
// ;
// auto constexpr inline f1 =  GetClauseLiteral<0x00	,	0x00>(Meta::IsAddressable);
// auto constexpr inline f2 = GetClauseLiteral<0x00	,	0x01>(Meta::IsAddressable);
//
// auto constexpr inline g1 =  GetClauseLiteral<0x00	,	0x00>(Meta::IsReferable);
// auto constexpr inline g2 = GetClauseLiteral<0x00	,	0x01>(Meta::IsReferable);

template<typename T, auto t1>
concept Base
=	ProtoTrait<T, t1>
and	ProtoAll<T>
;

template<typename T>
auto constexpr inline GetT() -> T
{
	return T{};
}

template<typename T, typename v>
concept Indirect
=	Base<T,
	v{}
	//::GetT<v>()
	>
;

template<typename T>
	requires Indirect<T, Tautology>
auto constexpr
	Foo()
{	return 4; }

template<typename T>
	requires Indirect<T,  Trait>
auto constexpr
	Foo()
{	return 2;	}
static_assert(Foo<int>() == 2);

// template<Meta::ProtoConstraint<Meta::IsQualifiedFunction>>
// auto constexpr
// 	Foo()
// {
// 	return 3;
// }
// auto constexpr
// 	Foo(Meta::ProtoConstraint<Meta::IsArithmetic> auto)
// {
// 	return 2;
// }

// static_assert(Foo<void()const>() == 3);


int main(int, char **) {


}
