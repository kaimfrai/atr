#pragma once

#include <Std/Concepts.hpp>
#include <Std/Size.hpp>

#include <utility>

namespace
	Std
{
	/// computes a unsigned power of the given base
	template
		<	Arithmetic auto
				t_nBase
		,	UnsignedIntegral auto
				t_nPower
		>
	constexpr
	auto
		UnsignedIntegralPower
		()
	{	return
			[]	<	std::size_t
					...	t_npIndex
				>(	std::index_sequence
					<	t_npIndex
						...
					>
				)
			{	return
					(	// 1 in the given type
						(	t_nBase
						/	t_nBase
						)
					*	...
					*	(	(void)t_npIndex
						,	t_nBase
						)
					)
				;
			}(	std::make_index_sequence
				<	t_nPower
				>{}
			)
		;
	}
	
	/// converts a sequence of digits to an integral
	template
		<	char
			...	t_npDigit
		>
	constexpr
	auto
		DigitsToNumber
		()
	->	USizeType
	{
		constexpr
		auto
			nDigitCount
		=	sizeof...(
				t_npDigit
			)
		;
		return
			[]	<	std::size_t
					...	t_npIndex
				>(	std::index_sequence
					<	t_npIndex
						...
					>
				)
			{	return
					(	0_uz
					+	...
					+	(	(	t_npDigit
								-	'0'
							)
						*	UnsignedIntegralPower
							<	10_uz
							,	nDigitCount
							-	t_npIndex
							-	1_uz
							>()
						)
					)
				;
			}(	std::make_index_sequence
				<	nDigitCount
				>{}
			)
		;
	}
	
	/// converts an integral to a sequence of digits
	template
		<	std::size_t
				t_nNumber
		,	std::size_t
				t_nDigitCount
		,	template
				<	char
					...
				>
			typename
				t_t1Sequence
		>
	constexpr
	auto
		NumberToDigits
		()
	{	return
			[]	<	std::size_t
					...	t_npIndex
				>(	std::index_sequence
					<	t_npIndex
						...
					>
				)
		{	return
					t_t1Sequence
					<	(	(	t_nNumber
							%	UnsignedIntegralPower
								<	10_uz
								,	t_nDigitCount
								-	t_npIndex
								>()
							)
						/	UnsignedIntegralPower
							<	10_uz
							,	t_nDigitCount
							-	1_uz
							-	t_npIndex
							>()
						+	'0'
						)
						...
					>{}
				;
			}(	std::make_index_sequence
				<	t_nDigitCount
				>{}
			)
		;
	}
}
