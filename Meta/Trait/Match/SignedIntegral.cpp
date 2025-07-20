export module Meta.Trait.Match.SignedIntegral;

import Meta.Trait.Match.CV;

import std;

export namespace
	Meta::Trait::Match
{
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
}
