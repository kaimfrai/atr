#pragma once

#include <cstddef>
#include <climits>
#include <type_traits>

namespace
	Std
{
	using
		USizeType
	=	std::size_t
	;
	
	/// operator for creating objects of Type USizeType
	/// see C++23 proposal for literal suffix UZ
	[[nodiscard]]
	constexpr
	auto
		operator
		""_uz
		(	unsigned long long
				i_nSize
		)
		noexcept
	->	USizeType
	{	return
			i_nSize
		;
	}
	
	using
		SSizeType
	=	std::make_signed_t
		<	std::size_t
		>
	;
	
	/// operator for creating objects of Type SSizeType
	/// see C++23 proposal for literal suffix Z
	[[nodiscard]]
	constexpr
	auto
		operator
		""_sz
		(	unsigned long long
				i_nSize
		)
		noexcept
	->	SSizeType
	{	return
			i_nSize
		;
	}
	
	
	constexpr
	USizeType
		BitsPerByte
	=	CHAR_BIT
	;
	
	constexpr
	USizeType
		BytesForBits
		(	USizeType
				i_nBitCount
		)
	noexcept
	{	return
			(	i_nBitCount
			+	(	BitsPerByte
				-	1_uz
				)
			)
		/	BitsPerByte
		;
	}
	
	/// simply provides the static constant named "Size"
	/// intended for inheritence
	template
		<	USizeType
				t_nValue
			=	0_uz
		>
	struct
		SizeValueType
	{
		static
		constexpr
		auto
			Size
		=	t_nValue
		;
	};
	
	/// simply provides the static constant named "Count"
	/// intended for inheritence
	template
		<	USizeType
				t_nValue
			=	0_uz
		>
	struct
		CountValueType
	{
		static
		constexpr
		auto
			Count
		=	t_nValue
		;
	};
}

/// this operator should be available everywhere
using
	Std::operator""_uz
;
/// this operator should be available everywhere
using
	Std::operator""_sz
;

