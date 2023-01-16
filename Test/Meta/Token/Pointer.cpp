import Meta.Token.Pointer;
import Meta.Token.Type;

using namespace Meta;

static_assert(Type<void> + Pointer == Type<void*>);
static_assert(Type<void*> + Pointer == Type<void**>);
static_assert(Type<void**> + Pointer == Type<void***>);

static_assert(Type<void**> - Pointer == Type<void*>);
static_assert(Type<void*> - Pointer == Type<void>);
