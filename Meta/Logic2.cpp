export module Meta.Logic2;

export import Std.Algorithm;
export import Std.Array;
export import Std.Bit;
export import Std.CStdInt;
export import Std.Limits;
export import Std.Compare;
export import Std.Numeric;
export import Std.InitializerList;
export import Std.Functional;
export import Std.Iterator;
export import Std.Span;
export import Std.TypeTraits;
export import Meta.Common;

export
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
		FieldType PositiveField : SubtermLimit;
		FieldType NegativeField : SubtermLimit;

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
		:	PositiveField
			{	IdentityField()
			}
		,	NegativeField
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
		:	PositiveField
			{	(	i_nPositive
				bitand
					i_nNegative
				)
			?	IdentityField()
			:	i_nPositive
			}
		,	NegativeField
			{	(	i_nPositive
				bitand
					i_nNegative
				)
			?	IdentityField()
			:	i_nNegative
			}
		{}

		auto constexpr
		(	Permutate
		)	(	::std::span<IndexType const>
					i_vPermutation
			)	const
		->	BitClause
		{
			if	(IsIdentity(*this) or IsAbsorbing(*this))
				return *this;

			FieldType
				vPositiveField
			=	AbsorbingField()
			;
			FieldType
				vNegativeField
			=	AbsorbingField()
			;
			for	(	IndexType nIndex = 0u
				;	nIndex < SubtermLimit
				;	++nIndex
				)
			{
				if	(PositiveField bitand BitIndexToField(nIndex))
					vPositiveField |= BitIndexToField(i_vPermutation[nIndex]);
				else
				if	(NegativeField bitand BitIndexToField(nIndex))
					vNegativeField |= BitIndexToField(i_vPermutation[nIndex]);
			}
			return BitClause{vPositiveField, vNegativeField};
		}

		friend auto constexpr
		(	IsAbsorbing
		)	(	BitClause
					i_vClause
			)
		->	bool
		{	return
			not
			(	i_vClause.PositiveField
			bitor
				i_vClause.NegativeField
			);
		}

		friend auto constexpr
		(	IsIdentity
		)	(	BitClause
					i_vClause
			)
		->	bool
		{	return
			(	i_vClause.PositiveField
			bitand
				i_vClause.NegativeField
			);
		}

		friend auto constexpr
		(	LiteralCount
		)	(	BitClause
					i_vClause
			)
		->	IndexType
		{
			if	(IsIdentity(i_vClause))
				return 0u;

			return
			static_cast<IndexType>
			(	::std::popcount(i_vClause.PositiveField)
			+	::std::popcount(i_vClause.NegativeField)
			);
		}

		friend auto constexpr
		(	operator compl
		)	(	BitClause
					i_vClause
			)
		->	BitClause
		{
			if	(	IsAbsorbing(i_vClause)
				or	IsIdentity(i_vClause)
				)
				return
				BitClause
				{	static_cast<FieldType>
					(	compl
						i_vClause.PositiveField
					)
				,	static_cast<FieldType>
					(	compl
						i_vClause.NegativeField
					)
				};

			return
			BitClause
			{	i_vClause.NegativeField
			,	i_vClause.PositiveField
			};
		}

		friend auto constexpr
		(	operator bitand
		)	(	BitClause
					i_vLeft
			,	BitClause
					i_vRight
			)
		->	BitClause
		{	return
			BitClause
			{	static_cast<FieldType>
				(	i_vLeft.PositiveField
				bitand
					i_vRight.PositiveField
				)
			,	static_cast<FieldType>
				(	i_vLeft.NegativeField
				bitand
					i_vRight.NegativeField
				)
			};
		}

		friend auto constexpr
		(	operator bitor
		)	(	BitClause
					i_vLeft
			,	BitClause
					i_vRight
			)
		->	BitClause
		{	return
			BitClause
			{	static_cast<FieldType>
				(	i_vLeft.PositiveField
				bitor
					i_vRight.PositiveField
				)
			,	static_cast<FieldType>
				(	i_vLeft.NegativeField
				bitor
					i_vRight.NegativeField
				)
			};
		}

		auto constexpr
		(	Replace[[nodiscard]]
		)	(	BitClause
					i_vOld
			,	BitClause
					i_vNew
			)	const&
		->	BitClause
		{
			if	(i_vOld == i_vNew)
				return *this;
			if	(IsIdentity(i_vNew))
				return i_vNew;

			return
				BitClause
				{	static_cast<FieldType>
					(	PositiveField
					bitand compl
						i_vOld.PositiveField
					)
				,	static_cast<FieldType>
					(	NegativeField
					bitand compl
						i_vOld.NegativeField
					)
				}
			bitor
				i_vNew
			;
		}

		auto constexpr
		(	Insert[[nodiscard]]
		)	(	BitClause
					i_vInsert
			)	const&
		->	BitClause
		{	return Replace(BitClause{AbsorbingField(), AbsorbingField()}, i_vInsert);	}

		auto constexpr
		(	Erase[[nodiscard]]
		)	(	BitClause
					i_vErase
			)	const&
		->	BitClause
		{	return Replace(i_vErase, BitClause{AbsorbingField(), AbsorbingField()});	}

		auto constexpr
		(	AssumeTrue[[nodiscard]]
		)	(	BitClause
					i_vClause
			)	const&
		->	BitClause
		{
			if	((*this bitand compl i_vClause) != BitClause{AbsorbingField(), AbsorbingField()})
				return BitClause{IdentityField(), IdentityField()};

			return Erase(i_vClause);
		}

		auto constexpr
		(	operator[]
		)	(	::IndexType
					i_nIndex
			)	const
		->	BitClause
		{
			if	(i_nIndex >= SubtermLimit)
				return BitClause{AbsorbingField(), AbsorbingField()};

			if	(IsIdentity(*this))
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
					i_vLeftClause
			,	BitClause
					i_vRightClause
			)
		->	bool
		=	default;

		friend auto constexpr
		(	operator<=>
		)	(	BitClause
					i_vLeftClause
			,	BitClause
					i_vRightClause
			)
		->	::std::strong_ordering
		=	default;

		auto constexpr
		(	Contains
		)	(	BitClause
					i_vContained
			)	const&
		->	bool
		{	return
			(	(	AbsorbingField()
				==	(	i_vContained.PositiveField
					bitand compl
						PositiveField
					)
				)
			and	(	AbsorbingField()
				==	(	i_vContained.NegativeField
					bitand compl
						NegativeField
					)
				)
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

	struct
		BitTerm
	{
		using
			BitClauseStorageType
		=	::std::array
			<	BitClause
			,	SubtermLimit
			>
		;

		BitClauseStorageType
			m_vClauses
		{};

		constexpr
		(	BitTerm
		)	(	BitClause
					i_vClause
				=	IdentityClause
			)
		:	m_vClauses
			{	i_vClause
			}
		{}

		explicit constexpr
		(	BitTerm
		)	(	BitClauseStorageType
					i_vClauseStorage
			)
		:	m_vClauses
			{	(	(void)::std::sort
					(	begin(i_vClauseStorage)
					,	end(i_vClauseStorage)
					)
				,	i_vClauseStorage
				)
			}
		{}

		constexpr
		(	operator
			::std::span<BitClause const>
		)	()	const&
		{	return {begin(*this), end(*this)};	}

		auto constexpr
		(	Permutate
		)	(	::std::span<IndexType const>
					i_vPermutation
			)	const
		->	BitTerm
		{
			BitClauseStorageType
				vPermutated
			=	m_vClauses
			;
			BitClause* aBegin = begin(vPermutated);
			BitClause* const aEnd = aBegin + ClauseCount(*this);
			for (; aBegin != aEnd; ++aBegin)
				*aBegin = aBegin->Permutate(i_vPermutation);
			return
			BitTerm
			{	vPermutated
			};
		}

		friend auto constexpr
		(	IsAbsorbing
		)	(	BitTerm const
				&	i_rTerm
			)
		->	bool
		{	return IsAbsorbing(i_rTerm.m_vClauses[0u]);	}

		friend auto constexpr
		(	IsIdentity
		)	(	BitTerm const
				&	i_rTerm
			)
		->	bool
		{	return IsIdentity(i_rTerm.m_vClauses[0u]);	}

		auto constexpr
		(	operator []
		)	(	IndexType
					i_nIndex
			)	const&
		->	BitClause
		{
			if	(IsAbsorbing(*this))
				return m_vClauses[0u];

			if	(i_nIndex >= ClauseCount(*this))
				return IdentityClause;

			return m_vClauses[i_nIndex];
		}

		friend auto constexpr
		(	operator ==
		)	(	BitTerm const
				&	i_rLeftTerm
			,	BitTerm const
				&	i_rRightTerm
			)
		->	bool
		{	return
			::std::equal
			(	begin(i_rLeftTerm)
			,	end(i_rLeftTerm)
			,	begin(i_rRightTerm)
			,	end(i_rRightTerm)
			);
		}


		friend auto constexpr
		(	begin
		)	(	BitTerm
				&	i_rTerm
			)
		->	BitClause*
		{	return begin(i_rTerm.m_vClauses);	}

		friend auto constexpr
		(	begin
		)	(	BitTerm const
				&	i_rTerm
			)
		->	BitClause const*
		{	return begin(i_rTerm.m_vClauses);	}

		friend auto constexpr
		(	end
		)	(	BitTerm
				&	i_rTerm
			)
		->	BitClause*
		{	return
			::std::lower_bound
			(	begin(i_rTerm.m_vClauses)
			,	end(i_rTerm.m_vClauses)
			,	IdentityClause
			);
		}

		friend auto constexpr
		(	end
		)	(	BitTerm const
				&	i_rTerm
			)
		->	BitClause const*
		{	return
			::std::lower_bound
			(	begin(i_rTerm.m_vClauses)
			,	end(i_rTerm.m_vClauses)
			,	IdentityClause
			);
		}

		friend auto constexpr
		(	ClauseCount
		)	(	BitTerm const
				&	i_rTerm
			)
		->	::std::size_t
		{
			if	(IsAbsorbing(i_rTerm))
				return 0uz;

			return
			static_cast<::std::size_t>
			(	end(i_rTerm)
			-	begin(i_rTerm)
			);
		}

		friend auto constexpr
		(	operator or
		)	(	BitTerm const&
			,	BitTerm const&
			)
		->	BitTerm
		;

		friend auto constexpr
		(	operator and
		)	(	BitTerm const
				&	i_rLeftTerm
			,	BitTerm const
				&	i_rRightTerm
			)
		->	BitTerm;

		friend auto constexpr
		(	operator not
		)	(	BitTerm const
				&	i_rTerm
			)
		->	BitTerm
		;
	};
}

auto constexpr
(	InsertClause
)	(	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aTermEnd
	,	BitClause
			i_vInsertClause
	)
->	BitClause*
{
	bool bInserted = false;
	for	(	BitClause
			*	aPosition
			=	i_aTermEnd
		;		aPosition
			!=	i_aTermBegin
		;
		)
	{
		--aPosition;
		//	insert clause is redundant
		if	(i_vInsertClause.Contains(*aPosition))
			return i_aTermEnd;

		//	overwrite redundant clause
		if	(aPosition->Contains(i_vInsertClause))
		{
			if	(not bInserted)
			{
				*aPosition = i_vInsertClause;
				bInserted = true;
			}
			else
			{
				::std::move(aPosition + 1z, i_aTermEnd, aPosition);
				--i_aTermEnd;
			}
		}
	}
	if	(not bInserted)
		*(i_aTermEnd++) = i_vInsertClause;

	return i_aTermEnd;
}

auto constexpr
(	Optimize
)	(	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aTermEnd
	,	bool
			i_bOptimizeAlternatives
	)
->	BitClause*
;

auto constexpr
(	IsLiteralRedundant
)	(	BitClause
			i_vLiteral
	,	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aCurrentClause
	,	BitClause
		*	i_aTermEnd
	,	BitClause
		*	i_aRedundancyCondition
	)
->	bool
{
	BitClause
	*	aRedundancyConditionEnd
	=	i_aRedundancyCondition
	;
	for	(	BitClause
			*	aTransformClause
			=	i_aTermBegin
		;		aTransformClause
			!=	i_aTermEnd
		;	++	aTransformClause
		)
	{
		//	skip containing clause
		if	(aTransformClause == i_aCurrentClause)
			continue;

		//	free literal contained in term
		if	(	*aTransformClause
			==	i_vLiteral
			)
			return true;

		//	contains the literal => Identity
		if	(	(	aTransformClause->PositiveField
				bitand
					i_vLiteral.PositiveField
				)
			or	(	aTransformClause->NegativeField
				bitand
					i_vLiteral.NegativeField
				)
			)
			continue;

		//	erase negation of literal from clause
		BitClause
			vRedundancyClause
		=	*aTransformClause
		;
		(	vRedundancyClause.PositiveField
		&=	compl
			i_vLiteral.NegativeField
		);
		(	vRedundancyClause.NegativeField
		&=	compl
			i_vLiteral.PositiveField
		);

		//	contains negation of literal in current clause
		//	=>	Identity
		if	(	(	vRedundancyClause.PositiveField
				bitand
					i_aCurrentClause->NegativeField
				)
			or	(	vRedundancyClause.NegativeField
				bitand
					i_aCurrentClause->PositiveField
				)
			)
			continue;

		(	vRedundancyClause.PositiveField
		&=	compl
			i_aCurrentClause->PositiveField
		);
		(	vRedundancyClause.NegativeField
		&=	compl
			i_aCurrentClause->NegativeField
		);

		if	(IsAbsorbing(vRedundancyClause))
			return true;

		*(aRedundancyConditionEnd++) = vRedundancyClause;
	}

	(	aRedundancyConditionEnd
	=	Optimize
		(	i_aRedundancyCondition
		,	aRedundancyConditionEnd
		,	false
		)
	);

	return
		(	i_aRedundancyCondition + 1z
		==	aRedundancyConditionEnd
		)
	and	IsAbsorbing(*i_aRedundancyCondition)
	;
}

auto constexpr
(	OptimizeLength
)	(	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aTermEnd
	,	BitClause
		*	i_aRedundancyBuffer
	)
->	BitClause*
;

auto constexpr
(	OptimizeLiterals
)	(	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aTermEnd
	,	BitClause
		*	i_aRedundancyBuffer
	)
->	BitClause*
{
	for	(	BitClause
			*	aCurrentClause
			=	i_aTermBegin
		;		aCurrentClause
			!=	i_aTermEnd
		;	++	aCurrentClause
		)
	{
		BitClause
		&	rClause
		=	*aCurrentClause
		;
		for	(	IndexType
					nIndex
				{}
			;		nIndex
				<	SubtermLimit
			;	++	nIndex
			)
		{
			BitClause const
				vLiteral
			=	rClause
				[	nIndex
				]
			;
			if	(IsAbsorbing(vLiteral))
				continue;

			if	(	IsLiteralRedundant
					(	vLiteral
					,	i_aTermBegin
					,	aCurrentClause
					,	i_aTermEnd
					,	i_aRedundancyBuffer
					)
				)
			{
				if	(vLiteral == rClause)
				{
					//	only literal gets erased
					//	resulting term is always absorbing
					*i_aTermBegin = AbsorbingClause;
					return i_aTermBegin + 1z;
				}

				//	erase the literal
				rClause.PositiveField &= compl vLiteral.PositiveField;
				rClause.NegativeField &= compl vLiteral.NegativeField;
				return OptimizeLength(i_aTermBegin, i_aTermEnd, i_aRedundancyBuffer);
			}
		}
	}
	return i_aTermEnd;
}

auto constexpr
(	IsClauseRedundant
)	(	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aCurrentClause
	,	BitClause
		*	i_aTermEnd
	,	BitClause
		*	i_aRedundancyCondition
	)
->	bool
{
	BitClause
	*	aRedundancyConditionEnd
	=	i_aRedundancyCondition
	;
	for	(	BitClause
			*	aTransformClause
			=	i_aTermBegin
		;		aTransformClause
			!=	i_aTermEnd
		;	++	aTransformClause
		)
	{
		//	skip containing clause
		if	(aTransformClause == i_aCurrentClause)
			continue;

		BitClause
			vRedundancyClause
		=	*aTransformClause
		;

		//	contains negation of literal in current clause
		//	=>	Identity
		if	(	(	vRedundancyClause.PositiveField
				bitand
					i_aCurrentClause->NegativeField
				)
			or	(	vRedundancyClause.NegativeField
				bitand
					i_aCurrentClause->PositiveField
				)
			)
			continue;

		(	vRedundancyClause.PositiveField
		&=	compl
			i_aCurrentClause->PositiveField
		);
		(	vRedundancyClause.NegativeField
		&=	compl
			i_aCurrentClause->NegativeField
		);

		if	(IsAbsorbing(vRedundancyClause))
			return true;

		*(aRedundancyConditionEnd++) = vRedundancyClause;
	}

	(	aRedundancyConditionEnd
	=	Optimize
		(	i_aRedundancyCondition
		,	aRedundancyConditionEnd
		,	false
		)
	);

	return
		(	i_aRedundancyCondition + 1z
		==	aRedundancyConditionEnd
		)
	and	IsAbsorbing(*i_aRedundancyCondition)
	;
}

auto constexpr
(	OptimizeClauses
)	(	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aTermEnd
	,	BitClause
		*	i_aRedundancyBuffer
	)
->	BitClause*
{
	::std::sort(i_aTermBegin, i_aTermEnd);
	for	(	BitClause
			*	aClause
			=	i_aTermEnd
		;		aClause
			!=	i_aTermBegin
		;
		)
	{
		--aClause;
		if	(	IsClauseRedundant
				(	i_aTermBegin
				,	aClause
				,	i_aTermEnd
				,	i_aRedundancyBuffer
				)
			)
		{
			::std::move(aClause + 1z, i_aTermEnd, aClause);
			--i_aTermEnd;
		}
	}
	return i_aTermEnd;
}

auto constexpr
(	OptimizeLength
)	(	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aTermEnd
	,	BitClause
		*	i_aRedundancyBuffer
	)
->	BitClause*
{
	i_aTermEnd = OptimizeClauses(i_aTermBegin, i_aTermEnd, i_aRedundancyBuffer);
	return OptimizeLiterals(i_aTermBegin, i_aTermEnd, i_aRedundancyBuffer);
}

auto constexpr
(	LiteralRedundancyCondition
)	(	BitClause
			i_vLiteral
	,	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aCurrentClause
	,	BitClause
		*	i_aTermEnd
	,	BitClause
		*	i_aRedundancyCondition
	)
->	BitClause*
{
	BitClause
	*	aRedundancyConditionEnd
	=	i_aRedundancyCondition
	;
	for	(	BitClause
			*	aRedundancyClause
			=	i_aTermBegin
		;		aRedundancyClause
			!=	i_aTermEnd
		;	++	aRedundancyClause
		)
	{
		//	skip containing clause
		if	(aRedundancyClause == i_aCurrentClause)
			continue;

		//	free literal contained in term
		if	(	*aRedundancyClause
			==	i_vLiteral
			)
		{
			*i_aRedundancyCondition = AbsorbingClause;
			return i_aRedundancyCondition + 1z;
		}

		//	contains the literal => Identity
		if	(	(	aRedundancyClause->PositiveField
				bitand
					i_vLiteral.PositiveField
				)
			or	(	aRedundancyClause->NegativeField
				bitand
					i_vLiteral.NegativeField
				)
			)
			continue;

		//	erase negation of literal from clause
		BitClause
			vRedundancyClause
		=	*aRedundancyClause
		;
		(	vRedundancyClause.PositiveField
		&=	compl
			i_vLiteral.NegativeField
		);
		(	vRedundancyClause.NegativeField
		&=	compl
			i_vLiteral.PositiveField
		);

		//	contains negation of literal in current clause
		//	=>	Identity
		if	(	(	vRedundancyClause.PositiveField
				bitand
					i_aCurrentClause->NegativeField
				)
			or	(	vRedundancyClause.NegativeField
				bitand
					i_aCurrentClause->PositiveField
				)
			)
			continue;

		(	vRedundancyClause.PositiveField
		&=	compl
			i_aCurrentClause->PositiveField
		);
		(	vRedundancyClause.NegativeField
		&=	compl
			i_aCurrentClause->NegativeField
		);

		if	(IsAbsorbing(vRedundancyClause))
		{
			*i_aRedundancyCondition = AbsorbingClause;
			return i_aRedundancyCondition + 1z;
		}

		*(aRedundancyConditionEnd++) = vRedundancyClause;
	}

	return
	Optimize
	(	i_aRedundancyCondition
	,	aRedundancyConditionEnd
	,	false
	);
}


auto constexpr
(	OptimizeAlternatives
)	(	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aTermEnd
	,	BitClause
		*	i_aRedundancyCondition
	)
->	BitClause*
{
	for	(	BitClause
			*	aCurrentClause
			=	i_aTermBegin
		;		aCurrentClause
			!=	i_aTermEnd
		;	++	aCurrentClause
		)
	{
		BitClause
		&	rClause
		=	*aCurrentClause
		;
		for	(	IndexType
					nIndex
				{}
			;		nIndex
				<	SubtermLimit
			;	++	nIndex
			)
		{
			BitClause const
				vLiteral
			=	rClause
				[	nIndex
				]
			;
			if	(IsAbsorbing(vLiteral))
				continue;

			BitClause
			*	aRedundancyConditionEnd
			=	LiteralRedundancyCondition
				(	vLiteral
				,	i_aTermBegin
				,	aCurrentClause
				,	i_aTermEnd
				,	i_aRedundancyCondition
				)
			;

			if	(IsIdentity(*i_aRedundancyCondition))
				continue;

			BitClause
				vWithoutLiteral
			=	rClause
			;
			vWithoutLiteral.PositiveField &= compl vLiteral.PositiveField;
			vWithoutLiteral.NegativeField &= compl vLiteral.NegativeField;

			for	(	BitClause
					*	aRedundancyClause
					=	i_aRedundancyCondition
				;		aRedundancyClause
					!=	aRedundancyConditionEnd
				;	++	aRedundancyClause
				)
			{
				aRedundancyClause->PositiveField |= vWithoutLiteral.PositiveField;
				aRedundancyClause->NegativeField |= vWithoutLiteral.NegativeField;

				i_aTermEnd = InsertClause(i_aTermBegin, i_aTermEnd, *aRedundancyClause);
			}
		}
	}

	return OptimizeClauses(i_aTermBegin, i_aTermEnd, i_aRedundancyCondition);
}


auto constexpr
(	Optimize
)	(	BitClause
		*	i_aTermBegin
	,	BitClause
		*	i_aTermEnd
	,	bool
			i_bOptimizeAlternatives
	)
->	BitClause*
{
	auto const
		nClauseCount
	=	(	i_aTermEnd
		-	i_aTermBegin
		)
	;
	if	(nClauseCount <= 1z)
		return i_aTermEnd;

	auto const
		nRedundancyClauseCount
	=	(	//	#ClauseCount - 1 are needed to evaluate Redundancy of a Clause or Literal
			nClauseCount
		-	1z
		+	//	an additional #ClauseCount are needed to evaluate Terms with alternative Clauses
			i_bOptimizeAlternatives
		*	nClauseCount
		)
	;

	BitClause
	*	aRedundancyBuffer
	=	new BitClause
		[	static_cast<::std::size_t>
			(	nRedundancyClauseCount
			)
		]{}
	;
	i_aTermEnd = OptimizeLength(i_aTermBegin, i_aTermEnd, aRedundancyBuffer);
	if	(i_bOptimizeAlternatives)
	{
		i_aTermEnd = OptimizeAlternatives(i_aTermBegin, i_aTermEnd, aRedundancyBuffer);
	}

	delete[]
		aRedundancyBuffer
	;
	return i_aTermEnd;
}

export
{
auto constexpr
(	operator or
)	(	BitTerm const
		&	i_rLeftTerm
	,	BitTerm const
		&	i_rRightTerm
	)
->	BitTerm
{
	if	(IsAbsorbing(i_rLeftTerm) or IsAbsorbing(i_rRightTerm))
		return AbsorbingClause;

	if	(IsIdentity(i_rLeftTerm))
		return i_rRightTerm;
	if	(IsIdentity(i_rRightTerm))
		return i_rLeftTerm;

	if	(i_rLeftTerm.m_vClauses == i_rRightTerm.m_vClauses)
		return i_rLeftTerm;

	auto const
		nMaxClauseCount
	=	//	while creating alternative clauses up to twice the amount of clauses are needed
		2uz
	*	(	ClauseCount(i_rLeftTerm)
		+	ClauseCount(i_rRightTerm)
		)
	;

	BitTerm
		vResultTerm
	{};

	bool const
		bDynamicBuffer
	=	nMaxClauseCount
	>	SubtermLimit
	;

	BitClause
	*	const
		aClauseBuffer
	=	bDynamicBuffer
	?	new BitClause
		[	nMaxClauseCount
		]{}
	:	vResultTerm.m_vClauses.data()
	;

	BitClause
	*	aClauseBufferEnd
	=	::std::set_union
		(	begin(i_rLeftTerm)
		,	end(i_rLeftTerm)
		,	begin(i_rRightTerm)
		,	end(i_rRightTerm)
		,	aClauseBuffer
		)
	;

	(	aClauseBufferEnd
	=	Optimize
		(	aClauseBuffer
		,	aClauseBufferEnd
		,	true
		)
	);

	if	(bDynamicBuffer)
	{
		::std::copy
		(	aClauseBuffer
		,	aClauseBufferEnd
		,	begin(vResultTerm.m_vClauses)
		);

		delete[]
			aClauseBuffer
		;
	}
	else
	{
		::std::fill(aClauseBufferEnd, aClauseBuffer + SubtermLimit, IdentityClause);
	}
	return vResultTerm;
}

auto constexpr
(	operator and
)	(	BitTerm const
		&	i_rLeftTerm
	,	BitTerm const
		&	i_rRightTerm
	)
->	BitTerm
{
	if	(IsIdentity(i_rLeftTerm) or IsIdentity(i_rRightTerm))
		return IdentityClause;

	if	(IsAbsorbing(i_rLeftTerm))
		return i_rRightTerm;
	if	(IsAbsorbing(i_rRightTerm))
		return i_rLeftTerm;

	if	(i_rLeftTerm.m_vClauses == i_rRightTerm.m_vClauses)
		return i_rLeftTerm;

	auto const
		nMaxClauseCount
	=	//	while creating alternative clauses up to twice the amount of clauses are needed
		2uz
	*	ClauseCount(i_rLeftTerm)
	*	ClauseCount(i_rRightTerm)
	;

	BitTerm
		vResultTerm
	{};

	bool const
		bDynamicBuffer
	=	nMaxClauseCount
	>	SubtermLimit
	;

	BitClause
	*	const
		aClauseBuffer
	=	bDynamicBuffer
	?	new BitClause
		[	nMaxClauseCount
		]{}
	:	vResultTerm.m_vClauses.data()
	;

	BitClause
	*	aClauseBufferEnd
	=	aClauseBuffer
	;

	for	(	BitClause
				i_vLeftClause
		:	i_rLeftTerm
		)
	{
		for	(	BitClause
					i_vRightClause
			:	i_rRightTerm
			)
		{
			BitClause const
				vMergedClause
			=	i_vLeftClause
			bitor
				i_vRightClause
			;
			if	(vMergedClause == IdentityClause)
				continue;

			*(aClauseBufferEnd++) = vMergedClause;
		}
	}

	(	aClauseBufferEnd
	=	Optimize
		(	aClauseBuffer
		,	aClauseBufferEnd
		,	true
		)
	);

	if	(bDynamicBuffer)
	{
		::std::copy
		(	aClauseBuffer
		,	aClauseBufferEnd
		,	begin(vResultTerm.m_vClauses)
		);

		delete[]
			aClauseBuffer
		;
	}
	else
	{
		::std::fill(aClauseBufferEnd, aClauseBuffer + SubtermLimit, IdentityClause);
	}
	return vResultTerm;
}

auto constexpr
(	operator not
)	(	BitTerm const
		&	i_rTerm
	)
->	BitTerm
{
	if	(IsAbsorbing(i_rTerm))
		return {};

	if	(IsIdentity(i_rTerm))
		return AbsorbingClause;

	if	(ClauseCount(i_rTerm) == 1u)
	{
		BitTerm::BitClauseStorageType vClauses{};
		for	(	IndexType nIndex = 0u
			;	nIndex < SubtermLimit
			;	++nIndex
			)
			(	vClauses[nIndex]
			=	compl
				i_rTerm[0u]
				[nIndex]
			);
		return
		BitTerm
		{	vClauses
		};
	}
	if	(	ClauseCount(i_rTerm) == 1u
		and	LiteralCount(i_rTerm[0u]) == 1u
		)
	{
		BitClause vResult = AbsorbingClause;
		for (BitClause vClause : i_rTerm)
			vResult = vResult | compl vClause;
		return vResult;
	}

	BitTerm vResult{AbsorbingClause};
	for	(BitClause vClause : i_rTerm)
		vResult = vResult and not vClause;
	return vResult;
}

}

template
	<	typename
			t_tPredicate
	>
struct
	MapToIndex
{
	IndexType
		Index
	;

	auto constexpr
	(	operator()
	)	(	MapToIndex
		)	const
	->	IndexType
	{	return Index;	}
};


template
	<	typename
		...	t_tpPredicate
	>
struct
	IndexMap
:	MapToIndex
	<	t_tpPredicate
	>
	...
{
	using MapToIndex<t_tpPredicate>::operator()...;

	template
		<	::std::size_t
			...	t_npIndex
		>
	constexpr
	(	IndexMap
	)	(	::std::index_sequence
			<	t_npIndex
				...
			>
		)
	:	MapToIndex
		<	t_tpPredicate
		>{	t_npIndex
		}
		...
	{}

	constexpr
	(	IndexMap
	)	()
	:	IndexMap
		{	::std::make_index_sequence
			<	sizeof...(t_tpPredicate)
			>{}
		}
	{}

	template
		<	typename
				t_tNewPredicate
		>
	friend auto constexpr
	(	operator +
	)	(	IndexMap const
			&	i_rIndexMap
		,	MapToIndex<t_tNewPredicate>
		)
	{
		if	constexpr
			(	requires
				{	static_cast
					<	MapToIndex<t_tNewPredicate> const *
					>(	&i_rIndexMap
					);
				}
			)
			return i_rIndexMap;
		else
			return
			IndexMap
			<	t_tpPredicate
				...
			,	t_tNewPredicate
			>{};
	}
};

export namespace
	Meta
{
	template
		<	BitTerm
				t_vTerm
		,	typename
			...	t_tpPredicate
		>
	struct
		Term
	{
		template
			<	typename
				...	t_tpNewPredicate
			>
		static auto constexpr
		(	SetPredicates
		)	(	IndexMap
				<	t_tpNewPredicate
					...
				>
			)
		->	Term
			<	t_vTerm
			,	t_tpNewPredicate
				...
			>
		{	return {};	}


		friend auto constexpr
		(	operator not
		)	(	Term
			)
		->	Term
			<	not
				t_vTerm
			,	t_tpPredicate
				...
			>
		{	return {};	}


		friend auto constexpr
		(	operator and
		)	(	Term
					i_vLeft
			,	Term
			)
		->	Term
		{	return i_vLeft;	}

		friend auto constexpr
		(	operator or
		)	(	Term
					i_vLeft
			,	Term
			)
		->	Term
		{	return i_vLeft;	}

		template
			<	BitTerm
					t_vRightTerm
			>
		friend auto constexpr
		(	operator and
		)	(	Term
			,	Term<t_vRightTerm, t_tpPredicate...>
			)
		->	Term
			<	t_vTerm and t_vRightTerm
			,	t_tpPredicate...
			>
		{	return	{};	}

		template
			<	BitTerm
					t_vRightTerm
			>
		friend auto constexpr
		(	operator or
		)	(	Term
			,	Term<t_vRightTerm, t_tpPredicate...>
			)
		->	Term
			<	t_vTerm or t_vRightTerm
			,	t_tpPredicate...
			>
		{	return	{};	}

		template
			<	BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		friend auto constexpr
		(	operator and
		)	(	Term
			,	Term<t_vRightTerm, t_tpRightPredicate...>
			)
		{	auto constexpr
				vIndexMap
			=(	IndexMap<t_tpPredicate...>{}
			+	...
			+	MapToIndex<t_tpRightPredicate>{}
			);

			::std::array constexpr
				vMapArray
			={	vIndexMap
				(	MapToIndex<t_tpRightPredicate>{}
				)
				...
			};

			auto constexpr
				t_vPermutatedTerm
			=	t_vRightTerm.Permutate(vMapArray)
			;
			auto constexpr
				vResultTerm
			=	t_vTerm
			and	t_vPermutatedTerm
			;
			return
				Term<vResultTerm>::SetPredicates(vIndexMap);
		}

		template
			<	BitTerm
					t_vRightTerm
			,	typename
				...	t_tpRightPredicate
			>
		friend auto constexpr
		(	operator or
		)	(	Term
			,	Term<t_vRightTerm, t_tpRightPredicate...>
			)
		{	auto constexpr
				vIndexMap
			=(	IndexMap<t_tpPredicate...>{}
			+	...
			+	MapToIndex<t_tpRightPredicate>{}
			);

			::std::array constexpr
				vMapArray
			={	vIndexMap
				(	MapToIndex<t_tpRightPredicate>{}
				)
				...
			};

			auto constexpr
				t_vPermutatedTerm
			=	t_vRightTerm.Permutate(vMapArray)
			;
			auto constexpr
				vResultTerm
			=	t_vTerm
			or	t_vPermutatedTerm
			;
			return
				Term<vResultTerm>::SetPredicates(vIndexMap);
		}
	};

	template
		<	typename
				t_tPredicate
		>
	using
		Atom
	=	Term
		<	::BitTerm{BitClause{1u, 0u}}
		,	t_tPredicate
		>
	;
}

::Meta::Atom<int> constexpr inline f = {};
::Meta::Atom<void> constexpr inline g = {};
auto constexpr inline h = f and g;
auto constexpr inline i = g and f;
auto constexpr inline j = h and i;
auto constexpr inline j2 = i and h;
