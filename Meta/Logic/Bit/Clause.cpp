export module Meta.Logic.Bit.Clause;

import Meta.Size;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Arithmetic.Integer;
import Meta.Bit.Field;
import Meta.Bit.Field.Arithmetic;
import Meta.Bit.Field.Compare;
import Meta.Bit.Field.CountOnes;
import Meta.Bit.Field.LowestOne;
import Meta.Bit.Field.Set;
import Meta.Bit.Count;
import Meta.Bit.Count.Range;
import Meta.Bit.Index.Shift;

import Std;

using namespace ::Meta::Literals;

export namespace
	Meta::Logic::Bit
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
		Clause final
	{
		using
			FieldType
		=	::Meta::Bit::Field
			<	LiteralLimit
			>
		;

		static_assert
		(	Memory::SizeOf<FieldType>
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
		auto static constexpr inline
		(	Absorbing
		)	()
		->	Clause
		{	return Inverse(Identity());	}

		[[nodiscard]]
		auto static constexpr inline
		(	Identity
		)	()
		->	Clause
		{	return Clause{};	}

		explicit(false) constexpr inline
		(	Clause
		)	()
		:	Positive
			{	compl FieldType{}
			}
		,	Negative
			{	Positive
			}
		{}

		explicit(true) constexpr inline
		(	Clause
		)	(	UIntMax
					i_vPositiveFlags
			)
		:	Positive
			{	i_vPositiveFlags
			}
		,	Negative
			{}
		{}

		explicit(true) constexpr inline
		(	Clause
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

		auto constexpr inline
		(	Evaluate
		)	(	FieldType
					i_vPreset
			)	&
			noexcept
		->	Clause&
		{
			Positive &= compl i_vPreset;
			Negative &= i_vPreset;

			return *this;
		}

		[[nodiscard]]
		auto constexpr inline
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
		auto constexpr inline
		(	Permutation
		)	(	::std::span<IndexType const>
					i_vPermutation
			)	const
		->	Clause
		{
			if	(Positive == Negative)
				return *this;

			Clause
				vResult
			=	Absorbing()
			;

			for	(	auto
						nIndex
				:	::Meta::Bit::Count<LiteralLimit>
					{	i_vPermutation.size()
					}
				)
			{
				if	(Positive[nIndex])
				{
					Set
					(	vResult.Positive
					,	i_vPermutation
						[	static_cast<USize>
							(	nIndex.get()
							)
						]
					);
				}
				else
				if	(Negative[nIndex])
				{
					Set
					(	vResult.Negative
					,	i_vPermutation
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
		auto constexpr inline
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
		auto constexpr inline
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
		auto constexpr inline
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
		auto constexpr inline
		(	operator[]
		)	(	IndexType
					i_nIndex
			)	const
			noexcept
		->	Clause
		{
			FieldType const
				nIndexField
			{	Power
				(	i_nIndex
				)
			};

			Clause
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
		auto friend constexpr inline
		(	operator==
		)	(	Clause
			,	Clause
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<=>
		)	(	Clause
			,	Clause
			)
			noexcept
		->	::std::strong_ordering
		=	default;

		[[nodiscard]]
		auto friend constexpr inline
		(	Intersection
		)	(	Clause
					i_vLeft
			,	Clause
					i_vRight
			)
		->	Clause
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
		auto friend constexpr inline
		(	Union
		)	(	Clause
					i_vLeft
			,	Clause
					i_vRight
			)
		->	Clause
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
		auto friend constexpr inline
		(	Difference
		)	(	Clause
					i_vLeft
			,	Clause
					i_vRight
			)
		->	Clause
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
		auto friend constexpr inline
		(	Inverse
		)	(	Clause
					i_vClause
			)
		->	Clause
		{	if	(i_vClause.Positive == i_vClause.Negative)
				i_vClause.Positive = i_vClause.Negative = compl i_vClause.Positive;
			else
				std::swap(i_vClause.Positive, i_vClause.Negative);
			return i_vClause;
		}

		[[nodiscard]]
		auto constexpr inline
		(	Includes
		)	(	Clause
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
		auto constexpr inline
		(	Intersects
		)	(	Clause
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
	};
}
