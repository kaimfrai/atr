import Meta.Dispatch;

namespace
	Meta::Dispatch
{
	auto Block(ProtoPath<int(int), "Multiply1"> auto) = delete;
	auto Block(ProtoPath<int(int), "Multiply2"> auto) = delete;
	auto constexpr
	(	Call
	)	(	Path<int(int), "Multiply1">
		,	int
				i_nFirst
		)
	->	int
	{
		return i_nFirst * 1;
	}

	auto constexpr
	(	Call
	)	(	Path<int(int), "Multiply2">
		,	int
				i_nFirst
		)
	->	int
	{
		return i_nFirst * 2;
	}
}

using Meta::ID_T;
using Meta::Dispatch::IsPathBlocked;
using Meta::Dispatch::Path;
using Meta::Dispatch::ProtoPath;

static_assert
(	ProtoPath
	<	Path<int(int), "">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "M">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Mu">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Mul">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Mult">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multi">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multip">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multipl">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multiply">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multiply1">
	,	int(int)
	,	"Multiply1"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "M">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Mu">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Mul">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Mult">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multi">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multip">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multipl">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multiply">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	ProtoPath
	<	Path<int(int), "Multiply2">
	,	int(int)
	,	"Multiply2"
	>
);

static_assert
(	not
	IsPathBlocked<int(int), ID_T<"">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"M">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"Mu">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"Mul">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"Mult">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"Multi">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"Multip">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"Multipl">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"Multiply">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"Multiply1">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID_T<"Multiply2">>
);

static_assert
(	Meta::DispatchFor<int(int)>::Dispatch("Multiply1")
!=	Meta::DispatchFor<int(int)>::Dispatch("Multiply2")
);

static_assert
(	Meta::DispatchFor<int(int)>::Dispatch("Multiply1")
	(	5
	)
==	5
);

static_assert
(	Meta::DispatchFor<int(int)>::Dispatch("Multiply2")
	(	5
	)
==	10
);
