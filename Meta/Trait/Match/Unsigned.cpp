export module Meta.Trait.Match.Unsigned;

import Meta.Trait.Match.CV;

import std;

export namespace
	Meta::Trait::Match
{
	struct
		Unsigned
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
}
