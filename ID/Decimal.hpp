#pragma once

#include <Meta/Pack.hpp>
#include <Std/Concepts.hpp>
#include <Std/Math.hpp>
#include <Std/Size.hpp>

namespace
	ID
{
	template
		<	char
			...	t_vpDecimal
		>
	struct
		Decimal
	{
		static constexpr
		Std::USizeType
			DigitCount
		=	sizeof...(
				t_vpDecimal
			)
		;
		
		static constexpr
		Std::USizeType
			Value
		=	Std::DigitsToNumber
			<	t_vpDecimal
				...
			>()
		;
	};
	
	template
		<	Std::Integral auto
				t_vNumber
		,	Std::USizeType
				t_nDigitCount
		>
	constexpr
	auto
		CreateDecimal
		()
	{
		return
			Std::NumberToDigits
			<	t_vNumber
			,	t_nDigitCount
			,	Decimal
			>()
		;
	}
	
	template
		<	char
			...	t_vpDecimal
		>
	constexpr
	auto
		MakeDecimalSequence
		(	Decimal
			<	t_vpDecimal
				...
			>
		)
	{
		return
			[]	<	std::size_t
					...	t_npIndex
				>(	std::index_sequence
					<	t_npIndex
						...
					>
				)
			{	return
					Meta::Pack
					<	CreateDecimal
						<	t_npIndex
						,	sizeof...(
								t_vpDecimal
							)
						>()
						...
					>()
				;
			}(	std::make_index_sequence
				<	Std::DigitsToNumber
					<	t_vpDecimal
						...
					>()
				>{}
			)
		;
	}
	
	template
		<	char
			...	t_npDigit
		>
	constexpr
	auto
		operator
		""_dec
		()
	->	Decimal
		<	t_npDigit
			...
		>
	{	return{};	}
}
