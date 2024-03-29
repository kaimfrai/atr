import Meta.Dispatch.BlockedPath;
import Meta.Dispatch.DispatchFor;
import Meta.Dispatch.Path;
import Meta.ID;

import Std;

namespace
	Meta::Dispatch
{
	auto Block(ProtoPath<int(int), "Multiply1"> auto) = delete;
	auto Block(ProtoPath<int(int), "Multiply2"> auto) = delete;
	auto constexpr inline
	(	Call
	)	(	Path<int(int), "Multiply1">
		,	int
				i_vFirst
		)
	->	int
	{
		return i_vFirst * 1;
	}

	auto constexpr inline
	(	Call
	)	(	Path<int(int), "Multiply2">
		,	int
				i_vFirst
		)
	->	int
	{
		return i_vFirst * 2;
	}
}

using ::Meta::Dispatch::IsPathBlocked;
using ::Meta::Dispatch::Path;
using ::Meta::Dispatch::ProtoPath;
using ::Meta::ID;

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
	IsPathBlocked<int(int), ID<"">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"M">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"Mu">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"Mul">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"Mult">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"Multi">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"Multip">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"Multipl">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"Multiply">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"Multiply1">>
);
static_assert
(	not
	IsPathBlocked<int(int), ID<"Multiply2">>
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
