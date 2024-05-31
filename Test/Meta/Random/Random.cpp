import Meta.Math.Next;
import Meta.Random.Splitmix;
import Meta.Random.Xoroshiro;

import Std;

using ::Meta::Math::Next;
using ::Meta::Random::Splitmix64;
using ::Meta::Random::Xoroshiro256StarStar;

static_assert
(	::std::input_iterator
	<	Splitmix64
		<	1uz
		>
	>
);

static_assert
(	::std::input_iterator
	<	Xoroshiro256StarStar
		<	1uz
		>
	>
);

Splitmix64<1uz> constexpr inline
	Seed
{	0x0123'4567'89AB'CDEFuz
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

Xoroshiro256StarStar<1uz> constexpr inline
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
