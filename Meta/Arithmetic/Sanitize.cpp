export module Meta.Arithmetic.Sanitize;

import Meta.Math.Next;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.IntegerFor;

import Std;

using ::Meta::Arithmetic::Narrow;
using ::Meta::Math::Next;

export namespace
	Meta::Arithmetic
{
	template
		<	SIntMax
				t_nHighestValue
		>
	[[nodiscard]]
	auto constexpr
	(	SanitizeSigned
	)	(	SIntMax
				i_nValue
		)
		noexcept
	->	SInt_For<t_nHighestValue>
	{
		static_assert
		(	t_nHighestValue
		>=	0z
		,	"Highest value expected to non-negative!"
		);
		//	Note: this function will never return (-Highest - 1)
		if	constexpr
			(	t_nHighestValue
			==	::std::numeric_limits
				<	SInt_For<t_nHighestValue>
				>
			::	max()
			)
		{	return
			Narrow<t_nHighestValue>
			(	i_nValue
			);
		}
		else
		{	return
			Narrow<t_nHighestValue>
			(	i_nValue
			%	Next(t_nHighestValue)
			);
		}
	}

	template
		<	SIntMax
				t_nHighestValue
		>
	auto constexpr
	(	AssertSanitizedSigned
	)	(	SIntMax
				i_nValue
		)
		noexcept
	->	SInt_For<t_nHighestValue>
	{
		auto const
			nSanitized
		=	SanitizeSigned<t_nHighestValue>
			(	i_nValue
			)
		;
		if	(i_nValue != nSanitized)
			::std::unreachable();
		return
			nSanitized
		;
	}

	template
		<	UIntMax
				t_nHighestValue
		>
	[[nodiscard]]
	auto constexpr
	(	SanitizeUnsigned
	)	(	UIntMax
				i_nValue
		)
		noexcept
	->	UInt_For<t_nHighestValue>
	{	if	constexpr
			(	t_nHighestValue
			==	::std::numeric_limits
				<	UInt_For<t_nHighestValue>
				>
			::	max()
			)
		{	return
			Narrow<t_nHighestValue>
			(	i_nValue
			);
		}
		else
		{	return
			Narrow<t_nHighestValue>
			(	i_nValue
			%	Next(t_nHighestValue)
			);
		}
	}

	template
		<	UIntMax
				t_nHighestValue
		>
	auto constexpr
	(	AssertSanitizedUnsigned
	)	(	UIntMax
				i_nValue
		)
		noexcept
	->	UInt_For<t_nHighestValue>
	{
		auto const
			nSanitized
		=	SanitizeUnsigned<t_nHighestValue>
			(	i_nValue
			)
		;
		if	(i_nValue != nSanitized)
			::std::unreachable();
		return
			nSanitized
		;
	}
}
