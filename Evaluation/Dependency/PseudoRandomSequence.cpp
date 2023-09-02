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

	class
		CountedXoroshiro
	{
		Xoroshiro256StarStar
			m_vRandom
		;
		int
			m_vCounter
		=	0
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
		:	m_vRandom
			{	Splitmix64
				{	i_vSeed
				}
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	::std::uint64_t
		{	return
			*	m_vRandom
			;
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	CountedXoroshiro&
		{
			++	m_vRandom
			;
			++	m_vCounter
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
}
