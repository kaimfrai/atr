import Meta.Type;
import Meta.Type.Transform;

using namespace Meta;

static_assert(Type<void> + Pointer == Type<void*>);
static_assert(Type<void*> + Pointer == Type<void**>);
static_assert(Type<void**> + Pointer == Type<void***>);

static_assert(Type<void**> - Pointer == Type<void*>);
static_assert(Type<void*> - Pointer == Type<void>);
