export module Meta.Logic:BitClause;

import Meta.Size;
import Meta.Arithmetic;
import Meta.Bit.ByteSize;

import Std;

using ::Meta::Arithmetic::CountOneBits;
using ::Meta::Arithmetic::SetOneBits;
using ::Meta::Arithmetic::GetIndexOfNthOneBit;
using ::Meta::Arithmetic::CountLowerZeroBits;

export namespace
	Meta::Logic
{
	USize constexpr inline
		LiteralLimit
	=	16uz
	;
	USize constexpr inline
		ClauseLimit
	=	6uz
	;

	struct
		BitClause final
	{
		using FieldType = UInt<LiteralLimit>;
		static_assert(sizeof(FieldType) * Bit::ByteSize == LiteralLimit);

		static auto constexpr
		(	BitIndexToField
		)	(	USize
					i_nAbsoluteIndex
			)
		->	FieldType
		{
			if	(i_nAbsoluteIndex >= LiteralLimit)
				((void)"Index to large to convert to a bit field!", std::unreachable());
			return
			static_cast<FieldType>
			(	1uz
			<<	i_nAbsoluteIndex
			);
		}

		FieldType Positive;
		FieldType Negative;

		[[nodiscard]]
		static auto constexpr
		(	Absorbing
		)	()
		->	BitClause
		{	return Inverse(Identity());	}

		[[nodiscard]]
		static auto constexpr
		(	Identity
		)	()
		->	BitClause
		{	return BitClause{};	}

		explicit(false) constexpr
		(	BitClause
		)	()
		:	Positive
			{	SetOneBits(LiteralLimit)
			}
		,	Negative
			{	Positive
			}
		{}

		explicit(true) constexpr
		(	BitClause
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
		(	Evaluate
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

		[[nodiscard]]
		auto constexpr
		(	LiteralField
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

		[[nodiscard]]
		auto constexpr
		(	Permutation
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

		[[nodiscard]]
		auto constexpr
		(	IsAbsorbing
		)	()	const
		->	bool
		{	return
			not
			(	Positive
			bitor
				Negative
			);
		}

		[[nodiscard]]
		auto constexpr
		(	IsIdentity
		)	()	const
		->	bool
		{	return
			(	Positive
			bitand
				Negative
			);
		}

		[[nodiscard]]
		auto constexpr
		(	LiteralCount
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

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	USize
					i_nRelativeIndex
			)	const
		->	BitClause
		{
			if	(i_nRelativeIndex >= LiteralCount())
				((void)"Index beyond LiteralCount!", std::unreachable());

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

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	BitClause
			,	BitClause
			)
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator<=>
		)	(	BitClause
			,	BitClause
			)
		->	::std::strong_ordering
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	Intersection
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

		[[nodiscard]]
		friend auto constexpr
		(	Union
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

		[[nodiscard]]
		friend auto constexpr
		(	Difference
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

		[[nodiscard]]
		friend auto constexpr
		(	Inverse
		)	(	BitClause
					i_vClause
			)
		->	BitClause
		{	if	(i_vClause.Positive == i_vClause.Negative)
				i_vClause.Positive = i_vClause.Negative = compl i_vClause.Positive;
			else
				std::swap(i_vClause.Positive, i_vClause.Negative);
			return i_vClause;
		}

		[[nodiscard]]
		auto constexpr
		(	Includes
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

		[[nodiscard]]
		auto constexpr
		(	Intersects
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

		[[nodiscard]]
		auto constexpr
		(	FirstLiteral
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

		[[nodiscard]]
		auto constexpr
		(	TestPositive
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
		(	TestNegative
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

		[[nodiscard]]
		auto constexpr
		(	TrimLiterals
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
	};
}
