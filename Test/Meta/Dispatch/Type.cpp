import Meta.Dispatch.DispatchFor;
import Meta.Dispatch.BlockedPath;
import Meta.Dispatch.Final;
import Meta.ID;

import Std;

static_assert
(	std::is_same_v
	<	Meta::DispatchFor<int(int, int)>::PlainFunctionType
	,	int(int, int)
	>
);

static_assert
(	std::is_same_v
	<	Meta::DispatchFor<int(int, int)>::QualifiedFunctionType
	,	int(int, int)
	>
);

static_assert
(	std::is_same_v
	<	decltype
		(	&Meta::Dispatch::Final<int(int, int), Meta::ID<"">>::operator()
		)
	,	int(*)(int, int)
	>
);

static_assert
(	std::is_same_v
	<	Meta::DispatchFor<int(int, int) noexcept>::PlainFunctionType
	,	int(int, int) // cannot be noexcept
	>
);

static_assert
(	std::is_same_v
	<	Meta::DispatchFor<int(int, int) noexcept>::QualifiedFunctionType
	,	int(int, int) noexcept
	>
);

static_assert
(	std::is_same_v
	<	decltype
		(	&Meta::Dispatch::Final<int(int, int) noexcept, Meta::ID<"">>::operator()
		)
	,	int(*)(int, int) // cannot be noexcept
	>
);
