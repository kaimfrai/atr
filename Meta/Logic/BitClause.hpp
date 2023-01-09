export module Meta.Logic:BitClause;

import Meta.Size;
import Meta.Bit.Count;
import Meta.Byte.Count;
import Meta.Bit.Size;
import Meta.Byte.Size;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.BitField;
import Meta.Arithmetic.BitRange;

import Std;

using namespace ::Meta::Literals;

export namespace
	Meta::Logic
{
	auto constexpr inline
		LiteralLimit
	=	16_bit
	;
	USize constexpr inline
		ClauseLimit
	=	6uz
	;

	struct
		BitClause final
	{
		using
			FieldType
		=	Arithmetic::BitField
			<	LiteralLimit
			>
		;

		static_assert
		(	Byte::SizeOf<FieldType>
		==	LiteralLimit
		);

		using
			IndexType
		=	typename
				FieldType
			::	IndexType
		;


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
			{	compl FieldType{}
			}
		,	Negative
			{	Positive
			}
		{}

		explicit(true) constexpr
		(	BitClause
		)	(	IndexType
					i_nPositive
			)
		:	Positive
			{	Power(i_nPositive)
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
		->	FieldType
		{
			if	(IsIdentity())
				return {};

			return
			(	Positive
			bitor
				Negative
			);
		}

		[[nodiscard]]
		auto constexpr
		(	Permutation
		)	(	::std::span<IndexType const>
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

			for	(	auto
						nIndex
				:	Arithmetic::BitRange<LiteralLimit>
					{	i_vPermutation.size()
					}
				)
			{
				if	(Positive[nIndex])
				{
					vResult.Positive.Set
					(	i_vPermutation
						[	static_cast<USize>
							(	nIndex.get()
							)
						]
					);
				}
				else
				if	(Negative[nIndex])
				{
					vResult.Negative.Set
					(	i_vPermutation
						[	static_cast<USize>
							(	nIndex.get()
							)
						]
					);
				}
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
			static_cast<bool>
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
			static_cast<USize>
			(	CountOnes(LiteralField())
			.	get()
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	IndexType
					i_nIndex
			)	const
			noexcept
		->	BitClause
		{
			FieldType const
				nIndexField
			{	Power
				(	i_nIndex
				)
			};

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
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator<=>
		)	(	BitClause
			,	BitClause
			)
			noexcept
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
			=	LowestOne(vCombined)
			;

			if	(Positive bitand vMask)
				vResult.Positive = vMask;

			if	(Negative bitand vMask)
				vResult.Negative = vMask;

			return vResult;
		}
	};
}
