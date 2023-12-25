export module Evaluation.Dependency.PseudoRandomSequence;

import Meta.Math.Random;
import Std;

using ::Meta::Math::Splitmix64;
using ::Meta::Math::Xoroshiro256StarStar;

[[nodiscard]]
auto constexpr inline
(	ParseInt
)	(	char const
		*	i_aString
	)
	noexcept
->	int
{
	for	(	int
				vResult
			{}
		;
		;	vResult
			*=	10
		)
	{
		vResult
		+=	(	*i_aString
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
	struct
		CountedSentinel
	{
		int
			EndCount
		;
	};

	template
		<	typename
				t_tNumber
		,	::std::size_t
				t_vCount
		>
	struct
		GeneratedNumbers
	{
		t_tNumber
			m_vNumber
			[	t_vCount
			]
		;

		template
			<	typename
					t_tOtherNumber
			>
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			GeneratedNumbers
			<	t_tOtherNumber
			,	t_vCount
			>
		)	()	const
			noexcept
		{	return
			[	this
			]	<	::std::size_t
					...	t_vpIndex
				>(	::std::index_sequence
					<	t_vpIndex
						...
					>
				)
			->	GeneratedNumbers
				<	t_tOtherNumber
				,	t_vCount
				>
			{	return
				{	static_cast<t_tOtherNumber>
					(	m_vNumber
						[	t_vpIndex
						]
					)
					...
				};
			}(	::std::make_index_sequence
				<	t_vCount
				>{}
			);
		}

		auto constexpr inline
		(	operator>>=
		)	(	int
					i_vShift
			)	&
			noexcept
		{
			[	this
			,	i_vShift
			]	<	::std::size_t
					...	t_vpIndex
				>(	::std::index_sequence
					<	t_vpIndex
						...
					>
				)
			{	(	...
				,	void
					(	m_vNumber
						[	t_vpIndex
						]
						>>=	i_vShift
					)
				);
			}(	::std::make_index_sequence
				<	t_vCount
				>{}
			);

			return
			*	this
			;
		}

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
		->	t_tNumber
		{	return
				i_rGeneratedNumbers
				.	m_vNumber
					[	t_vIndex
					]
			;
		}
	};

	struct
		RandomGenerators
	{
		auto static constexpr inline
			GeneratorCount
		=	20uz
		;

		Xoroshiro256StarStar
			m_vRandom
			[	GeneratorCount
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
			==		GeneratorCount
				-	1uz
			)
		explicit(true) constexpr inline
		(	RandomGenerators
		)	(	Splitmix64
					i_vSeed
			,	::std::index_sequence
				<	t_vpIndex
					...
				>
			)
			noexcept
		:	m_vRandom
			{	Xoroshiro256StarStar
				{	Splitmix64
					{	i_vSeed
					}
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
		->	GeneratedNumbers<::std::uint64_t, GeneratorCount>
		{	return
			[	this
			]	<	::std::size_t
					...	t_vpIndex
				>(	::std::index_sequence
					<	t_vpIndex
						...
					>
				)
			->	GeneratedNumbers<::std::uint64_t, GeneratorCount>
			{	return
				{	*	m_vRandom
						[	t_vpIndex
						]
					...
				};
			}(	::std::make_index_sequence<GeneratorCount>
				{}
			);
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	RandomGenerators&
		{
			[	this
			]	<	::std::size_t
					...	t_vpIndex
				>(	::std::index_sequence
					<	t_vpIndex
						...
					>
				)
			{	(	...
				,	++	m_vRandom
						[	t_vpIndex
						]
				);
			}(	::std::make_index_sequence<GeneratorCount>
				{}
			);

			return
			*	this
			;
		}
	};

	class
		CountedXoroshiro
	{
		RandomGenerators
			m_vRandom
		;
		int
			m_vCounter
		=	0
		;
		GeneratedNumbers<::std::uint64_t, RandomGenerators::GeneratorCount>
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
			{	Splitmix64
				{	i_vSeed
				}
			,	::std::make_index_sequence
				<	RandomGenerators::GeneratorCount
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
		->	GeneratedNumbers<unsigned char, RandomGenerators::GeneratorCount>
		{	return
			static_cast<GeneratedNumbers<unsigned char, RandomGenerators::GeneratorCount>>
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
					%	8
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
				>>=	8
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
		PseudoRandomSequence
	{
		int
			m_vSeed
		;

		int
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
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	Seed
		)	()	const
			noexcept
		->	::std::size_t
		{	return
			static_cast<::std::size_t>
			(	m_vSeed
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	size
		)	()	const
			noexcept
		->	::std::size_t
		{	return
			static_cast<::std::size_t>
			(	m_vIterations
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const
			noexcept
		->	CountedXoroshiro
		{	return
			CountedXoroshiro
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

	template
		<	::std::size_t
				t_vIndex
		,	typename
				t_tNumber
		,	::std::size_t
				t_vCount
		>
	struct
		::std::tuple_element
		<	t_vIndex
		,	GeneratedNumbers
			<	t_tNumber
			,	t_vCount
			>
		>
	:	::std::type_identity
		<	t_tNumber
		>
	{};

	template
		<	typename
				t_tNumber
		,	::std::size_t
				t_vCount
		>
	struct
		::std::tuple_size
		<	GeneratedNumbers
			<	t_tNumber
			,	t_vCount
			>
		>
	:	::std::integral_constant
		<	::std::size_t
		,	t_vCount
		>
	{};
}
