export module Evaluation.Shared.PseudoRandomSequence;

import Std;

export
{
	class
		PseudoRandomSequence
	{
		using
			EngineType
		=	std::mt19937_64
		;

		using
			ResultType
		=	typename
			EngineType
		::	result_type
		;

		ResultType
			m_nSeed
		;

		ResultType
			m_nIterations
		;

	public:
		explicit
			PseudoRandomSequence
			(	ResultType
					i_vSeed
			,	ResultType
					i_vIterations
			)
		:	m_nSeed
			{	i_vSeed
			}
		,	m_nIterations
			{	i_vIterations
			}
		{}

		class
			Iterator
		{
			EngineType
				m_vEngine
			;

			ResultType
				m_nCurrent
			;

			ResultType
				m_nCounter
			;

		public:
			explicit
				Iterator
				(	ResultType
						i_nSeed
				,	ResultType
						i_nIterationCounter
					=	0
				)
			:	m_vEngine
				{	i_nSeed
				}
			,	m_nCurrent
				{	(	(void)m_vEngine
						.	discard
							(	i_nIterationCounter
							)
					,	m_vEngine
						()
					)
				}
			,	m_nCounter
				{	i_nIterationCounter
				}
			{}

			ResultType
				operator*
				()	const
			{	return
					m_nCurrent
				;
			}

			Iterator&
				operator++
				()
			{
				(	m_nCurrent
				=	m_vEngine
					()
				);
				++	m_nCounter
				;
				return
					*this
				;
			}

			friend auto inline
				operator==
				(	Iterator const
					&	i_rLeft
				,	Iterator const
					&	i_rRight
				)
			->	bool
			{	return
				(	i_rLeft
					.	m_nCounter
				==	i_rRight
					.	m_nCounter
				);
			}
		};

		ResultType
			size
			()	const
		{	return
				m_nIterations
			;
		}

		Iterator
			begin
			()	const
		{	return
			Iterator
			{	m_nSeed
			};
		}

		Iterator
			end
			()	const
		{	return
			Iterator
			{	m_nSeed
			,	m_nIterations
			};
		}
	};
}
