import Meta.Token;

using namespace Meta;

static_assert(Type<void> + Pointer == Type<void*>);
static_assert(Type<void*> + Pointer == Type<void**>);
static_assert(Type<void**> + Pointer == Type<void***>);

static_assert(Type<void**> - Pointer == Type<void*>);
static_assert(Type<void*> - Pointer == Type<void>);
