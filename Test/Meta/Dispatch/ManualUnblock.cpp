import Meta.Dispatch.BlockedPath;
import Meta.Dispatch.DispatchFor;
import Meta.Dispatch.Path;
import Meta.Dispatch.Final;
import Meta.ID;

import Std;

namespace
	Meta::Dispatch
{
	auto Block(Path<int(int, int), "">) = delete;
	auto Block(Path<int(int, int), "M">) = delete;
	auto Block(Path<int(int, int), "Mu">) = delete;
	auto Block(Path<int(int, int), "Mul">) = delete;
	auto Block(Path<int(int, int), "Mult">) = delete;
	auto Block(Path<int(int, int), "Multi">) = delete;
	auto Block(Path<int(int, int), "Multip">) = delete;
	auto Block(Path<int(int, int), "Multipl">) = delete;
	auto Block(Path<int(int, int), "Multiply">) = delete;
	auto Block(Path<int(int, int), "Multiply1">) = delete;
	auto constexpr inline
	(	Call
	)	(	Path<int(int,int), "Multiply1">
		,	int
				i_vFirst
		,	int
				i_vSecond
		)
	->	int
	{
		return i_vFirst * i_vSecond;
	}
}

using ::Meta::Dispatch::IsPathBlocked;
using ::Meta::ID;

static_assert
(	not
	IsPathBlocked<int(int, int), ID<"">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID<"M">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID<"Mu">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID<"Mul">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID<"Mult">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID<"Multi">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID<"Multip">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID<"Multipl">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID<"Multiply">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID<"Multiply1">>
);

static_assert
(	IsPathBlocked<int(int, int), ID<"N">>
);
static_assert
(	IsPathBlocked<int(int, int), ID<"Ma">>
);
static_assert
(	IsPathBlocked<int(int, int), ID<"Muz">>
);
static_assert
(	IsPathBlocked<int(int, int), ID<"Mulq">>
);
static_assert
(	IsPathBlocked<int(int, int), ID<"Multf">>
);
static_assert
(	IsPathBlocked<int(int, int), ID<"Multia">>
);
static_assert
(	IsPathBlocked<int(int, int), ID<"Multipx">>
);
static_assert
(	IsPathBlocked<int(int, int), ID<"Multiplh">>
);
static_assert
(	IsPathBlocked<int(int, int), ID<"Multiply2">>
);

static_assert
(	IsPathBlocked<int(int, int) noexcept, ID<"">>
);
static_assert
(	IsPathBlocked<int(double), ID<"M">>
);
static_assert
(	IsPathBlocked<void(), ID<"Mu">>
);
static_assert
(	IsPathBlocked<int(), ID<"Mul">>
);
static_assert
(	IsPathBlocked<int(int, int, char), ID<"Mult">>
);
static_assert
(	IsPathBlocked<int(int, long), ID<"Multi">>
);
static_assert
(	IsPathBlocked<int(float, int), ID<"Multip">>
);
static_assert
(	IsPathBlocked<void(int, int), ID<"Multipl">>
);
static_assert
(	IsPathBlocked<int(int, int, int), ID<"Multiply">>
);
static_assert
(	IsPathBlocked<int(int), ID<"Multiply1">>
);

static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	""
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"">>::operator()
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"M"
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"M">>::operator()
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Mu"
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"Mu">>::operator()
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Mul"
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"Mul">>::operator()
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Mult"
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"Mult">>::operator()
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multi"
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"Multi">>::operator()
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multip"
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"Multip">>::operator()
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multipl"
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"Multipl">>::operator()
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multiply"
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"Multiply">>::operator()
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multiply1"
	)
==	&Meta::Dispatch::Final<int(int, int), ID<"Multiply1">>::operator()
);

static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multiply1"
	)(	5
	,	4
	)
==	20
);
