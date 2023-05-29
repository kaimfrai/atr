export module Evaluation.Dependency.PseudoRandomSequence;

import Meta.Math.Random;
import Std;

using ::Meta::Math::Splitmix64;
using ::Meta::Math::Xoroshiro256StarStar;

export
{
	struct
		CountedSentinel
	{
		::std::ptrdiff_t
			EndCount
		;
	};

	class
		CountedXoroshiro
	{
		Xoroshiro256StarStar
			m_vRandom
		;
		::std::ptrdiff_t
			m_vCounter
		=	0z
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

		explicit(false) constexpr
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
		auto constexpr
		(	operator*
		)	()	const
			noexcept
		->	::std::uint64_t
		{	return
			*	m_vRandom
			;
		}

		auto constexpr
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
		auto constexpr
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
		auto friend constexpr
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
		::std::uint64_t
			m_vSeed
		;

		::std::ptrdiff_t
			m_vIterations
		;

	public:
		explicit(true) constexpr
		(	PseudoRandomSequence
		)	(	::std::uint64_t
					i_vSeed
			,	::std::ptrdiff_t
					i_vIterations
			)
		:	m_vSeed
			{	i_vSeed
			}
		,	m_vIterations
			{	i_vIterations
			}
		{}

		[[nodiscard]]
		auto constexpr
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
		auto constexpr
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
		auto constexpr
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
