export module Meta.Random.Splitmix;

import Meta.Auto.Simd.UInt64;
import std;

using ::Meta::Auto::Var;
using ::Meta::Auto::Simd;

export namespace
	Meta::Random
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
	struct
		Splitmix64Base
	{
		using
			difference_type
		=	::std::ptrdiff_t
		;

		::std::uint64_t const static constexpr inline
			Increment
		=	0x9E37'79B9'7F4A'7C15uz
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	(	this auto
					i_vThis
			)
			noexcept
		->	decltype(i_vThis.m_vState)
		{
			auto
				vZ
			=	i_vThis
				.	m_vState
			;

			vZ
			=	(	vZ
				xor	(	vZ
					>>	30
					)
				)
			*	0xBF58'476D'1CE4'E5B9uz
			;

			vZ
			=	(	vZ
				xor	(	vZ
					>>	27
					)
				)
			*	0x94D0'49BB'1331'11EBuz
			;

			return
				vZ
			xor	(	vZ
				>>	31
				)
			;
		}

		auto constexpr inline
		(	operator++
		)	(	this auto
				&	i_rThis
			)
			noexcept
		->	decltype(i_rThis)
		{
			::std::uint64_t static constexpr
				vExtent
			=	sizeof(i_rThis.m_vState)
			/	sizeof(::std::uint64_t)
			;

				i_rThis
				.	m_vState
			+=	vExtent
			*	i_rThis
				.	Increment
			;
			return
				i_rThis
			;
		}

		[[nodiscard("Prefer pre-increment when discarding the result")]]
		auto constexpr inline
		(	operator++
		)	(	this auto
				&	i_rThis
			,	int
			)
			noexcept
		->	decltype(auto(i_rThis))
		{
			auto const
				vOld
			=	i_rThis
			;

			++	i_rThis
			;

			return
				vOld
			;
		}
	};

	template
		<	::std::size_t
				t_vExtent
		>
	requires
		(	t_vExtent
		>	0uz
		)
	struct
		Splitmix64
	:	Splitmix64Base
	{
		using
			value_type
		=	Simd
			<	::std::uint64_t
				[	t_vExtent
				]
			>
		;

		value_type
			m_vState
		;

		explicit(true) constexpr inline
		(	Splitmix64
		)	(	::std::uint64_t
					i_vSeed
			)
			noexcept
		:	m_vState
			{	[	i_vSeed
				]	<	::std::size_t
						...	t_tpIndex
					>(	::std::index_sequence
						<	t_tpIndex
							...
						>
					)
				{	return
					value_type
					{	.	m_vRaw
						{	(	i_vSeed
							+	t_tpIndex
							*	Splitmix64Base
								::	Increment
							)
							...
						}
					};
				}(	::std::make_index_sequence
					<	t_vExtent
					>{}
				)
			}
		{}
	};

	template
		<>
	struct
		Splitmix64
		<	1uz
		>
	:	Splitmix64Base
	{
		using
			value_type
		=	::std::uint64_t
		;

		value_type
			m_vState
		;

		explicit(true) constexpr inline
		(	Splitmix64
		)	(	::std::uint64_t
					i_vSeed
			)
			noexcept
		:	m_vState
			{	i_vSeed
			}
		{}
	};
}
