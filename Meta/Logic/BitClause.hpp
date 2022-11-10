export module Meta.Logic:BitClause;

export import Meta.Arithmetic;

import Std;

using ::Meta::Arithmetic::CountOneBits;
using ::Meta::Arithmetic::SetOneBits;
using ::Meta::Arithmetic::GetIndexOfNthOneBit;
using ::Meta::Arithmetic::CountLowerZeroBits;

namespace
	Meta::Logic
{
	export USize constexpr inline
		LiteralLimit
	=	16uz
	;
	export USize constexpr inline
		ClauseLimit
	=	6uz
	;

	export struct
		BitClause final
	{
		using FieldType = UInt<LiteralLimit>;

		static auto constexpr
		(	BitIndexToField
		)	(	USize
			)
		->	FieldType
		;

		FieldType Positive : LiteralLimit;
		FieldType Negative : LiteralLimit;

		static auto constexpr
		(	Absorbing
		)	()
		->	BitClause
		;

		static auto constexpr
		(	Identity
		)	()
		->	BitClause
		;

		constexpr
		(	BitClause
		)	()
		;

		explicit constexpr
		(	BitClause
		)	(	USize
			)
		;

		[[nodiscard]]
		auto constexpr
		(	Evaluate
		)	(	FieldType
			)	const
		->	BitClause
		;

		auto constexpr
		(	LiteralField
		)	()	const
		->	USize
		;

		auto constexpr
		(	Permutation
		)	(	::std::span<USize const>
			)	const
		->	BitClause
		;

		auto constexpr
		(	IsAbsorbing
		)	()	const
		->	bool
		;

		auto constexpr
		(	IsIdentity
		)	()	const
		->	bool
		;

		auto constexpr
		(	LiteralCount
		)	()	const
		->	USize
		;

		auto constexpr
		(	operator[]
		)	(	USize
			)	const
		->	BitClause
		;

		friend auto constexpr
		(	operator ==
		)	(	BitClause
			,	BitClause
			)
		->	bool
		=	default;

		friend auto constexpr
		(	operator<=>
		)	(	BitClause
			,	BitClause
			)
		->	::std::strong_ordering
		=	default;

		auto constexpr
		(	Includes
		)	(	BitClause
			)	const
		->	bool
		;

		auto constexpr
		(	Intersects
		)	(	BitClause
			)	const
		->	bool
		;

		auto constexpr
		(	FirstLiteral
		)	()	const
		->	BitClause
		;

		auto constexpr
		(	TestPositive
		)	(	USize
			)	const
		->	bool
		;

		auto constexpr
		(	TestNegative
		)	(	USize
			)	const
		->	bool
		;

		auto constexpr
		(	TrimLiterals
		)	()	const
		->	BitClause
		;
	};

	export auto constexpr
	(	Inverse
	)	(	BitClause
		)
	->	BitClause
	;

	export auto constexpr
	(	Union
	)	(	BitClause
		,	BitClause
		)
	->	BitClause
	;

	export auto constexpr
	(	Difference
	)	(	BitClause
		,	BitClause
		)
	->	BitClause
	;

	export auto constexpr
	(	Intersection
	)	(	BitClause
		,	BitClause
		)
	->	BitClause
	;

	auto constexpr
	(	BitClause
	::	BitIndexToField
	)	(	USize
				i_nAbsoluteIndex
		)
	->	FieldType
	{
		if	(i_nAbsoluteIndex >= LiteralLimit)
			throw "Index to large to convert to a bit field!";
		return
		static_cast<FieldType>
		(	1uz
		<<	i_nAbsoluteIndex
		);
	}

	auto constexpr
	(	BitClause
	::	Absorbing
	)	()
	->	BitClause
	{	return Inverse(Identity());	}

	auto constexpr
	(	BitClause
	::	Identity
	)	()
	->	BitClause
	{	return BitClause{};	}

	constexpr
	(	BitClause
	::	BitClause
	)	()
	:	Positive
		{	SetOneBits(LiteralLimit)
		}
	,	Negative
		{	Positive
		}
	{}

	constexpr
	(	BitClause
	::	BitClause
	)	(	USize
				i_nPositive
		)
	:	Positive
		{	BitIndexToField
			(	i_nPositive
			)
		}
	,	Negative
		{	Absorbing().Negative
		}
	{}

	[[nodiscard]]
	auto constexpr
	(	BitClause
	::	Evaluate
	)	(	FieldType
				i_vPreset
		)	const
	->	BitClause
	{
		BitClause
			vCopy
		=	*this
		;
		vCopy.Positive &= compl i_vPreset;
		vCopy.Negative &= i_vPreset;

		return vCopy;
	}

	auto constexpr
	(	BitClause
	::	LiteralField
	)	()	const
	->	USize
	{
		if	(IsIdentity())
			return 0uz;

		return
		(	0uz
		bitor
			Positive
		bitor
			Negative
		);
	}

	auto constexpr
	(	BitClause
	::	Permutation
		[[nodiscard]]
	)	(	::std::span<USize const>
				i_vPermutation
		)	const
	->	BitClause
	{
		if	(Positive == Negative)
			return *this;

		BitClause
			vResult
		=	Absorbing()
		;

		for	(	USize
					nAbsoluteIndex
				=	0uz
			;		nAbsoluteIndex
				<	i_vPermutation.size()
			;	++	nAbsoluteIndex
			)
		{
			if	(TestPositive(nAbsoluteIndex))
				(	vResult.Positive
				|=	BitIndexToField
					(	i_vPermutation[nAbsoluteIndex]
					)
				);
			else
			if	(TestNegative(nAbsoluteIndex))
				(	vResult.Negative
				|=	BitIndexToField
					(	i_vPermutation[nAbsoluteIndex]
					)
				);
		}
		return vResult;
	}

	auto constexpr
	(	BitClause
	::	IsAbsorbing
	)	()	const
	->	bool
	{	return
		not
		(	Positive
		bitor
			Negative
		);
	}

	auto constexpr
	(	BitClause
	::	IsIdentity
	)	()	const
	->	bool
	{	return
		(	Positive
		bitand
			Negative
		);
	}

	auto constexpr
	(	BitClause
	::	LiteralCount
	)	()	const
	->	USize
	{
		if	(IsIdentity())
			return 0uz;

		return
		CountOneBits
		(	LiteralField()
		);
	}

	auto constexpr
	(	Inverse
		[[nodiscard]]
	)	(	BitClause
				i_vClause
		)
	->	BitClause
	{
		if	(	i_vClause.Positive
			==	i_vClause.Negative
			)
		{
			i_vClause.Positive = compl i_vClause.Positive;
			i_vClause.Negative = compl i_vClause.Negative;
			return i_vClause;
		}

		//	cannot use std::swap for bitfields
		BitClause::FieldType const
			vOldPositive
		=	i_vClause.Positive
		;
		(	i_vClause.Positive
		=	i_vClause.Negative
		);
		(	i_vClause.Negative
		=	vOldPositive
		);
		return i_vClause;
	}

	auto constexpr
	(	Intersection
		[[nodiscard]]
	)	(	BitClause
				i_vLeft
		,	BitClause
				i_vRight
		)
	->	BitClause
	{
		(	i_vLeft.Positive
		&=	i_vRight.Positive
		);
		(	i_vLeft.Negative
		&=	i_vRight.Negative
		);
		return i_vLeft;
	}

	auto constexpr
	(	Union
		[[nodiscard]]
	)	(	BitClause
				i_vLeft
		,	BitClause
				i_vRight
		)
	->	BitClause
	{
		(	i_vLeft.Positive
		|=	i_vRight.Positive
		);

		(	i_vLeft.Negative
		|=	i_vRight.Negative
		);

		if	(i_vLeft.Positive bitand i_vLeft.Negative)
		{
			return BitClause::Identity();
		}

		return i_vLeft;
	}

	auto constexpr
	(	Difference
		[[nodiscard]]
	)	(	BitClause
				i_vLeft
		,	BitClause
				i_vRight
		)
	->	BitClause
	{
		if	(i_vLeft.IsIdentity())
			return Inverse(i_vRight);

		(	i_vLeft.Positive
		&=	compl
			i_vRight.Positive
		);

		(	i_vLeft.Negative
		&=	compl
			i_vRight.Negative
		);

		return i_vLeft;
	}

	auto constexpr
	(	BitClause
	::	operator[]
	)	(	USize
				i_nRelativeIndex
		)	const
	->	BitClause
	{
		if	(i_nRelativeIndex >= LiteralCount())
			throw "Index beyond LiteralCount!";

		if	(IsIdentity())
			return *this;

		auto const
			nIndexField
		=	BitIndexToField
			(	GetIndexOfNthOneBit
				(	LiteralField()
				,	i_nRelativeIndex
				)
			)
		;

		BitClause
			vLiteral
		=	*this
		;

		(	vLiteral
		.	Positive
		&=	nIndexField
		);

		(	vLiteral
		.	Negative
		&=	nIndexField
		);

		return
			vLiteral
		;
	}

	auto constexpr
	(	BitClause
	::	Includes
	)	(	BitClause
				i_vContained
		)	const
	->	bool
	{	return
		(	Difference
			(	i_vContained
			,	*this
			)
		.	IsAbsorbing()
		);
	}

	auto constexpr
	(	BitClause
	::	Intersects
	)	(	BitClause
				i_vIntersection
		)	const
	->	bool
	{	return
		not
		(	Intersection
			(	*this
			,	i_vIntersection
			)
		.	IsAbsorbing()
		);
	}

	auto constexpr
	(	BitClause
	::	FirstLiteral
	)	()	const
	->	BitClause
	{
		USize const
			nFirstPositiveIndex
		=	CountLowerZeroBits
			(	Positive
			)
		;
		USize const
			nFirstNegativeIndex
		=	CountLowerZeroBits
			(	Negative
			)
		;

		BitClause
			vResult
		=	Absorbing()
		;
		if	(nFirstPositiveIndex < nFirstNegativeIndex)
			vResult.Positive = BitIndexToField(nFirstPositiveIndex);
		else
		if	(nFirstPositiveIndex > nFirstNegativeIndex)
			vResult.Negative = BitIndexToField(nFirstNegativeIndex);
		else
			return Identity();
		return vResult;
	}

	auto constexpr
	(	BitClause
	::	TestPositive
	)	(	USize
				i_nAbsoluteIndex
		)	const
	->	bool
	{	return
		(	Positive
		bitand
			BitIndexToField(i_nAbsoluteIndex)
		);
	}

	auto constexpr
	(	BitClause
	::	TestNegative
	)	(	USize
				i_nAbsoluteIndex
		)	const
	->	bool
	{	return
		(	Negative
		bitand
			BitIndexToField(i_nAbsoluteIndex)
		);
	}

	auto constexpr
	(	BitClause
	::	TrimLiterals
		[[nodiscard]]
	)	()	const
	->	BitClause
	{
		USize const
			vLiteralField
		=	LiteralField()
		;

		USize const
			nRequiredLiteralCount
		=	CountOneBits(vLiteralField)
		;

		USize const
			nMaxLiteralCount
		=	Arithmetic::BitWidth
			(	vLiteralField
			)
		;

		if	(	nRequiredLiteralCount
			==	nMaxLiteralCount
			)
			return *this;
		else
		{
			BitClause
				vResult
			=	Absorbing()
			;

			for	(	USize
						nAbsoluteIndex
					=	0uz
				,		nPermutation
					=	0uz
				;		nAbsoluteIndex
					<	nMaxLiteralCount
				;	++	nAbsoluteIndex
				)
			{
				if	(TestPositive(nAbsoluteIndex))
					(	vResult.Positive
					|=	BitIndexToField
						(	nPermutation++
						)
					);
				else
				if	(TestNegative(nAbsoluteIndex))
					(	vResult.Negative
					|=	BitIndexToField
						(	nPermutation++
						)
					);
			}

			return
				vResult
			;
		}
	}
}
