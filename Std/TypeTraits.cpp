export module Std.TypeTraits;

export import Std.Size;

export import Std;

export namespace
	Std
{
	template
		<	typename
				t_tAny
		>
	constexpr inline
	auto
		ByteAlignOf
	=	std::is_empty_v
		<	t_tAny
		>
	?	0_uz
	:	std::alignment_of_v
		<	t_tAny
		>
	;

	template
		<>
	constexpr inline
	auto
		ByteAlignOf
		<	void
		>
	=	0_uz
	;

	template
		<	typename
				t_tAny
		>
	constexpr inline
	auto
		BitAlignOf
	=	BitsPerByte
	*	ByteAlignOf
		<	t_tAny
		>
	;

	template
		<>
	constexpr inline
	auto
		BitAlignOf
		<	bool
		>
	=	1_uz
	;

	template
		<	typename
				t_tAny
		>
	constexpr inline
	auto
		ByteSizeOf
	=	sizeof(
			t_tAny
		)
	;

	template
		<>
	constexpr inline
	auto
		ByteSizeOf
		<	void
		>
	=	0_uz
	;

	template
		<	typename
				t_tAny
		>
	using
		AsByteArrayType
	=	std::array
		<	std::byte
		,	ByteSizeOf
			<	t_tAny
			>
		>
	;

	template
		<	typename
				t_tAny
		>
	constexpr inline
	auto
		BitSizeOf
	=	BitsPerByte
	*	ByteSizeOf
		<	t_tAny
		>
	;

	template
		<>
	constexpr inline
	auto
		BitSizeOf
		<	bool
		>
	=	1_uz
	;

	template
		<	typename
				t_tAny
		>
	using
		Unqualified
	=	std::remove_cvref_t
		<	t_tAny
		>
	;

	template
		<	auto
				t_fInvocable
		,	typename
			... t_tpArgument
		>
	using
		InvokeResultType
	=	std::invoke_result_t
		<	decltype(
				t_fInvocable
			)
		,	t_tpArgument
			...
		>
	;

	template
		<	typename
			...	t_tpAny
		>
	using
		VoidT
	=	std::void_t
		<	t_tpAny
			...
		>
	;

	/// analog to VoidT but with values
	template
		<	auto
			...
		>
	using
		VoidV
	=	void
	;

	struct
		LiteralTypeInitializer
	{
		template
			<	auto
			>
		struct
			Test
		{
			constexpr
				operator bool
				()	const
			{	return
					true
				;
			}
		};

		template
			<	typename
					t_tAny
			,	auto
				...	t_vpArgument
			>
		static
		constexpr
		auto
			CanInitialize
			()
		->	bool
		{	return
				false
			;
		}

		template
			<	typename
					t_tAny
			,	auto
				...	t_vpArgument
			>
		static
		constexpr
		auto
			CanInitialize
			()
		->	// fails silently if not possible
			Test
			<	t_tAny
				{	t_vpArgument
					...
				}
			>
		requires
			// prefer this over the other overload
			true
		{	return
				{}
			;
		}
	};

	template
		<	typename
				t_tAny
		,	auto
			...	t_vpArgument
		>
	constexpr
	bool
		CanBeInitializedBy
	=	LiteralTypeInitializer
		::	template
			CanInitialize
			<	t_tAny
			,	t_vpArgument
				...
			>()
	;
}
