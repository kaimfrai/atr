import Meta.Dispatch;

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
	auto constexpr
	(	Call
	)	(	Path<int(int,int), "Multiply1">
		,	int
				i_nFirst
		,	int
				i_nSecond
		)
	->	int
	{
		return i_nFirst * i_nSecond;
	}
}

using ::Meta::Dispatch::IsPathBlocked;
using ::Meta::ID_T;

static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"M">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"Mu">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"Mul">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"Mult">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"Multi">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"Multip">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"Multipl">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"Multiply">>
);
static_assert
(	not
	IsPathBlocked<int(int, int), ID_T<"Multiply1">>
);

static_assert
(	IsPathBlocked<int(int, int), ID_T<"N">>
);
static_assert
(	IsPathBlocked<int(int, int), ID_T<"Ma">>
);
static_assert
(	IsPathBlocked<int(int, int), ID_T<"Muz">>
);
static_assert
(	IsPathBlocked<int(int, int), ID_T<"Mulq">>
);
static_assert
(	IsPathBlocked<int(int, int), ID_T<"Multf">>
);
static_assert
(	IsPathBlocked<int(int, int), ID_T<"Multia">>
);
static_assert
(	IsPathBlocked<int(int, int), ID_T<"Multipx">>
);
static_assert
(	IsPathBlocked<int(int, int), ID_T<"Multiplh">>
);
static_assert
(	IsPathBlocked<int(int, int), ID_T<"Multiply2">>
);

static_assert
(	IsPathBlocked<int(int, int) noexcept, ID_T<"">>
);
static_assert
(	IsPathBlocked<int(double), ID_T<"M">>
);
static_assert
(	IsPathBlocked<void(), ID_T<"Mu">>
);
static_assert
(	IsPathBlocked<int(), ID_T<"Mul">>
);
static_assert
(	IsPathBlocked<int(int, int, char), ID_T<"Mult">>
);
static_assert
(	IsPathBlocked<int(int, long), ID_T<"Multi">>
);
static_assert
(	IsPathBlocked<int(float, int), ID_T<"Multip">>
);
static_assert
(	IsPathBlocked<void(int, int), ID_T<"Multipl">>
);
static_assert
(	IsPathBlocked<int(int, int, int), ID_T<"Multiply">>
);
static_assert
(	IsPathBlocked<int(int), ID_T<"Multiply1">>
);

static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	""
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"">>
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"M"
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"M">>
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Mu"
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"Mu">>
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Mul"
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"Mul">>
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Mult"
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"Mult">>
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multi"
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"Multi">>
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multip"
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"Multip">>
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multipl"
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"Multipl">>
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multiply"
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"Multiply">>
);
static_assert
(	Meta::DispatchFor
	<	int(int, int)
	>::Dispatch
	(	"Multiply1"
	)
==	&Meta::DispatchFor<int(int, int)>::template Final<ID_T<"Multiply1">>
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
