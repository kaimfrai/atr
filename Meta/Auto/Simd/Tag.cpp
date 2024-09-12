export module Meta.Auto.Simd.Tag;

export import Meta.Auto.Var;
import Std;

export namespace
	Meta::Auto
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
		<	::std::size_t
		>
	struct
		SimdMask
	{
		__mmask8
			m_vRaw
		;
	};

	template
		<>
	struct
		SimdMask<16uz>
	{
		__mmask16
			m_vRaw
		;
	};

	template
		<>
	struct
		SimdMask<32uz>
	{
		__mmask32
			m_vRaw
		;
	};

	template
		<>
	struct
		SimdMask<64uz>
	{
		__mmask64
			m_vRaw
		;
	};
}
