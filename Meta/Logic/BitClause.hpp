export module Meta.Logic:BitClause;

import Meta.Size;
import Meta.Arithmetic;
import Meta.Bit.CountOnes;
import Meta.Bit.SetOnes;
import Meta.Bit.ByteSize;
import Meta.Bit.Test;
import Meta.Bit.Width;
import Meta.Bit.Field;
import Meta.Bit.Count;
import Meta.Bit.Set;

import Std;

using ::Meta::Bit::CountOnes;
using ::Meta::Bit::SetOnes;

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
		using FieldType = UInt<Bits{LiteralLimit}>;
		static_assert((Bit::ByteSize * sizeof(FieldType)).get() == LiteralLimit);

		static auto constexpr
		(	BitIndexToField
		)	(	Bits
					i_nAbsoluteIndex
			)
		->	FieldType
		{
			if	(i_nAbsoluteIndex.get() >= LiteralLimit)
				((void)"Index to large to convert to a bit field!", std::unreachable());
			return
			static_cast<FieldType>
			(Bit::PowerField
			(	i_nAbsoluteIndex
			).Value);
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
			{	SetOnes(Bits{LiteralLimit}).Value
			}
		,	Negative
			{	Positive
			}
		{}

		explicit(true) constexpr
		(	BitClause
		)	(	Bits
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
		->	Bit::Field
		{
			if	(IsIdentity())
				return {};

			return
			(	Bit::Field{Positive}
			bitor
				Bit::Field{Negative}
			);
		}

		[[nodiscard]]
		auto constexpr
		(	Permutation
		)	(	::std::span<Bits const>
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

			for	(	Bits
						nAbsoluteIndex
					{}
				;		nAbsoluteIndex.get()
					<	i_vPermutation.size()
				;	++	nAbsoluteIndex
				)
			{
				if	(TestPositive(nAbsoluteIndex))
					(	vResult.Positive
					|=	BitIndexToField
						(	i_vPermutation[nAbsoluteIndex.get()]
						)
					);
				else
				if	(TestNegative(nAbsoluteIndex))
					(	vResult.Negative
					|=	BitIndexToField
						(	i_vPermutation[nAbsoluteIndex.get()]
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
			noexcept
		->	USize
		{
			if	(IsIdentity())
				return 0uz;

			return
				CountOnes
				(	LiteralField()
				)
			.	get()
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	Bits
					i_nRelativeIndex
			)	const
			noexcept
		->	BitClause
		{
			auto const
				nIndexField
			=	BitIndexToField
				(	i_nRelativeIndex
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
			BitClause
				vResult
			=	Absorbing()
			;

			auto const
				vCombined
			=	Positive
			bitor
				Negative
			;
			auto const
				vMask
			=	vCombined bitand -vCombined
			;

			if	(Positive bitand vMask)
				vResult.Positive = static_cast<FieldType>(vMask);

			if	(Negative bitand vMask)
				vResult.Negative = static_cast<FieldType>(vMask);

			return vResult;
		}

		[[nodiscard]]
		auto constexpr
		(	TestPositive
		)	(	Bits
					i_nAbsoluteIndex
			)	const
			noexcept
		->	bool
		{	return
			Bit::Test
			(	Bit::Field{Positive}
			,	i_nAbsoluteIndex
			);
		}

		[[nodiscard]]
		auto constexpr
		(	TestNegative
		)	(	Bits
					i_nAbsoluteIndex
			)	const
			noexcept
		->	bool
		{	return
			Bit::Test
			(	Bit::Field{Negative}
			,	i_nAbsoluteIndex
			);
		}

		[[nodiscard]]
		auto constexpr
		(	TrimLiterals
		)	()	const
		->	BitClause
		{
			auto const
				vLiteralField
			=	LiteralField()
			;

			auto const
				nRequiredLiteralCount
			=	CountOnes(vLiteralField)
			;

			auto const
				nMaxLiteralCount
			=	Bit::Width
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

				for	(	Bits
							nAbsoluteIndex
						{}
						,	nPermutation
						{}
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
