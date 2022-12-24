export module Meta.Arithmetic.Integer;

import Meta.Bit.Count;
import Meta.Byte.Count;

import Std;

template<::std::size_t>
auto MapUInt() = delete;

template<>
auto MapUInt
	<sizeof(::std::uint_least8_t )>()
{	return ::std::uint_least8_t{}; }

template<>
auto MapUInt
	<sizeof(::std::uint_least16_t)>()
{	return ::std::uint_least16_t{}; }

template<>
auto MapUInt
	<sizeof(::std::uint_least32_t)>()
{	return ::std::uint_least32_t{}; }

template<>
auto MapUInt
	<sizeof(::std::uint_least64_t)>()
{	return ::std::uint_least64_t{}; }

export namespace
	Meta
{
	template
		<	Bits
				t_nBits
		>
	using
		UInt
	=	decltype
		(	::MapUInt
			<	Bytes(t_nBits)
			.	Ceil()
			.	get()
			>()
		)
	;

	using
		UIntMax
	=	::std::uintmax_t
	;

	template
		<	Bits
				t_nBits
		>
	using
		SInt
	=	::std::make_signed_t
		<	UInt<t_nBits>
		>
	;

	using
		SIntMax
	=	::std::make_signed_t
		<	UIntMax
		>
	;
}
