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
export import Std.Ranges;
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
		)	(	::IndexType
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

	struct
		BitTerm
	{
		BitClause
			Clauses
		[	SubtermLimit
		]{};

		constexpr
		(	BitTerm
		)	(	BitClause
					i_vClause
				=	IdentityClause
			)
		:	Clauses
			{	i_vClause
			}
		{}

		auto constexpr
		(	Permutate
		)	(	::std::span<IndexType const>
					i_vPermutation
			)	const
		->	BitTerm
		{
			BitTerm
				vCopy
			=	*this
			;

			for	(	BitClause
					&	rClause
				:	vCopy
				)
				(	rClause
				=	rClause.Permutate(i_vPermutation)
				);

			return vCopy;
		}

		auto constexpr
		(	IsAbsorbing
		)	()	const
		->	bool
		{	return Clauses[0u].IsAbsorbing();	}

		auto constexpr
		(	IsIdentity
		)	()	const
		->	bool
		{	return Clauses[0u].IsIdentity();	}

		auto constexpr
		(	operator []
		)	(	IndexType
					i_nIndex
			)	const&
		->	BitClause
		{
			if	(IsAbsorbing())
				return Clauses[0u];

			if	(i_nIndex >= ClauseCount(*this))
				return IdentityClause;

			return Clauses[i_nIndex];
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
		{	return i_rTerm.Clauses;	}

		friend auto constexpr
		(	begin
		)	(	BitTerm const
				&	i_rTerm
			)
		->	BitClause const*
		{	return i_rTerm.Clauses;	}

		friend auto constexpr
		(	end
		)	(	BitTerm
				&	i_rTerm
			)
		->	BitClause*
		{	return
			::std::lower_bound
			(	i_rTerm.Clauses
			,	i_rTerm.Clauses + SubtermLimit
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
			(	i_rTerm.Clauses
			,	i_rTerm.Clauses + SubtermLimit
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
			if	(i_rTerm.IsAbsorbing())
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
		)	(	BitTerm const&
			,	BitTerm const&
			)
		->	BitTerm;

		friend auto constexpr
		(	operator not
		)	(	BitTerm const&
			)
		->	BitTerm
		;
	};
}

struct
	Optimizer
{
	BitClause
	*	const
		m_aTermBegin
	;
	BitClause
	*	m_aTermEnd
	;

	friend auto constexpr
	(	begin
	)	(	Optimizer const
			&	i_rOptimizer
		)
	->	BitClause*
	{	return i_rOptimizer.m_aTermBegin;	}

	friend auto constexpr
	(	end
	)	(	Optimizer const
			&	i_rOptimizer
		)
	->	BitClause*
	{	return i_rOptimizer.m_aTermEnd;	}

	explicit constexpr
	(	Optimizer
	)	(	::std::size_t
				i_nClauseCount
		)
	:	m_aTermBegin
		{	new	BitClause
			[	i_nClauseCount
			]
		}
	,	m_aTermEnd
		{	m_aTermBegin
		}
	{}

	auto constexpr
	(	ToBitTerm
	)	()	const
	{
		BitTerm
			vResult
		{};

		::std::copy
		(	m_aTermBegin
		,	m_aTermEnd
		,	vResult.Clauses
		);
		return vResult;
	}

	constexpr
	(	compl Optimizer
	)	()
	{
		delete[]
			m_aTermBegin
		;
	}

	auto constexpr
	(	clear
	)	()
	->	void
	{	m_aTermEnd = m_aTermBegin;	}

	auto constexpr
	(	size
	)	()	const
	->	::std::size_t
	{	return
		static_cast<::std::size_t>
		(	m_aTermEnd
		-	m_aTermBegin
		);
	}

	auto constexpr
	(	operator[]
	)	(	::std::size_t
				i_nIndex
		)	&
	->	BitClause&
	{	return m_aTermBegin[i_nIndex];	}

	auto constexpr
	(	operator[]
	)	(	::std::size_t
				i_nIndex
		)	const&
	->	BitClause const&
	{	return m_aTermBegin[i_nIndex];	}

	auto constexpr
	(	IsAbsorbing
	)	()	const
	{	return
			size() == 1uz
		and	(	m_aTermBegin[0uz]
			==	AbsorbingClause
			)
		;
	}

	auto constexpr
	(	IsIdentity
	)	()	const
	{	return
			size()
		==	0uz
		;
	}

	auto constexpr
	(	ReverseView
	)	()	const
	{
		struct
		{
			BitClause
			*	m_aTermBegin
			;
			BitClause
			*	m_aTermEnd
			;

			auto constexpr
			(	begin
			)	()	const
			{	return
				::std::make_reverse_iterator
				(	m_aTermEnd
				);
			}

			auto constexpr
			(	end
			)	()	const
			{	return
				::std::make_reverse_iterator
				(	m_aTermBegin
				);
			}
		}	vReverseView
		{	m_aTermBegin
		,	m_aTermEnd
		};
		return vReverseView;
	}

	auto constexpr
	(	insert
	)	(	BitClause
				i_vInsertClause
		)
	->	bool
	{
		if	(	IsAbsorbing()
			or	i_vInsertClause.IsIdentity()
			)
			return false;

		if	(	IsIdentity()
			or	i_vInsertClause.IsAbsorbing()
			)
		{
			*m_aTermBegin = i_vInsertClause;
			m_aTermEnd = m_aTermBegin + 1z;
			return true;
		}

		bool bInserted = false;
		for	(	BitClause
				&	rClause
			:	ReverseView()
			)
		{
			//	insert clause is redundant
			if	(i_vInsertClause.Includes(rClause))
				return false;

			//	overwrite redundant clause
			if	(rClause.Includes(i_vInsertClause))
			{
				if	(not bInserted)
				{
					rClause = i_vInsertClause;
					bInserted = true;
				}
				else
				{
					m_aTermEnd = ::std::remove(&rClause, m_aTermEnd, rClause);
				}
			}
		}

		if	(not bInserted)
			*(m_aTermEnd++) = i_vInsertClause;
		return true;
	}

	auto constexpr
	(	insert
	)	(	BitTerm const
			&	i_rInsertTerm
		)
	->	bool
	{	return
		::std::transform_reduce
		(	begin(i_rInsertTerm)
		,	end(i_rInsertTerm)
		,	false
		,	::std::logical_or<>{}
		,	[	this
			]	(	BitClause
						i_vInsertClause
				)
			{	return insert(i_vInsertClause);	}
		);
	}

	auto constexpr
	(	OptimizeLiterals
	)	(	Optimizer
			&	i_rRedundancyBuffer
		)
	->	bool
	{
		for	(	BitClause
				&	rClause
			:	*this
			)
		{
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
				if	(vLiteral == AbsorbingClause)
					continue;

				if	(	LiteralRedundancyCondition
						(	vLiteral
						,	rClause
						,	i_rRedundancyBuffer
						)
					)
				{
					if	(vLiteral == rClause)
					{
						//	only literal gets erased
						//	resulting term is always absorbing
						insert(AbsorbingClause);
					}
					else
					{
						//	erase the literal
						rClause.Erase(vLiteral);
						OptimizeLength(i_rRedundancyBuffer);
					}

					return true;
				}
			}
		}
		return false;
	}

	auto constexpr
	(	ClauseRedundancyCondition
	)	(	BitClause const
			&	i_rCurrentClause
		,	Optimizer
			&	i_rRedundancyCondition
		)
	->	bool
	{
		return LiteralRedundancyCondition(IdentityClause, i_rCurrentClause, i_rRedundancyCondition);
	}

	auto constexpr
	(	OptimizeClauses
	)	(	Optimizer
			&	i_rRedundancyBuffer
		)
	->	bool
	{
		::std::sort(m_aTermBegin, m_aTermEnd);
		bool bWasOptimized = false;
		for	(	BitClause
				&	rClause
			:	ReverseView()
			)
		{
			if	(	ClauseRedundancyCondition
					(	rClause
					,	i_rRedundancyBuffer
					)
				)
			{
				m_aTermEnd = ::std::remove(&rClause, m_aTermEnd, rClause);
				bWasOptimized = true;
			}
		}
		return bWasOptimized;
	}


	auto constexpr
	(	OptimizeLength
	)	(	Optimizer
			&	i_rRedundancyBuffer
		)
	->	bool
	{
		bool bWasOptimized = OptimizeClauses(i_rRedundancyBuffer);
		bWasOptimized |= OptimizeLiterals(i_rRedundancyBuffer);
		return bWasOptimized;
	}

	auto constexpr
	(	LiteralRedundancyCondition
	)	(	BitClause
				i_vLiteral
		,	BitClause const
			&	i_rCurrentClause
		,	Optimizer
			&	i_rRedundancyCondition
		)	const
	->	bool
	{
		i_rRedundancyCondition.clear();

		for	(	BitClause const
				&	rRedundancyClause
			:	*this
			)
		{
			//	skip containing clause
			if	(&rRedundancyClause == &i_rCurrentClause)
				continue;

			if	(i_rCurrentClause.Includes(rRedundancyClause))
			{
				i_rRedundancyCondition.insert(AbsorbingClause);
				return true;
			}

			if	(rRedundancyClause.Includes(i_vLiteral))
				continue;

			BitClause
				vRedundancyClause
			=	rRedundancyClause
			;
			vRedundancyClause.Erase(compl i_vLiteral);


			if	(vRedundancyClause.Intersects(compl i_rCurrentClause))
				continue;

			vRedundancyClause.Erase(i_rCurrentClause);

			i_rRedundancyCondition.insert(vRedundancyClause);
			if	(i_rRedundancyCondition.IsAbsorbing())
				return true;
		}

		i_rRedundancyCondition.Optimize(false);
		return i_rRedundancyCondition.IsAbsorbing();
	}

	auto constexpr
	(	OptimizeAlternatives
	)	(	Optimizer
			&	i_rRedundancyBuffer
		)
	->	bool
	{
		for	(	BitClause
				&	rClause
			:	*this
			)
		{
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
				if	(vLiteral == AbsorbingClause)
					continue;

				LiteralRedundancyCondition
				(	vLiteral
				,	rClause
				,	i_rRedundancyBuffer
				);

				if	(i_rRedundancyBuffer.IsIdentity())
					continue;

				BitClause
					vWithoutLiteral
				=	rClause
				;
				vWithoutLiteral.Erase(vLiteral);

				for	(	BitClause
							vRedundancyClause
					:	i_rRedundancyBuffer
					)
				{
					insert(vRedundancyClause.Insert(vWithoutLiteral));
				}
			}
		}

		return OptimizeClauses(i_rRedundancyBuffer);
	}

	auto constexpr
	(	Optimize
	)	(	bool
				i_bOptimizeAlternatives
		)
	->	bool
	{
		auto const
			nClauseCount
		=	(	m_aTermEnd
			-	m_aTermBegin
			)
		;
		if	(nClauseCount <= 1z)
			return false;

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

		Optimizer
			vRedundancyBuffer
		{	static_cast<::std::size_t>
			(	nRedundancyClauseCount
			)
		};

		bool bWasOptimized = OptimizeLength(vRedundancyBuffer);
		if	(i_bOptimizeAlternatives)
		{
			bWasOptimized |= OptimizeAlternatives(vRedundancyBuffer);
		}
		return bWasOptimized;
	}
};


export
{
	auto constexpr
	(	operator or [[nodiscard]]
	)	(	BitTerm const
			&	i_rLeftTerm
		,	BitTerm const
			&	i_rRightTerm
		)
	->	BitTerm
	{
		if	(i_rLeftTerm.IsAbsorbing() or i_rRightTerm.IsAbsorbing())
			return AbsorbingClause;

		if	(i_rLeftTerm.IsIdentity())
			return i_rRightTerm;
		if	(i_rRightTerm.IsIdentity())
			return i_rLeftTerm;

		if	(i_rLeftTerm == i_rRightTerm)
			return i_rLeftTerm;

		auto const
			nMaxClauseCount
		=	//	while creating alternative clauses up to twice the amount of clauses are needed
			2uz
		*	(	ClauseCount(i_rLeftTerm)
			+	ClauseCount(i_rRightTerm)
			)
		;

		Optimizer
			vOptimizer
		{	nMaxClauseCount
		};

		vOptimizer.insert(i_rLeftTerm);
		vOptimizer.insert(i_rRightTerm);

		vOptimizer.Optimize
		(	true
		);
		return vOptimizer.ToBitTerm();
	}

	auto constexpr
	(	operator and [[nodiscard]]
	)	(	BitTerm const
			&	i_rLeftTerm
		,	BitTerm const
			&	i_rRightTerm
		)
	->	BitTerm
	{
		if	(i_rLeftTerm.IsIdentity() or i_rRightTerm.IsIdentity())
			return IdentityClause;

		if	(i_rLeftTerm.IsAbsorbing())
			return i_rRightTerm;
		if	(i_rRightTerm.IsAbsorbing())
			return i_rLeftTerm;

		if	(i_rLeftTerm == i_rRightTerm)
			return i_rLeftTerm;

		auto const
			nMaxClauseCount
		=	//	while creating alternative clauses up to twice the amount of clauses are needed
			2uz
		*	ClauseCount(i_rLeftTerm)
		*	ClauseCount(i_rRightTerm)
		;

		Optimizer
			vOptimizer
		{	nMaxClauseCount
		};

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
				vOptimizer.insert(i_vLeftClause bitor i_vRightClause);
			}
		}
		vOptimizer.Optimize(true);

		return vOptimizer.ToBitTerm();
	}

	auto constexpr
	(	operator not [[nodiscard]]
	)	(	BitTerm const
			&	i_rTerm
		)
	->	BitTerm
	{
		if	(i_rTerm.IsAbsorbing())
			return IdentityClause;

		if	(i_rTerm.IsIdentity())
			return AbsorbingClause;

		if	(ClauseCount(i_rTerm) == 1uz)
		{
			BitTerm vResult{};
			for	(	IndexType
						nLiteralIndex
					=	0u
					,	nLiteralCount
					=	0u
				;	(	(	nLiteralIndex
						<	SubtermLimit
						)
					and	(	nLiteralCount
						<	LiteralCount(i_rTerm[0uz])
						)
					)
				;	++	nLiteralIndex
				)
			{
				BitClause const
					vLiteral
				=	i_rTerm[0uz]
					[	nLiteralIndex
					]
				;
				if	(vLiteral == AbsorbingClause)
					continue;

				(	vResult.Clauses[nLiteralCount]
				=	compl
					vLiteral
				);
				++nLiteralCount;
			}

			return
				vResult
			;
		}

		if	(	::std::all_of
				(	begin(i_rTerm)
				,	end(i_rTerm)
				,	[]	(	BitClause
								i_vClause
						)
					->	bool
					{	return
							LiteralCount
							(	i_vClause
							)
						==	1uz
						;
					}
				)
			)
		{
			return
			::std::transform_reduce
			(	begin(i_rTerm)
			,	end(i_rTerm)
			,	AbsorbingClause
			,	::std::bit_or<>{}
			,	::std::bit_not<>{}
			);
		}

		return
		::std::transform_reduce
		(	begin(i_rTerm)
		,	end(i_rTerm)
		,	BitTerm{AbsorbingClause}
		,	::std::logical_and<>{}
		,	::std::logical_not<>{}
		);
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
