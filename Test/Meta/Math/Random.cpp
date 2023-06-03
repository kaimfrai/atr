import Meta.Math.Random;
import Meta.Math.Next;

import Std;

using ::Meta::Math::Splitmix64;
using ::Meta::Math::Xoroshiro256StarStar;

static_assert
(	::std::input_iterator
	<	Splitmix64
	>
);

static_assert
(	::std::input_iterator
	<	Xoroshiro256StarStar
	>
);

Splitmix64 constexpr inline
	Seed
{	0x0123456789ABCDEF
};

static_assert
(	*	Seed
==	*	Seed
);

static_assert
(	*	Seed
!=	*	Next
		(	Seed
		)
);

static_assert
(	*	Next
		(	Seed
		)
==	*	Next
		(	Seed
		)
);

Xoroshiro256StarStar constexpr inline
	Rng
{	Seed
};

static_assert
(	*	Rng
==	*	Rng
);

static_assert
(	*	Rng
!=	*	Next
		(	Rng
		)
);

static_assert
(	*	Next
		(	Rng
		)
==	*	Next
		(	Rng
		)
);
