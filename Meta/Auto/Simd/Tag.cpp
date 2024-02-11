export module Meta.Auto.Simd.Tag;

export import Meta.Auto.Primary;

export namespace
	Meta
{
	struct
		SimdTag
	{}	constexpr inline
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
		,	(SimdTag)
		>
	;

	struct
		MaskedTag
	{}	constexpr inline
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
		,	(SimdTag)
		,	(MaskedTag)
		>
	;

	template
		<	typename
				t_tElement
		>
	struct
		SimdMask
	{};
}
