export module Meta.Auto.Simd.Tag;

export import Meta.Auto.Var;
import Meta.IndexPack;
import Meta.Size;
import std;

using ::Meta::IndexPack;

export namespace
	Meta::Auto
{
	template
		<	typename
				t_tElement
		,	USize
				t_vVectorSize
		>
	using
		vec
		[[clang::ext_vector_type(t_vVectorSize)]]
	=	t_tElement
	;

	struct
		SimdTag
	{};

	template
		<	typename
				t_tElement
		>
	using
		Simd
	=	Var
		<	t_tElement
		,	SimdTag
		>
	;

	struct
		MaskedTag
	{};

	template
		<	typename
				t_tElement
		>
	using
		MaskedSimd
	=	Var
		<	t_tElement
		,	SimdTag
		,	MaskedTag
		>
	;

	template
		<	typename
				t_tElement
		>
	[[nodiscard]]
	auto constexpr inline
	(	Unmask
	)	(	MaskedSimd<t_tElement>
				i_vMasked
		)
		noexcept
	->	Simd<t_tElement>
	{	return
		{	.	m_vRaw
			=	i_vMasked
				.	m_vRaw
		};
	}

	template
		<	USize
				t_vSize
		>
	using
		SimdMask
	=	vec
		<	bool
		,	t_vSize
		>
	;

	template
		<	typename
				t_tElement
		,	USize
				t_vSize
		>
	struct
		Var
		<	t_tElement
				[	t_vSize
				]
		,	SimdTag
		,	MaskedTag
		>
	{
		vec<t_tElement, t_vSize>
			m_vRaw
		;
		SimdMask<t_vSize>
			m_vMask
		;

		template
			<	USize
					t_vBatch
			>
		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	t_tElement const
				*	i_aData
			,	SimdMask<t_vSize>
					i_vMask
			)
			noexcept
		->	Var
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	t_vSize
				>
			;
			auto const
				aAlignedData
			=	::std::assume_aligned
				<	t_vBatch
				*	alignof(t_tElement)
				>(	i_aData
				)
			;
			return
			{	.	m_vRaw
				{	i_vMask
				?	vec<t_tElement, t_vSize>
					{	aAlignedData
						[	rpIndex
						]
						...
					}
				:	vec<t_tElement, t_vSize>{}
				}
			,	.	m_vMask
				=	i_vMask
			};
		}
	};

	template
		<	typename
				t_tElement
		,	USize
				t_vSize
		>
	struct
		Var
		<	t_tElement const
			(&)	[	t_vSize
				]
		,	SimdTag
		,	MaskedTag
		>
	{
		using
			value_type
		=	MaskedSimd
			<	t_tElement
					[	t_vSize
					]
			>
		;

		t_tElement const
		*	m_aData
		;

		SimdMask<t_vSize>
			m_vMask
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{	return
			value_type
			::	template
				LoadAligned<t_vSize>
				(	m_aData
				,	m_vMask
				)
			;
		}
	};
}
