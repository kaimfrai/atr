export module Evaluation.Dependency.TransformReduce;

import Meta.Auto.Simd.Tag;
import Std;

using ::Meta::Simd;

[[nodiscard]]
auto constexpr inline
(	SimdReduce
)	(	auto
			i_aBegin
	,	auto
			i_aEnd
	)
	noexcept
->	auto
{
	using
		tSimdValue
	=	typename
		decltype(i_aBegin)
		::	value_type
	;
	tSimdValue
		vBuffer
		[	33
		-	::std::bit_width
			(	8uz
			)
		]
	;

	// UB for empty sequence
	// UB for size >= 2^31
	// UB for size not divisible by simd size

	int
		vIndex
	=	0
	;
	unsigned int
		vIteration
	=	1u
	;
	int
		vLimit
	=	::std::popcount
		(	vIteration
		)
	;

	for	(	auto
				aCurrent
			=	i_aBegin
		;		aCurrent
			!=	i_aEnd
		;	++	aCurrent
		,	++	vIteration
		,		vIndex
			=	vLimit
		,		vLimit
			=	::std::popcount
				(	vIteration
				)
		)
	{
			vBuffer
			[	vIndex
			]
		=	*
			aCurrent
		;

		for	(
			;		vIndex
				>=	vLimit
			;	--	vIndex
			)
		{
				vBuffer
				[		vIndex
					-	1
				]
			+=	vBuffer
				[	vIndex
				]
			;
		}
	}

	for	(	--	vIndex
		;		vIndex
			>=	1
		;	--	vIndex
		)
	{
			vBuffer
			[		vIndex
				-	1
			]
		+=	vBuffer
			[	vIndex
			]
		;
	}

	return
		reduce
		(	vBuffer
			[	0
			]
		)
	;
}

template
	<	::std::random_access_iterator
			t_tIterator
	,	typename
			t_tTransform
	,	typename
			t_tElement
		=	decltype
			(	::std::declval<t_tTransform>()
				(	*	::std::declval<t_tIterator>()
				)
			)
	>
struct
	SimdTransformIterator
{
	using
		value_type
	=	Simd
		<	t_tElement
			[	8uz
			]
		>
	;

	t_tIterator
		m_aCurrent
	;
	[[no_unique_address]]
	t_tTransform
		m_fTransform
	;

	[[nodiscard]]
	auto constexpr inline
	(	operator*
	)	()	const
		noexcept
	->	value_type
	{	return
		[	this
		]	<	::std::size_t
				...	t_vpIndex
			>(	::std::index_sequence
				<	t_vpIndex
					...
				>
			)
		{	t_tElement
				vElements
				[]
			{	m_fTransform
				(	m_aCurrent
					[	t_vpIndex
					]
				)
				...
			};
			return
			::std::bit_cast<value_type>
			(	vElements
			);
		}(	::std::make_index_sequence<8uz>
			{}
		);
	}

	auto constexpr inline
	(	operator++
	)	()	&
		noexcept
	->	SimdTransformIterator&
	{		m_aCurrent
		+=	8uz
		;
		return
		*	this
		;
	}

	[[nodiscard]]
	auto friend constexpr inline
	(	operator==
	)	(	SimdTransformIterator
				i_aIterator
		,	auto
				i_aSentinel
		)
		noexcept
	->	bool
	{	return
			i_aIterator
			.	m_aCurrent
		==	i_aSentinel
		;
	}
};

template
	<	::std::random_access_iterator
			t_tIterator
	,	typename
			t_tTransform
	,	typename
			t_tElement
	>
struct
	SimdTransformIterator
	<	t_tIterator
	,	t_tTransform
	,	Simd
		<	t_tElement
			[	8uz
			]
		>
	>
{
	using
		value_type
	=	Simd
		<	t_tElement
			[	8uz
			]
		>
	;

	t_tIterator
		m_aCurrent
	;
	[[no_unique_address]]
	t_tTransform
		m_fTransform
	;

	[[nodiscard]]
	auto constexpr inline
	(	operator*
	)	()	const
		noexcept
	->	value_type
	{	return
		m_fTransform
		(	*	m_aCurrent
		);
	}

	auto constexpr inline
	(	operator++
	)	()	&
		noexcept
	->	SimdTransformIterator&
	{
		++	m_aCurrent
		;
		return
		*	this
		;
	}

	[[nodiscard]]
	auto friend constexpr inline
	(	operator==
	)	(	SimdTransformIterator
				i_aIterator
		,	auto
				i_aSentinel
		)
		noexcept
	->	bool
	{	return
			i_aIterator
			.	m_aCurrent
		==	i_aSentinel
		;
	}
};

export namespace
	Bodies3D
{
	[[nodiscard]]
	auto constexpr inline
	(	TransformReduce
	)	(	auto
				i_aBegin
		,	auto
				i_aEnd
		,	auto
				i_fTransform
		)
		noexcept
	->	auto
	{	return
		::SimdReduce
		(	::SimdTransformIterator
			{	i_aBegin
			,	i_fTransform
			}
		,	i_aEnd
		);
	}
}
