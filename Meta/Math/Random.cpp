export module Meta.Math.Random;

import Std;

export namespace
	Meta::Math
{
	// Taken and modified from https://prng.di.unimi.it/splitmix64.c

	/*  Written in 2015 by Sebastiano Vigna (vigna@acm.org)

	To the extent possible under law, the author has dedicated all copyright
	and related and neighboring rights to this software to the public domain
	worldwide. This software is distributed without any warranty.

	See <http://creativecommons.org/publicdomain/zero/1.0/>. */

	/* This is a fixed-increment version of Java 8's SplittableRandom generator
	See http://dx.doi.org/10.1145/2714064.2660195 and
	http://docs.oracle.com/javase/8/docs/api/java/util/SplittableRandom.html

	It is a very fast generator passing BigCrush, and it can be useful if
	for some reason you absolutely want 64 bits of state. */

	/* The state can be seeded with any value. */
	class
		Splitmix64
	{
		::std::uint64_t
			m_vState
		;

	public:
		using
			difference_type
		=	::std::ptrdiff_t
		;

		using
			value_type
		=	::std::uint64_t
		;

		explicit(true) constexpr
		(	Splitmix64
		)	(	::std::uint64_t
					i_vSeed
			)
		:	m_vState
			{	i_vSeed
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	operator*
		)	()	const
			noexcept
		->	::std::uint64_t
		{
			::std::uint64_t
				vZ
			=	m_vState
			;

			vZ
			=	(	vZ
				^	(	vZ
					>>	30
					)
				)
			*	0xbf58476d1ce4e5b9
			;

			vZ
			=	(	vZ
				^	(	vZ
						>>
					27	)
				)
			*	0x94d049bb133111eb
			;

			return
				vZ
			^	(	vZ
				>>	31
				)
			;
		}

		auto constexpr
		(	operator++
		)	()	&
			noexcept
		->	Splitmix64&
		{
			m_vState
			+=	0x9e3779b97f4a7c15
			;
			return
			*	this
			;
		}

		[[nodiscard("Prefer pre-increment when discarding the result")]]
		auto constexpr
		(	operator++
		)	(int)
			noexcept
		->	Splitmix64
		{
			auto const
				vOld
			=	*this
			;

			operator++
			();

			return
				vOld
			;
		}
	};

	// Taken and modified from: https://prng.di.unimi.it/xoshiro256starstar.c

	/*  Written in 2018 by David Blackman and Sebastiano Vigna (vigna@acm.org)

	To the extent possible under law, the author has dedicated all copyright
	and related and neighboring rights to this software to the public domain
	worldwide. This software is distributed without any warranty.

	See <http://creativecommons.org/publicdomain/zero/1.0/>. */

	/* This is xoshiro256** 1.0, one of our all-purpose, rock-solid
	generators. It has excellent (sub-ns) speed, a state (256 bits) that is
	large enough for any parallel application, and it passes all tests we
	are aware of.

	For generating just floating-point numbers, xoshiro256+ is even faster.

	The state must be seeded so that it is not everywhere zero. If you have
	a 64-bit seed, we suggest to seed a splitmix64 generator and use its
	output to fill s. */
	class
		Xoroshiro256StarStar
	{
		::std::uint64_t
			m_vState
			[	4
			]
		;

	public:
		using
			difference_type
		=	::std::ptrdiff_t
		;

		using
			value_type
		=	::std::uint64_t
		;

		explicit(true) constexpr
		(	Xoroshiro256StarStar
		)	(	Splitmix64
					i_vSeed
			)
		:	m_vState
			{	*	i_vSeed
					++
			,	*	i_vSeed
					++
			,	*	i_vSeed
					++
			,	*	i_vSeed
					++
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	operator*
		)	()	const
			noexcept
		->	::std::uint64_t
		{	return
				::std::rotl
				(	(	m_vState[1]
					*	5u
					)
				,	7
				)
			*	9u
			;
		}

		auto constexpr
		(	operator++
		)	()	&
			noexcept
		->	Xoroshiro256StarStar&
		{
			::std::uint64_t const
				vTemp
			=	(	m_vState[1]
				<<	17u
				)
			;

			m_vState[2]
			^=	m_vState[0]
			;
			m_vState[3]
			^=	m_vState[1]
			;
			m_vState[1]
			^=	m_vState[2]
			;
			m_vState[0]
			^=	m_vState[3]
			;

			m_vState[2]
			^=	vTemp
			;

			m_vState[3]
			=	::std::rotl
				(	m_vState[3]
				,	45
				)
			;

			return
			*	this
			;
		}

		[[nodiscard("Prefer pre-increment when discarding the result")]]
		auto constexpr
		(	operator++
		)	(int)
			noexcept
		->	Xoroshiro256StarStar
		{
			auto const
				vOld
			=	*this
			;

			operator++
			();

			return
				vOld
			;
		}
	};
}
