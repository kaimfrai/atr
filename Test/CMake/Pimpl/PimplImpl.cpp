module Test.CMake.Pimpl;

import Test.CMake.Impl;

import Std;

Pimpl::Pimpl(long double d) noexcept
:	pImpl{new Impl{d}}
{}

Pimpl::~Pimpl() noexcept
{
	delete pImpl;
}

long double Pimpl::get() const noexcept
{
	return pImpl->d;
}
