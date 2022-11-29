import Meta.Dispatch;

import Std;

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
	<	decltype
		(	&Meta::DispatchFor<int(int, int) noexcept>::template Final<Meta::ID_T<"">>
		)
	,	int(*)(int, int) noexcept
	>
);
