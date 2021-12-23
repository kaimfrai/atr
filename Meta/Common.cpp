export module Meta.Common;

export import Std.Utility;
export import Std.CStdInt;
export import Std.Limits;

export namespace
	Meta
{
	using
		USize
	=	decltype(0uz)
	;

	using
		SSize
	=	decltype(0z)
	;

	auto constexpr
	(	SetBits
	)	(	USize
				i_nBitCount
		)
	->	USize
	{
		auto constexpr
			nMaxBits
		=	CHAR_BIT * sizeof(USize)
		;
		if	(i_nBitCount > nMaxBits)
			throw "Attempted to set more bits than exist in USize!";

		return
			compl 0uz
		>>	(	nMaxBits
			-	i_nBitCount
			)
		;
	}
}

template
	<	::Meta::USize
	>
struct
	Integer
{};

template
	<	::Meta::USize
			t_nBitCount
	>
requires
	(t_nBitCount <= 8uz)
struct
	Integer
	<	t_nBitCount
	>
{
	using UnsignedType = ::std::uint8_t;
	using SignedType = ::std::int8_t;
};

template
	<	::Meta::USize
			t_nBitCount
	>
requires
	(t_nBitCount > 8uz)
and	(t_nBitCount <= 16uz)
struct
	Integer
	<	t_nBitCount
	>
{
	using UnsignedType = ::std::uint16_t;
	using SignedType = ::std::int16_t;
};

template
	<	::Meta::USize
			t_nBitCount
	>
requires
	(t_nBitCount > 16uz)
and	(t_nBitCount <= 32uz)
struct
	Integer
	<	t_nBitCount
	>
{
	using UnsignedType = ::std::uint32_t;
	using SignedType = ::std::int32_t;
};

template
	<	::Meta::USize
			t_nBitCount
	>
requires
	(t_nBitCount > 32uz)
and	(t_nBitCount <= 64uz)
struct
	Integer
	<	t_nBitCount
	>
{
	using UnsignedType = ::std::uint64_t;
	using SignedType = ::std::int64_t;
};

export namespace
	Meta
{
	template
		<	::Meta::USize
				t_nBitCount
		>
	using
		UInt
	=	typename
		::Integer
		<	t_nBitCount
		>
	::	UnsignedType
	;

	template
		<	::Meta::USize
				t_nBitCount
		>
	using
		SInt
	=	typename
		::Integer
		<	t_nBitCount
		>
	::	SignedType
	;

	template
		<	USize
			...	t_npIndex
		>
	struct
		IndexSequence
	{};

	template
		<	USize
				t_nLength
		>
	auto constexpr
	(	MakeIndexSequence
	)	()
	{	return
		[]	<	USize
				...	t_npIndex
			>(	std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
			IndexSequence
			<	t_npIndex
				...
			>{};
		}(	std::make_index_sequence
			<	t_nLength
			>{}
		);
	}
}
