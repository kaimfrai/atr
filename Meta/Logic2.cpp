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
	FieldType Field;
	static_assert
	(	8uz	* sizeof(FieldType)
	==	2uz * SubtermLimit
	);

	static FieldType constexpr
		Null
	=	0u
	;

	static FieldType constexpr
		Neutral
	=	static_cast<FieldType>
		(	compl Null
		)
	;

	constexpr
	(	BitClause
	)	()
	:	Field
		{	Null
		}
	{}

	explicit constexpr
	(	BitClause
	)	(	FieldType
				i_nField
		)
	:	Field
		{	(	i_nField
			bitand
				::std::rotl(i_nField, SubtermLimit)
			)
		?	Neutral
		:	i_nField
		}
	{}

	friend auto constexpr
	(	IsTrue
	)	(	BitClause
				i_vClause
		)
	->	bool
	{	return Null == i_vClause.Field;	}

	friend auto constexpr
	(	IsFalse
	)	(	BitClause
				i_vClause
		)
	->	bool
	{	return Neutral == i_vClause.Field;	}

	friend auto constexpr
	(	LiteralCount
	)	(	BitClause
				i_vClause
		)
	->	IndexType
	{
		if	(IsFalse(i_vClause))
			return 0u;

		return
		static_cast<IndexType>
		(	::std::popcount(i_vClause.Field)
		);
	}

	friend auto constexpr
	(	operator compl
	)	(	BitClause
				i_vClause
		)
	->	BitClause
	{
		if	(	i_vClause.Field == Null
			or	i_vClause.Field == Neutral
			)
			return
			BitClause
			{	static_cast<FieldType>
				(	compl
					i_vClause.Field
				)
			};

		return
		BitClause
		{	::std::rotl
			(	i_vClause.Field
			,	SubtermLimit
			)
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
			(	i_vLeft.Field
			bitand
				i_vRight.Field
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
			(	i_vLeft.Field
			bitor
				i_vRight.Field
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
		if	(IsFalse(i_vNew))
			return i_vNew;

		return
			BitClause
			{	static_cast<FieldType>
				(	Field
				bitand compl
					i_vOld.Field
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
	{	return Replace(BitClause{Null}, i_vInsert);	}

	auto constexpr
	(	Erase[[nodiscard]]
	)	(	BitClause
				i_vErase
		)	const&
	->	BitClause
	{	return Replace(i_vErase, BitClause{Null});	}

	auto constexpr
	(	AssumeTrue[[nodiscard]]
	)	(	BitClause
				i_vClause
		)	const&
	->	BitClause
	{
		if	((*this bitand compl i_vClause) != BitClause{Null})
			return BitClause{Neutral};

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
			return BitClause{};

		if	(IsFalse(*this))
			return i_nIndex == 0u ? *this : BitClause{};

		return
			(	*this
			bitand
				BitClause{BitIndexToField(i_nIndex)}
			)
		bitor
			(	*this
			bitand
				BitClause{BitIndexToField(i_nIndex + SubtermLimit)}
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

	friend auto constexpr
	(	ClauseCount
	)	(	BitClause
				i_vClause
		)
	->	IndexType
	{	return	IsFalse(i_vClause) or IsTrue(i_vClause) ? 0u : 1u;	}
};

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
	;

	constexpr
	(	BitTerm
	)	(	BitClause
				i_vClause
			=	BitClause{BitClause::Neutral}
		)
	:	m_vClauses
		{	[	i_vClause
			]{
				BitClauseStorageType vClauses{};
				vClauses.fill(BitClause{BitClause::Neutral});
				vClauses[0u] = i_vClause;
				return vClauses;
			}()
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

	auto constexpr
	(	Replace[[nodiscard]]
	)	(	BitClause
				i_vOldClause
		,	BitClause
				i_vNewClause
		)	const&
	->	BitTerm
	{
		if	(i_vOldClause == i_vNewClause)
			return *this;
		if	(IsTrue(i_vNewClause))
			return i_vNewClause;

		BitClauseStorageType vClauseStorage = m_vClauses;
		BitClause* const aBegin = begin(vClauseStorage);
		BitClause* const aEnd = end(vClauseStorage);
		BitClause* aPosition = ::std::lower_bound(aBegin, aEnd, i_vOldClause);

		if	(aPosition == aEnd and not IsFalse(i_vOldClause))
			throw "Cannot replace a clause that's not contained!";

		if	(aPosition == aBegin + SubtermLimit)
		{
			if	(not IsFalse(i_vNewClause))
				throw "Cannot insert a clause past the SubtermLimit!";
			return *this;
		}

		//	overwrite old clause
		*aPosition = i_vNewClause;

		return BitTerm{vClauseStorage};
	}

	auto constexpr
	(	Insert[[nodiscard]]
	)	(	BitClause
				i_vNewClause
		)	const&
	->	BitTerm
	{	return Replace(BitClause{BitClause::Neutral}, i_vNewClause);	}

	auto constexpr
	(	Erase[[nodiscard]]
	)	(	BitClause
				i_vEraseClause
		)	const&
	->	BitTerm
	{	return Replace(i_vEraseClause, BitClause{BitClause::Neutral});	}

	friend auto constexpr
	(	IsTrue
	)	(	BitTerm const
			&	i_rTerm
		)
	->	bool
	{	return IsTrue(i_rTerm.m_vClauses[0u]);	}

	friend auto constexpr
	(	IsFalse
	)	(	BitTerm const
			&	i_rTerm
		)
	->	bool
	{	return IsFalse(i_rTerm.m_vClauses[0u]);	}

	auto constexpr
	(	operator []
	)	(	IndexType
				i_nIndex
		)	const&
	->	BitClause
	{
		if	(IsTrue(*this))
			return m_vClauses[0u];

		if	(i_nIndex >= ClauseCount(*this))
			return BitClause{BitClause::Neutral};

		return m_vClauses[i_nIndex];
	}

	auto constexpr
	(	Implies
	)	(	BitTerm const
			&	i_rImpliedTerm
		)	const&
	->	bool
	{
		if	(IsFalse(*this) or IsTrue(i_rImpliedTerm))
			return true;
		if	(IsTrue(*this) or IsFalse(i_rImpliedTerm))
			return false;

		for	(BitClause vClause : *this)
		{
			BitTerm vReplacedTerm{};
			for	(BitClause vImpliedClause : i_rImpliedTerm)
			{
				BitTerm const vReplacedClause = vImpliedClause.AssumeTrue(vClause);

				if	(IsFalse(vReplacedClause))
					continue;
				if	(IsTrue(vReplacedClause))
				{
					vReplacedTerm = vReplacedClause;
					break;
				}

				vReplacedTerm = vReplacedTerm or vReplacedClause;
			}
			if	(not IsTrue(vReplacedTerm))
				return false;
		}
		return true;
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
		(	i_rLeftTerm.m_vClauses == i_rRightTerm.m_vClauses
		or	(	ClauseCount(i_rLeftTerm) == ClauseCount(i_rRightTerm)
			and	LiteralCount(i_rLeftTerm) == LiteralCount(i_rRightTerm)
			and	i_rLeftTerm.Implies(i_rRightTerm)
			and	i_rRightTerm.Implies(i_rLeftTerm)
			)
		);
	}

	friend auto constexpr
	(	begin
	)	(	BitTerm const
			&	i_rTerm
		)
	->	BitClause const*
	{	return begin(i_rTerm.m_vClauses);	}

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
		,	BitClause{BitClause::Neutral}
		);
	}

	friend auto constexpr
	(	LiteralCount
	)	(	BitTerm const
			&	i_rTerm
		)
	->	IndexType
	{	return
		::std::transform_reduce
		(	begin(i_rTerm)
		,	end(i_rTerm)
		,	IndexType{}
		,	::std::plus<IndexType>{}
		,	+[]	(	BitClause
						i_vClause
				)
			->	IndexType
			{	return LiteralCount(i_vClause);	}
		);
	}

	friend auto constexpr
	(	ClauseCount
	)	(	BitTerm const
			&	i_rTerm
		)
	->	IndexType
	{
		if	(IsTrue(i_rTerm))
			return 0u;

		return
		static_cast<IndexType>
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

auto constexpr
(	AssumeLiteralsTrue
)	(	BitClause
			i_vAssumeTrue
	,	BitClause
			i_vReplaceClause
	)
->	BitTerm
{
	return i_vReplaceClause.AssumeTrue(i_vAssumeTrue);
}

auto constexpr
(	ClauseRedundancy
)	(	BitClause
			i_vNewClause
	,	BitTerm const
		&	i_rOldTerm
	)
->	BitTerm
{
	BitTerm vResult{};
	for	(BitClause vOldClause : i_rOldTerm)
	{
		BitTerm const vReplacedClause = AssumeLiteralsTrue(i_vNewClause, vOldClause);
		if	(IsTrue(vReplacedClause))
			return vReplacedClause;
		if	(IsFalse(vReplacedClause))
			continue;

		vResult = vResult or vReplacedClause;
	}
	return vResult;
}

auto constexpr
(	LiteralRedundancy
)	(	BitClause
			i_vNewLiteral
	,	BitClause
			i_vNewClause
	,	BitTerm const
		&	i_rOldTerm
	)
->	BitTerm
{	return
	ClauseRedundancy
	(	i_vNewClause.Replace
		(	i_vNewLiteral
		,	compl i_vNewLiteral
		)
	,	i_rOldTerm
	);
}

auto constexpr
(	LiteralFilter
)	(	BitClause
			i_vNewLiteral
	,	BitClause
			i_vNewClause
	,	BitTerm const
		&	i_rOldTerm
	)
->	BitTerm
{
	BitTerm const vRedundancyCondition = LiteralRedundancy(i_vNewLiteral, i_vNewClause, i_rOldTerm);
	//	this literal is always redundant
	if	(IsTrue(vRedundancyCondition))
		//	new clause without the literal
		return i_vNewClause.Erase(i_vNewLiteral);
	//	before replacing this clause can be considered it must be redundant
	if	(	not
			IsTrue
			(	ClauseRedundancy(i_vNewClause, i_rOldTerm)
			or	ClauseRedundancy
				(	i_vNewClause
				,	//	no need to create a synthesized term just yet
					//	the other literals are assumed true anyways
					vRedundancyCondition
				)
			)
		)
		return {};
	else
	{
		BitTerm
			vSynthesizedTerm
		=	i_vNewClause.Erase(i_vNewLiteral) and vRedundancyCondition;

		//	at least 1 at this point (i_vNewClause)
		auto nNewRedundantClauseCount = 1uz;
		for	(BitClause vOldClause : i_rOldTerm)
		{
			(	nNewRedundantClauseCount
			+=	IsTrue
				(	ClauseRedundancy
					(	vOldClause
					,	i_rOldTerm.Erase(vOldClause)
					)
				or	ClauseRedundancy
					(	vOldClause
					,	vSynthesizedTerm
					)
				)
			);
		}
		//	at least 1 at this point (can neither be True nor False)
		auto const
			vAddedClauseCount
		=	ClauseCount
			(	vSynthesizedTerm
			)
		;

		//	using the synthesized term instead of this clause makes more clauses redundant than
		//	it introduces
		if	(nNewRedundantClauseCount > vAddedClauseCount)
			return vSynthesizedTerm;
		else
			return {};
	}
}

auto constexpr
(	ClauseFilter
)	(	BitClause
			i_vNewClause
	,	BitTerm const
		&	i_rOldTerm
	)
->	BitTerm
{
	//	this clause is simply redundant, replace it by false
	if	(IsTrue(ClauseRedundancy(i_vNewClause, i_rOldTerm)))
		return {};

	//	another clause is redundant
	for	(BitClause vOldClause : i_rOldTerm)
	{
		//	delay further simplification
		if	(	IsTrue
				(	ClauseRedundancy
					(	vOldClause
					,	i_rOldTerm.Replace
						(	vOldClause
						,	i_vNewClause
						)
					)
				)
			)
			return i_vNewClause;
	}

	//	filter literals within this clause
	//	this may result in multiple clauses with a filtered literal each
	BitTerm vFilteredLiteralTerm{};
	for	(IndexType nIndex = 0u; nIndex < SubtermLimit; ++nIndex)
	{
		BitClause const vLiteral = i_vNewClause[nIndex];
		if	(IsTrue(vLiteral))
			continue;

		vFilteredLiteralTerm
		=	vFilteredLiteralTerm
		or	LiteralFilter(vLiteral, i_vNewClause, i_rOldTerm)
		;
	}

	//	no literal was filtered
	if	(IsFalse(vFilteredLiteralTerm))
		return i_vNewClause;
	else
		return vFilteredLiteralTerm;
}


auto constexpr
(	SimplifyDisjunction
)	(	BitTerm const
		&	i_rOldTerm
	,	BitClause
			i_vNewClause
	)
->	BitTerm
{
	BitTerm const
		vSimplifiedNewSubterm
	=	ClauseFilter(i_vNewClause, i_rOldTerm)
	;
	if	(i_vNewClause != vSimplifiedNewSubterm)
		return i_rOldTerm or vSimplifiedNewSubterm;

	BitTerm vSimplifiedOldTerm{};
	for	(BitClause vOldClause : i_rOldTerm)
	{
		vSimplifiedOldTerm = vSimplifiedOldTerm
			or ClauseFilter(vOldClause, i_rOldTerm.Replace(vOldClause, i_vNewClause));
	}

	if	(i_rOldTerm != vSimplifiedOldTerm)
		return vSimplifiedOldTerm or i_vNewClause;

	return vSimplifiedOldTerm.Insert(i_vNewClause);
}

auto constexpr
(	operator or
)	(	BitTerm const
		&	i_rLeftTerm
	,	BitTerm const
		&	i_rRightTerm
	)
->	BitTerm
{
	if	(IsTrue(i_rLeftTerm) or IsTrue(i_rRightTerm))
		return BitClause{};

	if	(IsFalse(i_rLeftTerm))
		return i_rRightTerm;
	if	(IsFalse(i_rRightTerm))
		return i_rLeftTerm;

	if	(i_rLeftTerm == i_rRightTerm)
		return i_rLeftTerm;
	else
	if	(ClauseCount(i_rRightTerm) <= 1u)
		return SimplifyDisjunction(i_rLeftTerm, i_rRightTerm[0u]);
	else
	{
		BitTerm vResultTerm = i_rLeftTerm;
		for	(BitClause vRightClause : i_rRightTerm)
			vResultTerm = vResultTerm or vRightClause;
		return vResultTerm;
	}
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
	if	(IsFalse(i_rLeftTerm) or IsFalse(i_rRightTerm))
		return {};

	if	(IsTrue(i_rLeftTerm))
		return i_rRightTerm;
	if	(IsTrue(i_rRightTerm))
		return i_rLeftTerm;

	if	(	ClauseCount(i_rLeftTerm) <= 1u
		and	ClauseCount(i_rRightTerm) <= 1u
		)
		return
			i_rLeftTerm[0u]
		bitor
			i_rRightTerm[0u]
		;

	BitTerm vResult{};
	for	(BitClause i_vLeftClause : i_rLeftTerm)
		for	(BitClause i_vRightClause : i_rRightTerm)
			vResult = vResult or (i_vLeftClause bitor i_vRightClause);

	return vResult;
}
}

export auto constexpr
(	operator not
)	(	BitTerm const
		&	i_rTerm
	)
->	BitTerm
{
	if	(IsTrue(i_rTerm))
		return {};

	if	(IsFalse(i_rTerm))
		return BitClause{};

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
	if	(ClauseCount(i_rTerm) == LiteralCount(i_rTerm))
	{
		BitClause vResult{};
		for (BitClause vClause : i_rTerm)
			vResult = vResult | compl vClause;
		return vResult;
	}

	BitTerm vResult{BitClause{}};
	for	(BitClause vClause : i_rTerm)
		vResult = vResult and not vClause;
	return vResult;
}
