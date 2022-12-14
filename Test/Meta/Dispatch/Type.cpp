import Meta.Dispatch;

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
		(	&Meta::Dispatch::Final<int(int, int), Meta::ID_T<"">>::operator()
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
		(	&Meta::Dispatch::Final<int(int, int) noexcept, Meta::ID_T<"">>::operator()
		)
	,	int(*)(int, int) // cannot be noexcept
	>
);
