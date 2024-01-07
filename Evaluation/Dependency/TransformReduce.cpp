export module Evaluation.Dependency.TransformReduce;

import Std;

template
	<	typename
			t_tSimdValue
	>
[[nodiscard]]
auto constexpr inline
(	SimdReduce
)	(	auto
			i_aBegin
	,	auto
			i_aEnd
	)
	noexcept
->	t_tSimdValue::value_type
{
	t_tSimdValue
		vBuffer
		[	33
		-	::std::bit_width
			(	t_tSimdValue
				::	size
					()
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
	<	::std::input_iterator
			t_tIterator
	,	typename
			t_tTransform
	>
struct
	TransformIterator
{
	using
		value_type
	=	decltype
		(	::std::declval<t_tTransform>()
			(	*
				::std::declval<t_tIterator>()
			)
		)
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
			(	*
				m_aCurrent
			)
		;
	}

	auto constexpr inline
	(	operator++
	)	()	&
		noexcept
	->	TransformIterator&
	{
		++	m_aCurrent
		;
		return
			*this
		;
	}

	[[nodiscard]]
	auto friend constexpr inline
	(	operator==
	)	(	TransformIterator
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
	>
struct
	SimdTransformIterator
{
	using
		value_type
	=	::std::experimental::native_simd
		<	decltype
			(	::std::declval<t_tTransform>()
				(	*
					::std::declval<t_tIterator>()
				)
			)
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
		value_type
		{	[	this
			]	(	auto
						t_vIndex
				)
			{	return
					m_fTransform
					(	m_aCurrent
						[	t_vIndex
						]
					)
				;
			}
		};
	}

	auto constexpr inline
	(	operator++
	)	()	&
		noexcept
	->	SimdTransformIterator&
	{		m_aCurrent
		+=	value_type
			::	size
				()
		;
		return
			*this
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
	{
		using
			value_type
		=	decltype
			(	i_fTransform
				(	*
					i_aBegin
				)
			)
		;

		if	constexpr
			(	::std::experimental::is_simd_v
				<	value_type
				>
			)
		{	return
				::SimdReduce
				<	value_type
				>(	::TransformIterator
					{	i_aBegin
					,	i_fTransform
					}
				,	i_aEnd
				)
			;
		}
		else
		{	return
				::SimdReduce
				<	::std::experimental::native_simd
					<	value_type
					>
				>(	::SimdTransformIterator
					{	i_aBegin
					,	i_fTransform
					}
				,	i_aEnd
				)
			;
		}
	}
}
