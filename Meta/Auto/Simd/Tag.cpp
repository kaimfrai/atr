export module Meta.Auto.Simd.Tag;

export import Meta.Auto.Primary;

export namespace
	Meta
{
	struct
		SimdTag
	{};

	template
		<	typename
				t_tElement
		>
	using
		Simd
	=	Auto
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
	=	Auto
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
		<	typename
				t_tElement
		>
	struct
		SimdMask
	{};
}
