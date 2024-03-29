import Meta.Token.Specifier;
import Meta.Token.Type;
import Meta.Data.Aggregate;

import Std;

using namespace Meta;
using ::Meta::Specifier::Mut;

static_assert(::std::contiguous_iterator<Aggregate<int const*>>);

static_assert
(	Type<int&>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	Mut<int>
				>	&
			>()
		.	get()
		)
	>
);

static_assert
(	Type<int&>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	Mut<int>
				>	const&
			>()
		.	get()
		)
	>
);

static_assert
(	Type<int>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	Mut<int>
				>	&&
			>()
		.	get()
		)
	>
);

static_assert
(	Type<int const&>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	int const[]
				>	&
			>()
			[	1
			]
		)
	>
);

static_assert
(	Type<int const&>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	int const[]
				>	const&
			>()
			[	1
			]
		)
	>
);

static_assert
(	Type<int>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	int const[]
				>	&&
			>()
			[	1
			]
		)
	>
);

static_assert
(	Type<int*&>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	Mut<int*>
				>	&
			>()
		.	get()
		)
	>
);

static_assert
(	Type<int*&>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	Mut<int*>
				>	const&
			>()
		.	get()
		)
	>
);

static_assert
(	Type<int*>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	Mut<int*>
				>	&&
			>()
		.	get()
		)
	>
);

static_assert
(	Type<int&>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	Mut<int[4]>
				>	&
			>()
			[	1
			]
		)
	>
);

static_assert
(	Type<int&>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	Mut<int[4]>
				>	const&
			>()
			[	1
			]
		)
	>
);

static_assert
(	Type<int>
==	Type
	<	decltype
		(	::std::declval
			<	Aggregate
				<	Mut<int[4]>
				>	&&
			>()
			[	1
			]
		)
	>
);
