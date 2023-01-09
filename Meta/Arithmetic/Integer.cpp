export module Meta.Arithmetic.Integer;

import Meta.Byte.Size;

import Std;

using ::Meta::Byte::SizeOf;

template<::Meta::ByteSize>
auto MapSInt() = delete;

template<>
auto MapSInt
	<SizeOf<::std::int_least8_t>>()
{	return ::std::int_least8_t{}; }

template<>
auto MapSInt
	<SizeOf<::std::int_least16_t>>()
{	return ::std::int_least16_t{}; }

template<>
auto MapSInt
	<SizeOf<::std::int_least32_t>>()
{	return ::std::int_least32_t{}; }

template<>
auto MapSInt
	<SizeOf<::std::int_least64_t>>()
{	return ::std::int_least64_t{}; }

template<>
auto MapSInt
	<SizeOf<__int128>>()
{	return __int128{};	}

export namespace
	Meta
{
	template
		<	ByteSize
				t_nSize
		>
	using
		SInt
	=	decltype
		(	::MapSInt
			<	CeilPower2
				(	t_nSize
				)
			>()
		)
	;

	using
		SIntMax
	=	::std::intmax_t
	;

	template
		<	ByteSize
				t_nSize
		>
	using
		UInt
	=	::std::make_unsigned_t
		<	SInt
			<	t_nSize
			>
		>
	;

	using
		UIntMax
	=	::std::make_unsigned_t
		<	SIntMax
		>
	;
}
