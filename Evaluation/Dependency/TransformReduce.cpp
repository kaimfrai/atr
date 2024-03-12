export module Evaluation.Dependency.TransformReduce;

import Std;

template
	<	typename
			t_tValue
	>
struct
	ReductionOutputProxy
{
	t_tValue
	*	Buffer
	;
	int
		SumIndex
	;
	int
		WriteIndex
	;

	auto constexpr inline
	(	operator=
	)	(	this auto
			&&	i_rThis
		,	t_tValue
				i_vNewValue
		)
		noexcept
	->	decltype(i_rThis)
	{
		auto const
			vWriteIndex
		=	i_rThis
			.	WriteIndex
		;

		for	(	auto
					vSumIndex
				=	i_rThis
					.	SumIndex
			;		vSumIndex
				<=	vWriteIndex
			;	++	vSumIndex
			)
		{
				i_vNewValue
			+=	i_rThis
				.	Buffer
					[	vSumIndex
					]
			;
		}

			i_rThis
			.	Buffer
				[	vWriteIndex
				]
		=	i_vNewValue
		;

		return
			i_rThis
		;
	}
};

template
	<	typename
			t_tValue
	>
struct
	ReductionOutputIterator
{
	using
		difference_type
	=	int
	;

	t_tValue
	*	Buffer
	;

	unsigned
		Iteration
	=	1u
	;
	int
		SumIndex
	=	1
	;
	int
		WriteIndex
	=	0
	;

	[[nodiscard]]
	auto constexpr inline
	(	operator*
	)	()	const
		noexcept
	->	ReductionOutputProxy<t_tValue>
	{	return
		{	Buffer
		,	SumIndex
		,	WriteIndex
		};
	}

	auto constexpr inline
	(	operator++
	)	()	&
		noexcept
	->	ReductionOutputIterator&
	{
		++	Iteration
		;
		[[assume(Iteration > 0u)]];

			SumIndex
		=	WriteIndex
		;
			WriteIndex
		=	static_cast<int>
			(	::std::bit_width
				(	Iteration
				)
			)
		-	::std::popcount
			(	Iteration
			)
		;
		return
		*	this
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator++
	)	(	int
		)	&
		noexcept
	->	ReductionOutputIterator
	{
		auto
			vCopy
		=	*	this
		;
		++	*	this
		;
		return
			vCopy
		;
	}

	auto constexpr inline
	(	PrepareNextIteration
	)	()	const
		noexcept
	->	void
	{
		// Next iteration will be at least 1 longer
			Buffer
			[	SumIndex
			+	1
			]
		=	Buffer
			[	SumIndex
			]
		;
		::std::fill_n
		(	Buffer
		,		SumIndex
			+	1
		,	t_tValue
			{}
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	GetResult
	)	()	const
		noexcept
	->	t_tValue
	{	return
			Buffer
			[	SumIndex
			]
		;
	}
};

template
	<	typename
			t_tValue
	>
struct
	ReductionBuffer
{
	::std::size_t static constexpr inline
		BufferSize
	=	32uz
	;

	t_tValue
		Buffer
		[	BufferSize
		]
	;

	[[nodiscard]]
	auto constexpr inline
	(	begin
	)	()	&
		noexcept
	->	ReductionOutputIterator<t_tValue>
	{	return
		{	+	Buffer
		};
	}

	static_assert
	(	::std::output_iterator
		<	ReductionOutputIterator
			<	t_tValue
			>
		,	t_tValue
		>
	,	"Expected a valid output iterator"
	);
};

export namespace
	Bodies3D
{
	[[nodiscard]]
	auto constexpr inline
	(	TransformReduce
	)	(	::std::random_access_iterator auto
				i_aBegin
		,	::std::random_access_iterator auto
				i_aEnd
		,	auto
				i_fTransform
		)
		noexcept
	->	auto
	{
		using
			tValue
		=	decltype
			(	i_fTransform
				(	*	i_aBegin
				)
			)
		;
		auto
			vSize
		=	static_cast<::std::uint32_t>
			(	i_aEnd
			-	i_aBegin
			)
		;
		if	(	vSize
			<=	0u
			)
		{	return
			tValue
			{};
		}

		ReductionBuffer<tValue>
			vBuffer
		{};

		for	(;;)
		{
			auto const
				vLowestBit
			=	compl
				(	vSize
				-	1u
				)
			bitand
				vSize
			;

			auto const
				aLowestBitEnd
			=	i_aBegin
			+	vLowestBit
			;

			auto const
				aIterationEnd
			=	::std::transform
				(	i_aBegin
				,	aLowestBitEnd
				,	vBuffer
					.	begin
						()
				,	i_fTransform
				)
			;
				vSize
			-=	vLowestBit
			;

			if	(	vSize
				>	0u
				)
			{	aIterationEnd
				.	PrepareNextIteration
					()
				;
					i_aBegin
				=	aLowestBitEnd
				;
			}
			else
			{	return
					aIterationEnd
					.	GetResult
						()
				;
			}
		}
	}
}
