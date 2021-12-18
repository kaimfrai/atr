export module Meta.Logic.BitClause;

export import Meta.Common;
export import Std.Bit;
export import Std.Span;

export namespace
	Meta::Logic
{
	using FieldType = ::Meta::UInt<8uz>;
	using IndexType = ::Meta::UInt<8uz>;

	IndexType constexpr inline
		SubtermLimit
	=	4uz
	;

	auto constexpr
	(	BitIndexToField
	)	(	IndexType
				i_vIndex
		)
	->	FieldType
	{	return
		static_cast<FieldType>
		(	1uz
		<<	i_vIndex
		);
	}

	struct
		BitClause
	{
		FieldType Positive : SubtermLimit;
		FieldType Negative : SubtermLimit;

		static auto constexpr
		(	AbsorbingField
		)	()
		->	FieldType
		{	return 0u;	}


		static auto constexpr
		(	IdentityField
		)	()
		{	return
			static_cast<FieldType>
			(	//	generate a sequence of SubtermLimit 1s
				//	does not cause overflows or bitfield conversion warnings
				(	(	(	1u
						<<	(	SubtermLimit
							-	1u
							)
						)
						-	1u
					)
				<<	1u
				)
			+	1u
			);
		}

		constexpr
		(	BitClause
		)	()
		:	Positive
			{	IdentityField()
			}
		,	Negative
			{	IdentityField()
			}
		{}

		explicit constexpr
		(	BitClause
		)	(	FieldType
					i_nPositive
			,	FieldType
					i_nNegative
			)
		:	Positive
			{	(	i_nPositive
				bitand
					i_nNegative
				)
			?	IdentityField()
			:	i_nPositive
			}
		,	Negative
			{	(	i_nPositive
				bitand
					i_nNegative
				)
			?	IdentityField()
			:	i_nNegative
			}
		{}

		auto constexpr
		(	Permutate[[nodiscard]]
		)	(	::std::span<IndexType const>
					i_vPermutation
			)	const
		->	BitClause
		{
			if	(Positive == Negative)
				return *this;

			BitClause
				vResult
			{};
				vResult.Positive
			=	AbsorbingField()
			;
				vResult.Negative
			=	AbsorbingField()
			;
			for	(	IndexType
						nIndex
					=	0uz
				;		nIndex
					<	SubtermLimit
				;	++	nIndex
				)
			{
				if	(Positive bitand BitIndexToField(nIndex))
					vResult.Positive |= BitIndexToField(i_vPermutation[nIndex]);
				else
				if	(Negative bitand BitIndexToField(nIndex))
					vResult.Negative |= BitIndexToField(i_vPermutation[nIndex]);
			}
			return vResult;
		}

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

		friend auto constexpr
		(	LiteralCount
		)	(	BitClause
					i_vClause
			)
		->	IndexType
		{
			if	(	i_vClause.Positive
				==	i_vClause.Negative
				)
				return 0u;

			return
			static_cast<IndexType>
			(	::std::popcount(i_vClause.Positive)
			+	::std::popcount(i_vClause.Negative)
			);
		}

		friend auto constexpr
		(	operator compl [[nodiscard]]
		)	(	BitClause
					i_vClause
			)
		->	BitClause
		{
			if	(	i_vClause.Positive
				==	i_vClause.Negative
				)
			{
				(	i_vClause.Positive
				=	//	correct result even for invalid fields
					i_vClause.Positive == AbsorbingField()
				?	IdentityField()
				:	AbsorbingField()
				);
				i_vClause.Negative = i_vClause.Positive;
				return i_vClause;
			}

			//	cannot use std::swap for bitfields
			FieldType const
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

		friend auto constexpr
		(	operator bitand [[nodiscard]]
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
		(	Insert
		)	(	BitClause
					i_vInsertClause
			)	&
		->	BitClause&
		{
			(	Positive
			|=	i_vInsertClause.Positive
			);

			(	Negative
			|=	i_vInsertClause.Negative
			);

			if	(Positive bitand Negative)
			{
				Positive = IdentityField();
				Negative = IdentityField();
			}

			return *this;
		}

		friend auto constexpr
		(	operator bitor [[nodiscard]]
		)	(	BitClause
					i_vLeft
			,	BitClause
					i_vRight
			)
		->	BitClause
		{	return i_vLeft.Insert(i_vRight);	}

		auto constexpr
		(	Erase
		)	(	BitClause
					i_vEraseClause
			)	&
		->	BitClause&
		{
			(	Positive
			&=	compl
				i_vEraseClause.Positive
			);

			(	Negative
			&=	compl
				i_vEraseClause.Negative
			);

			return *this;
		}

		auto constexpr
		(	Replace
		)	(	BitClause
					i_vOldClause
			,	BitClause
					i_vNewClause
			)	&
		->	BitClause&
		{	return
				Erase(i_vOldClause)
			.	Insert(i_vNewClause)
			;
		}

		auto constexpr
		(	operator[]
		)	(	IndexType
					i_nIndex
			)	const
		->	BitClause
		{
			if	(i_nIndex >= SubtermLimit)
				return BitClause{AbsorbingField(), AbsorbingField()};

			if	(IsIdentity())
				return i_nIndex == 0u ? *this : BitClause{AbsorbingField(), AbsorbingField()};

			return
				(	*this
				bitand
					BitClause{BitIndexToField(i_nIndex), AbsorbingField()}
				)
			bitor
				(	*this
				bitand
					BitClause{AbsorbingField(), BitIndexToField(i_nIndex)}
				)
			;
		}

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
					i_vContained
			)	const
		->	bool
		{	return
			(	i_vContained
			.	Erase(*this)
			.	IsAbsorbing()
			);
		}

		auto constexpr
		(	Intersects
		)	(	BitClause
					i_vIntersection
			)	const
		->	bool
		{	return
			not
			(	(	*this
				bitand
					i_vIntersection
				)
			.	IsAbsorbing()
			);
		}
	};

	auto constexpr inline
		AbsorbingClause
	=	BitClause
		{	BitClause::AbsorbingField()
		,	BitClause::AbsorbingField()
		}
	;

	auto constexpr inline
		IdentityClause
	=	BitClause
		{	BitClause::IdentityField()
		,	BitClause::IdentityField()
		}
	;
}
