import Meta.Type;

using namespace Meta;

static_assert(Type<void> == Type<void>);
static_assert(Type<void> != Type<void*>);
static_assert(Type<void*> == Type<void*>);

static_assert(Type<int> == Type<int>);
static_assert(Type<int[]> == Type<int[]>);
static_assert(Type<int*> == Type<int*>);
