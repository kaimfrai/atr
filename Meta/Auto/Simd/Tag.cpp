export module Meta.Auto.Simd.Tag;

export import Meta.Auto.Var;
import std;

export namespace
	Meta::Auto
{
	template
		<	typename
				t_tElement
		,	::std::size_t
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
		<	::std::size_t
				t_vSize
		>
	using
		SimdMask
	=	vec
		<	bool
		,	t_vSize
		>
	;
}
