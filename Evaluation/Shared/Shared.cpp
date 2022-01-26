export module Evaluation.Shared;

export import Meta.TypeInfo;
export import Std;
export import Meta.Integer;

export
{
	struct
		RGBAColor
	{
		std::uint8_t
			Red
		;
		std::uint8_t
			Green
		;
		std::uint8_t
			Blue
		;
		std::uint8_t
			Alpha
		;
	};

	using
		Float
	=	double
	;

	template
		<	typename
				t_tColoredObject
		,	std::size_t
				t_nSideCount
		,	std::size_t
				t_nColorCount
		>
	requires
		(	sizeof(t_tColoredObject)
		>=	t_nSideCount
		*	sizeof(Float)
		+	t_nColorCount
		*	sizeof(RGBAColor)
		)
	and	(	alignof(t_tColoredObject)
		>=	alignof(Float)
		)
	and	(	alignof(Float)
		>=	alignof(RGBAColor)
		)
	auto constexpr inline
		AdditionalSize
	=	(	sizeof(t_tColoredObject)
		-	t_nSideCount
		*	sizeof(Float)
		-	t_nColorCount
		*	sizeof(RGBAColor)
		)
	;


	template
		<	typename
				t_tColoredObject
		,	std::size_t
				t_nSideCount
		,	std::size_t
				t_nColorCount
		>
	auto constexpr inline
		SizeMinimal
	=	AdditionalSize
		<	t_tColoredObject
		,	t_nSideCount
		,	t_nColorCount
		>
	<	// no more than the alignment can be used as padding
		alignof(t_tColoredObject)
	;

	constexpr
	Float
		π
	=	std::numbers::pi_v
		<	Float
		>
	;

	constexpr
	Float
		InvSqrtπ
	=	std::numbers::inv_sqrtpi_v
		<	Float
		>
	;
	constexpr
	Float
		InvCbrtπ
	=	static_cast
		<	Float
		>(	0.6827840632552956814439217014811589478995301760733127593994140625L
		)
	;

	template
		<	Meta::SSize
				t_nNumerator
			=	1z
		,	Meta::SSize
				t_nDenominator
			=	1z
		>
	struct
		Fraction
	{
		constexpr
		auto
			operator()
			()	const
		->	Float
		{
			return
				static_cast<Float>(t_nNumerator)
			/	static_cast<Float>(t_nDenominator)
			;
		}

		constexpr
			operator
			Float
			()	const
		{
			return
				operator()
				()
			;
		}
	};

	template
		<	Meta::SSize
				t_nNumerator
			=	1z
		,	Meta::SSize
				t_nDenominator
			=	1z
		>
	struct
		πFraction
	{
		constexpr
		auto
			operator()
			()	const
		->	Float
		{
			return
				π
			*	static_cast<Float>(t_nNumerator)
			/	static_cast<Float>(t_nDenominator)
			;
		}

		constexpr
			operator
			Float
			()	const
		{
			return
				operator()
				()
			;
		}
	};


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
				{	(	m_vEngine
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
			{
				return
					m_nCurrent
				;
			}

			Iterator&
				operator++
				()
			{
					m_nCurrent
				=	m_vEngine
					()
				;
				++	m_nCounter
				;
				return
					*this
				;
			}

			friend
			bool
				operator==
				(	Iterator const
					&	i_rLeft
				,	Iterator const
					&	i_rRight
				)
			{
				return
					i_rLeft
					.	m_nCounter
				==	i_rRight
					.	m_nCounter
				;
			}
		};

		ResultType
			size
			()	const
		{
			return
				m_nIterations
			;
		}

		Iterator
			begin
			()	const
		{
			return
				Iterator
				{	m_nSeed
				}
			;
		}

		Iterator
			end
			()	const
		{
			return
				Iterator
				{	m_nSeed
				,	m_nIterations
				}
			;
		}
	};


	template
		<	typename
				t_tBody3D
		,	auto
				t_fMakeCube
		,	auto
				t_fMakeCuboid
		,	auto
				t_fMakePyramid
		,	auto
				t_fMakeSphere
		,	auto
				t_fMakeCylinder
		,	auto
				t_fMakeCone
		,	auto
				t_fMakeEllipsoid
		,	auto
				t_fMakeHead
		,	auto
				t_fComputeVolume
		>
	auto
		EvaluateRandomContainer
		(	PseudoRandomSequence const
			&	i_rRandom

		)
	{
		std::vector
		<	t_tBody3D
		>	vElements
		;

		vElements
		.	reserve
			(	i_rRandom
				.	size
					()
			)
		;

		for	(	auto
					nRandom
				:	i_rRandom
			)
		{
			switch
				(	nRandom
				%	8
				)
			{	case
					0
				:	vElements
					.	emplace_back
						(	t_fMakeCube
							()
						)
				;	break
				;

				case
					1
				:	vElements
					.	emplace_back
						(	t_fMakeCuboid
							()
						)
				;	break
				;

				case
					2
				:	vElements
					.	emplace_back
						(	t_fMakePyramid
							()
						)
				;	break
				;

				case
					3
				:	vElements
					.	emplace_back
						(	t_fMakeSphere
							()
						)
				;	break
				;

				case
					4
				:	vElements
					.	emplace_back
						(	t_fMakeCylinder
							()
						)
				;	break
				;

				case
					5
				:	vElements
					.	emplace_back
						(	t_fMakeCone
							()
						)
				;	break
				;

				case
					6
				:	vElements
					.	emplace_back
						(	t_fMakeEllipsoid
							()
						)
				;	break
				;

				case
					7
				:	vElements
					.	emplace_back
						(	t_fMakeHead
							()
						)
				;	break
				;
			}
		}

		Float
			vLoopSum
		{};
		for	(	auto const
				&	rBody
				:	vElements
			)
		{
				vLoopSum
			+=	t_fComputeVolume
				(	rBody
				)
			;
		}
		return
			vLoopSum
		;
	}

	template
		<	typename
				t_tBody
		>
	constexpr
	auto
		CopyConstruct
		()
	noexcept
	->	t_tBody
	{	return{};	}

	template
		<	typename
				t_tBody
		>
	constexpr
	auto
		InPlaceConstruct
		()
	noexcept
	->	std::in_place_type_t
		<	t_tBody
		>
	{	return
			std::in_place_type
			<	t_tBody
			>
		;
	}

	template
		<	typename
				t_tBody
		>
	constexpr
	auto
		TypeConstruct
		()
	noexcept
	->	Meta::TypeToken
		<	t_tBody
		>
	{	return{};	}

	template
		<	typename
				t_tBody3D
		,	auto
				t_fMakeCube
		,	auto
				t_fMakeCuboid
		,	auto
				t_fMakePyramid
		,	auto
				t_fMakeSphere
		,	auto
				t_fMakeCylinder
		,	auto
				t_fMakeCone
		,	auto
				t_fMakeEllipsoid
		,	auto
				t_fMakeHead
		,	auto
				t_fComputeVolume
		>
	inline
	auto
		MainTemplate
		(	int
				i_nArgCount
		,	char const
			*	i_aArgValue
			[]
		)
	->	int
	{
		Float
			TotalSum
		=	0
		;

		auto const
			vLoopIterations
		=	std::strtoull
			(	i_aArgValue
				[	i_nArgCount
				-	3
				]
			,	nullptr
			,	10
			)
		;
		auto const
			vRandomSeed
		=	std::strtoull
			(	i_aArgValue
				[	i_nArgCount
				-	2
				]
			,	nullptr
			,	10
			)
		;
		auto const
			vRandomSequenceLength
		=	std::strtoull
			(	i_aArgValue
				[	i_nArgCount
				-	1
				]
			,	nullptr
			,	10
			)
		;
		for (	auto _
				=	0ull
			; _ <  vLoopIterations
			; ++_
			)
		{
			TotalSum
			+=	EvaluateRandomContainer
				<	t_tBody3D
				,	t_fMakeCube
				,	t_fMakeCuboid
				,	t_fMakePyramid
				,	t_fMakeSphere
				,	t_fMakeCylinder
				,	t_fMakeCone
				,	t_fMakeEllipsoid
				,	t_fMakeHead
				,	t_fComputeVolume
				>(	PseudoRandomSequence
					{	vRandomSeed
					,	vRandomSequenceLength
					}
				)
			;
		}
		return
			TotalSum
		;
	}

}
