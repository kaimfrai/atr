export module Meta.Math.Sign;

import Std;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr inline
	(	Unsigned
	)	(	::std::integral auto
				i_vSigned
		)
		noexcept
	->	decltype(auto)
	{	return
		static_cast
		<	::std::make_unsigned_t
			<	decltype(i_vSigned)
			>
		>(	i_vSigned
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	Signed
	)	(	::std::integral auto
				i_vUnsigned
		)
		noexcept
	->	decltype(auto)
	{	return
		static_cast
		<	::std::make_signed_t
			<	decltype(i_vUnsigned)
			>
		>(	i_vUnsigned
		);
	}
}
