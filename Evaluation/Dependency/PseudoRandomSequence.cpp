export module Evaluation.Dependency.PseudoRandomSequence;

import Meta.Auto.Simd.Cast;
import Meta.Auto.Simd.Float;
import Meta.Auto.Simd.UInt8;
import Meta.IndexPack;
import Meta.Random.Splitmix;
import Meta.Random.Xoroshiro;

import std;

using ::Meta::Auto::Simd;
using ::Meta::Auto::SimdCast;
using ::Meta::IndexPack;
using ::Meta::Random::Splitmix64;
using ::Meta::Random::Xoroshiro256StarStar;


[[nodiscard]]
auto constexpr inline
(	ParseInt
)	(	char const
		*	i_aString
	)
	noexcept
->	::std::size_t
{
	for	(	::std::size_t
				vResult
			{}
		;
		;	vResult
			*=	10uz
		)
	{
		vResult
		+=	static_cast<::std::size_t>
			(	*i_aString
			-	'0'
			)
		;

		++	i_aString
		;

		if	(	*i_aString
			==	'\0'
			)
		{	return
				vResult
			;
		}
	}
}

export
{
	auto constexpr inline Parallel = 16uz;
	auto constexpr inline RNG = Parallel / sizeof(std::uint64_t);

	struct
		CountedSentinel
	{
		::std::size_t
			EndCount
		;
	};

	auto constexpr inline
		GeneratorCount
	=	20uz
	;

	struct
		SimdGeneratedNumbers
	{
		Simd<::std::uint8_t[Parallel]>
			m_vFirst
		;

		Simd<float[Parallel]>
			m_vNumber
			[	GeneratorCount
			-	1uz
			]
		;

		template
			<	::std::size_t
					t_vIndex
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	get
		)	(	SimdGeneratedNumbers const
				&	i_rGeneratedNumbers
			)
			noexcept
		{
			if	constexpr
				(	t_vIndex
				==	0uz
				)
			{	return
					i_rGeneratedNumbers
					.	m_vFirst
				;
			}
			else
			{	return
					i_rGeneratedNumbers
					.	m_vNumber
						[	t_vIndex
						-	1uz
						]
				;
			}
		}
	};

	struct
		GeneratedNumbers
	{
		::std::uint8_t
			m_vNumber
			[	GeneratorCount
			]
		;

		template
			<	::std::size_t
					t_vIndex
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	get
		)	(	GeneratedNumbers const
				&	i_rGeneratedNumbers
			)
			noexcept
		->	auto
		{
			if	constexpr
				(	t_vIndex
				==	0uz
				)
			{	return
					i_rGeneratedNumbers
					.	m_vNumber
						[	t_vIndex
						]
				;
			}
			else
			{	return
				static_cast<float>
				(	i_rGeneratedNumbers
					.	m_vNumber
						[	t_vIndex
						]
				);
			}
		}
	};

	template
		<	::std::size_t
				t_vGeneratorCount
		>
	struct
		RawGeneratedNumbers
	{
		Simd<::std::uint8_t[Parallel]>
			m_vNumber
			[	t_vGeneratorCount
			]
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			GeneratedNumbers
		)	()	const
			noexcept
		{
			auto const
			&	[	...
					rNumber
				]
			=	m_vNumber
			;
			return
			{	rNumber
				[	0
				]
				...
			};
		}

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			SimdGeneratedNumbers
		)	()	const
			noexcept
		{
			auto const
			&	[	rFirst
				,	...
					rNumber
				]
			=	m_vNumber
			;
			return
			{	rFirst
			,	SimdCast<float>
				(	SimdCast<::std::uint32_t>
					(	rNumber
					)
				)
				...
			};
		}


		auto constexpr inline
		(	ByteShiftRight
		)	()	&
			noexcept
		->	RawGeneratedNumbers
			&
		{
			auto
			&	[	...
					rNumber
				]
			=	m_vNumber
			;
			(	...
			,	void
				(	rNumber
					.	template
						ByteShiftRight<1>
						()
				)
			);

			return
			*	this
			;
		}
	};

	template
		<	::std::size_t
				t_vGeneratorCount
		>
	struct
		RandomGenerators
	{
		Xoroshiro256StarStar<RNG>
			m_vRandom
			[	t_vGeneratorCount
			]
		;

		template
			<	::std::size_t
				...	t_vpIndex
			>
		requires
			(	sizeof...
				(	t_vpIndex
				)
			==		t_vGeneratorCount
				-	1uz
			)
		explicit(true) constexpr inline
		(	RandomGenerators
		)	(	Splitmix64<RNG>
					i_vSeed
			,	::std::index_sequence
				<	t_vpIndex
					...
				>
			)
			noexcept
		:	m_vRandom
			{	Xoroshiro256StarStar<RNG>
				{	i_vSeed
				}
			,	Jump
				(	m_vRandom
					[	t_vpIndex
					]
				)
				...
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	RawGeneratedNumbers
			<	t_vGeneratorCount
			>
		{
			auto const
			&	[	...
					rRandom
				]
			=	m_vRandom
			;

			return
			{	::std::bit_cast<Simd<::std::uint8_t[Parallel]>>
				(	*
					rRandom
				)
				...
			};
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	RandomGenerators&
		{
			auto
			&	[	...
					rRandom
				]
			=	m_vRandom
			;

			(	...
			,	++	rRandom
			);

			return
			*	this
			;
		}
	};

	class
		CountedXoroshiro
	{
		RandomGenerators<GeneratorCount>
			m_vRandom
		;
		::std::size_t
			m_vCounter
		=	0
		;
		RawGeneratedNumbers<GeneratorCount>
			m_vGeneratedNumbers
		;

	public:
		using
			difference_type
		=	int
		;

		using
			value_type
		=	::std::uint64_t
		;

		explicit(false) constexpr inline
		(	CountedXoroshiro
		)	(	::std::uint64_t
					i_vSeed
			)
			noexcept
		:	m_vRandom
			{	Splitmix64<RNG>
				{	i_vSeed
				}
			,	::std::make_index_sequence
				<	GeneratorCount
				-	1uz
				>{}
			}
		,	m_vGeneratedNumbers
			{	*	m_vRandom
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	GeneratedNumbers
		{	return
			static_cast<GeneratedNumbers>
			(	m_vGeneratedNumbers
			);
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	CountedXoroshiro&
		{
			++	m_vCounter
			;
			if	(	(	m_vCounter
					%	Parallel
					)
				==	0
				)
			{	++	m_vRandom
				;
				m_vGeneratedNumbers
				=	*	m_vRandom
				;
			}
			else
			{	m_vGeneratedNumbers
				.	ByteShiftRight
					()
				;
			}

			return
			*	this
			;
		}

		[[nodiscard("Prefer pre-increment when discarding the result")]]
		auto constexpr inline
		(	operator++
		)	(int)
			noexcept
		->	CountedXoroshiro
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
		(	operator==
		)	(	CountedXoroshiro const
				&	i_rIterator
			,	CountedSentinel
					i_vSentinel
			)
			noexcept
		->	bool
		{	return
				i_rIterator
				.	m_vCounter
			==	i_vSentinel
				.	EndCount
			;
		}
	};

	class
		SimdCountedXoroshiro
	{
		RandomGenerators<GeneratorCount>
			m_vRandom
		;
		::std::size_t
			m_vCounter
		=	0
		;

	public:
		explicit(false) constexpr inline
		(	SimdCountedXoroshiro
		)	(	::std::uint64_t
					i_vSeed
			)
			noexcept
		:	m_vRandom
			{	Splitmix64<RNG>
				{	i_vSeed
				}
			,	::std::make_index_sequence
				<	GeneratorCount
				-	1uz
				>{}
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	SimdGeneratedNumbers
		{	return
			static_cast<SimdGeneratedNumbers>
			(	*	m_vRandom
			);
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	SimdCountedXoroshiro&
		{
			m_vCounter
			+=	Parallel
			;
			++	m_vRandom
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
		->	SimdCountedXoroshiro
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
		(	operator==
		)	(	SimdCountedXoroshiro const
				&	i_rIterator
			,	CountedSentinel
					i_vSentinel
			)
			noexcept
		->	bool
		{	return
				i_rIterator
				.	m_vCounter
			==	i_vSentinel
				.	EndCount
			;
		}
	};

	struct
		SimdPseudoRandomSequence
	{
		::std::size_t
			m_vSeed
		;
		::std::size_t
			m_vIterations
		;

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const
			noexcept
		->	SimdCountedXoroshiro
		{	return
			SimdCountedXoroshiro
			{	static_cast<::std::uint64_t>
				(	m_vSeed
				)
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const
			noexcept
		->	CountedSentinel
		{	return
			CountedSentinel
			{	m_vIterations
			};
		}
	};

	class
		PseudoRandomSequence
	{
		::std::size_t
			m_vSeed
		;

		::std::size_t
			m_vIterations
		;

	public:
		explicit(true) constexpr inline
		(	PseudoRandomSequence
		)	(	char const
				*	i_aSeed
			,	char const
				*	i_aIterations
			)
		:	m_vSeed
			{	::ParseInt
				(	i_aSeed
				)
			}
		,	m_vIterations
			{	::ParseInt
				(	i_aIterations
				)
			*	Parallel
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	Seed
		)	()	const
			noexcept
		->	::std::size_t
		{	return
				m_vSeed
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	size
		)	()	const
			noexcept
		->	::std::size_t
		{	return
				m_vIterations
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	SimdView
		)	()	const
			noexcept
		->	SimdPseudoRandomSequence
		{	return
			{	m_vSeed
			,	m_vIterations
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const
			noexcept
		->	CountedXoroshiro
		{	return
			CountedXoroshiro
			{	m_vSeed
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const
			noexcept
		->	CountedSentinel
		{	return
			CountedSentinel
			{	m_vIterations
			};
		}
	};

	template
		<>
	struct
		::std::tuple_element
		<	0uz
		,	GeneratedNumbers
		>
	:	::std::type_identity
		<	::std::uint8_t
		>
	{};

	template
		<	::std::size_t
				t_vIndex
		>
	struct
		::std::tuple_element
		<	t_vIndex
		,	GeneratedNumbers
		>
	:	::std::type_identity
		<	float
		>
	{};

	template
		<>
	struct
		::std::tuple_size
		<	GeneratedNumbers
		>
	:	::std::integral_constant
		<	::std::size_t
		,	GeneratorCount
		>
	{};

	template
		<	::std::size_t
				t_vIndex
		>
	struct
		::std::tuple_element
		<	t_vIndex
		,	SimdGeneratedNumbers
		>
	:	::std::type_identity
		<	Simd<float[Parallel]>
		>
	{};

	template
		<>
	struct
		::std::tuple_element
		<	0uz
		,	SimdGeneratedNumbers
		>
	:	::std::type_identity
		<	Simd<::std::uint8_t[Parallel]>
		>
	{};

	template
		<>
	struct
		::std::tuple_size
		<	SimdGeneratedNumbers
		>
	:	::std::integral_constant
		<	::std::size_t
		,	GeneratorCount
		>
	{};
}
