export module Meta.Arithmetic.Integer;

import Meta.Memory.Size;
import Meta.Memory.Size.Round;

import Std;

using ::Meta::Memory::SizeOf;

template<::Meta::ByteSize>
auto inline MapSInt() = delete;

template<>
auto inline MapSInt
	<SizeOf<::std::int_least8_t>>()
{	return ::std::int_least8_t{}; }

template<>
auto inline MapSInt
	<SizeOf<::std::int_least16_t>>()
{	return ::std::int_least16_t{}; }

template<>
auto inline MapSInt
	<SizeOf<::std::int_least32_t>>()
{	return ::std::int_least32_t{}; }

template<>
auto inline MapSInt
	<SizeOf<::std::int_least64_t>>()
{	return ::std::int_least64_t{}; }

export namespace
	Meta
{
	template
		<	ByteSize
				t_vSize
		>
	using
		SInt
	=	decltype
		(	::MapSInt
			<	CeilPower2
				(	t_vSize
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
				t_vSize
		>
	using
		UInt
	=	::std::make_unsigned_t
		<	SInt
			<	t_vSize
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
