export module Meta.Arithmetic.Sanitize;

import Meta.Math.Next;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.IntegerFor;

import std;

using ::Meta::Arithmetic::Narrow;
using ::Meta::Math::Next;

export namespace
	Meta::Arithmetic
{
	template
		<	SIntMax
				t_vHighestValue
		>
	[[nodiscard]]
	auto constexpr inline
	(	SanitizeSigned
	)	(	SIntMax
				i_vValue
		)
		noexcept
	->	SInt_For<t_vHighestValue>
	{
		static_assert
		(	t_vHighestValue
		>=	0z
		,	"Highest value expected to non-negative!"
		);
		//	Note: this function will never return (-Highest - 1)
		if	constexpr
			(	t_vHighestValue
			==	::std::numeric_limits
				<	SInt_For<t_vHighestValue>
				>
			::	max()
			)
		{	return
			Narrow<t_vHighestValue>
			(	i_vValue
			);
		}
		else
		{	return
			Narrow<t_vHighestValue>
			(	i_vValue
			%	Next(t_vHighestValue)
			);
		}
	}

	template
		<	SIntMax
				t_vHighestValue
		>
	auto constexpr inline
	(	AssertSanitizedSigned
	)	(	SIntMax
				i_vValue
		)
		noexcept
	->	SInt_For<t_vHighestValue>
	{
		auto const
			vSanitized
		=	SanitizeSigned<t_vHighestValue>
			(	i_vValue
			)
		;
		[[assume(i_vValue == vSanitized)]];
		return
			vSanitized
		;
	}

	template
		<	UIntMax
				t_vHighestValue
		>
	[[nodiscard]]
	auto constexpr inline
	(	SanitizeUnsigned
	)	(	UIntMax
				i_vValue
		)
		noexcept
	->	UInt_For<t_vHighestValue>
	{	if	constexpr
			(	t_vHighestValue
			==	::std::numeric_limits
				<	UInt_For<t_vHighestValue>
				>
			::	max()
			)
		{	return
			Narrow<t_vHighestValue>
			(	i_vValue
			);
		}
		else
		{	return
			Narrow<t_vHighestValue>
			(	i_vValue
			%	Next(t_vHighestValue)
			);
		}
	}

	template
		<	UIntMax
				t_vHighestValue
		>
	auto constexpr inline
	(	AssertSanitizedUnsigned
	)	(	UIntMax
				i_vValue
		)
		noexcept
	->	UInt_For<t_vHighestValue>
	{
		auto const
			vSanitized
		=	SanitizeUnsigned<t_vHighestValue>
			(	i_vValue
			)
		;
		[[assume(i_vValue == vSanitized)]];

		return
			vSanitized
		;
	}
}
