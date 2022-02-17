import Meta.Type;
import Meta.Token.Transform;
import Meta.Token.Pointer;

using namespace Meta;

static_assert(Type<void> + Pointer == Type<void*>);
static_assert(Type<void*> + Pointer == Type<void**>);
static_assert(Type<void**> + Pointer == Type<void***>);

static_assert(Type<void**> - Pointer == Type<void*>);
static_assert(Type<void*> - Pointer == Type<void>);
