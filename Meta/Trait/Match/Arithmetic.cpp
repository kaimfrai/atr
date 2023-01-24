export module Meta.Trait.Match.Arithmetic;

import Meta.Trait.Match.CV;

import Std;

export namespace
	Meta::Trait::Match
{
	struct
		UnsignedIntegral
	:	CV<bool>
	,	CV_If<char, ::std::is_unsigned_v<char>>
	,	CV_If<wchar_t, ::std::is_unsigned_v<wchar_t>>
	,	CV<char8_t>
	,	CV<char16_t>
	,	CV<char32_t>
	,	CV<unsigned char>
	,	CV<unsigned short>
	,	CV<unsigned int>
	,	CV<unsigned long>
	,	CV<unsigned long long>
	{};

	struct
		SignedIntegral
	:	CV_If<char, not ::std::is_unsigned_v<char>>
	,	CV_If<wchar_t, not ::std::is_unsigned_v<wchar_t>>
	,	CV<signed char>
	,	CV<signed short>
	,	CV<signed int>
	,	CV<signed long>
	,	CV<signed long long>
	{};

	struct
		FloatingPoint
	:	CV<float>
	,	CV<double>
	,	CV<long double>
	{};

	struct
		Integral
	:	SignedIntegral
	,	UnsignedIntegral
	{};
}
