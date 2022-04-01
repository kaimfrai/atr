export module Test.CMake.Pimpl;

import Test.CMake.Impl;

export using ImplAlias = Impl;

export struct
	Pimpl
{
	Impl* pImpl;

	Pimpl(long double) noexcept;
	~Pimpl() noexcept;

	long double get() const noexcept;
};
