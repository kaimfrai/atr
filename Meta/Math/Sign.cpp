export module Meta.Math.Sign;

import Std;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr
	(	Unsigned
	)	(	::std::integral auto
				i_nSigned
		)
		noexcept
	->	decltype(auto)
	{	return
		static_cast
		<	::std::make_unsigned_t
			<	decltype(i_nSigned)
			>
		>(	i_nSigned
		);
	}

	[[nodiscard]]
	auto constexpr
	(	Signed
	)	(	::std::integral auto
				i_nUnsigned
		)
		noexcept
	->	decltype(auto)
	{	return
		static_cast
		<	::std::make_signed_t
			<	decltype(i_nUnsigned)
			>
		>(	i_nUnsigned
		);
	}
}
