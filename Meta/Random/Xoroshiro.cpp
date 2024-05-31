export module Meta.Random.Xoroshiro;

import Meta.Random.Splitmix;

import Std;

export namespace
	Meta::Random
{
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
	template
		<	::std::size_t
				t_vExtent
		>
	struct
		Xoroshiro256StarStar
	{
		using
			difference_type
		=	::std::ptrdiff_t
		;

		using
			value_type
		=	typename
			Splitmix64<t_vExtent>
			::	value_type
		;

		value_type
			m_vState
			[	4
			]
		{};

		explicit(false) constexpr inline
		(	Xoroshiro256StarStar
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Xoroshiro256StarStar
		)	(	Splitmix64<t_vExtent>
					i_vSeed
			)
			noexcept
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
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	value_type
		{
			using ::std::rotl;
			return
				rotl
				(	(	m_vState[1]
					*	5uz
					)
				,	7
				)
			*	9uz
			;
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	Xoroshiro256StarStar&
		{
			value_type const
				vTemp
			=	(	m_vState[1]
				<<	17
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

			using ::std::rotl;
				m_vState[3]
			=	rotl
				(	m_vState[3]
				,	45
				)
			;

			return
			*	this
			;
		}

		[[nodiscard("Prefer pre-increment when discarding the result")]]
		auto constexpr inline
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

		[[nodiscard]]
		auto friend constexpr inline
		(	Jump
		)	(	Xoroshiro256StarStar
					i_vBase
			)
			noexcept
		->	Xoroshiro256StarStar
		{
			Xoroshiro256StarStar
				vResult
			{};

			for	(	auto
						vJump
				:	{	0x180E'C6D3'3CFD'0ABAuz
					,	0xD5A6'1266'F0C9'392Cuz
					,	0xA958'2618'E03F'C9AAuz
					,	0x39AB'DC45'29B1'661Cuz
					}
				)
			{
				for	(	int
							vBit
						=	0
					;		vBit
						<	64
					; 	++	vBit
					)
				{
					if	(	vJump
						&	(	1uz
							<<	vBit
							)
						)
					{
							vResult
							.	m_vState[0]
						^=	i_vBase
							.	m_vState[0]
						;
							vResult
							.	m_vState[1]
						^=	i_vBase
							.	m_vState[1]
						;
							vResult
							.	m_vState[2]
						^=	i_vBase
							.	m_vState[2]
						;
							vResult
							.	m_vState[3]
						^=	i_vBase
							.	m_vState[3]
						;
					}

					++	i_vBase
					;
				}
			}

			return
				vResult
			;
		}
	};
}
