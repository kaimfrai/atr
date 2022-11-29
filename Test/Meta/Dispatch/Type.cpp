import Meta.Dispatch;

import Std;

static_assert
(	std::is_same_v
	<	Meta::DispatchFor<int(int, int)>::FunctionType
	,	int(int, int)
	>
);

static_assert
(	std::is_same_v
	<	decltype
		(	&Meta::DispatchFor<int(int, int)>::template Final<Meta::ID_T<"">>
		)
	,	int(*)(int, int)
	>
);

static_assert
(	std::is_same_v
	<	Meta::DispatchFor<int(int, int) noexcept>::FunctionType
	,	int(int, int) // cannot be noexcept
	>
);

static_assert
(	std::is_same_v
	<	decltype
		(	&Meta::DispatchFor<int(int, int) noexcept>::template Final<Meta::ID_T<"">>
		)
	,	int(*)(int, int) // cannot be noexcept
	>
);
