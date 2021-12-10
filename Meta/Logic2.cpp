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

export
{


using FieldType = ::std::uint8_t;
using IndexType = ::std::uint8_t;

IndexType constexpr inline
	SubtermLimit
=	4u
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
	BitLiteral
{
	IndexType m_nBitIndex : 6;
	bool m_bPolarity : 1;
	bool m_bConstant : 1;

	constexpr
	(	BitLiteral
	)	(	bool
				i_bPolarity
		)
	:	m_nBitIndex
		{}
	,	m_bPolarity
		{	i_bPolarity
		}
	,	m_bConstant
		{	true
		}
	{}

	constexpr
	(	BitLiteral
	)	(	IndexType
				i_nBitIndex
		,	bool
				i_bPolarity
		)
	:	m_nBitIndex
		{	i_nBitIndex
		}
	,	m_bPolarity
		{	i_bPolarity
		}
	,	m_bConstant
		{	false
		}
	{}

	friend auto constexpr
	(	operator ==
	)	(	BitLiteral
		,	BitLiteral
		)
	->	bool
	=	default;

	friend auto constexpr
	(	IsTrue
	)	(	BitLiteral
				i_vLiteral
		)
	->	bool
	{	return i_vLiteral.m_bConstant and i_vLiteral.m_bPolarity;	}

	friend auto constexpr
	(	IsFalse
	)	(	BitLiteral
				i_vLiteral
		)
	->	bool
	{	return i_vLiteral.m_bConstant and not i_vLiteral.m_bPolarity;	}

	auto constexpr
	(	ToAtomField
	)	()	const
	->	FieldType
	{
		if	(m_bPolarity == m_bConstant)
			return static_cast<FieldType>(0);
		if	(m_bConstant)
			return static_cast<FieldType>(-1);

		return BitIndexToField(m_nBitIndex);
	}

	auto constexpr
	(	ToNotField
	)	()	const
	->	FieldType
	{
		if	(m_bPolarity)
			return static_cast<FieldType>(0);
		if	(m_bConstant)
			return static_cast<FieldType>(-1);

		return BitIndexToField(m_nBitIndex);
	}

	friend auto constexpr
	(	LiteralCount
	)	(	BitLiteral
				i_vLiteral
		)
	->	IndexType
	{	return
			i_vLiteral.m_bConstant
		?	0u
		:	1u
		;
	}

	friend auto constexpr
	(	ClauseCount
	)	(	BitLiteral
				i_vLiteral
		)
	->	IndexType
	{	return
			i_vLiteral.m_bConstant
		?	0u
		:	1u
		;
	}
};

auto constexpr
(	operator not
)	(	BitLiteral
			i_vLiteral
	)
->	BitLiteral
{
	(	i_vLiteral.m_bPolarity
	=	not
		i_vLiteral.m_bPolarity
	);
	return i_vLiteral;
}


BitLiteral constexpr inline
	False
=	false
;

BitLiteral constexpr inline
	True
=	true
;

struct
	BitClause
{
	FieldType m_nAtomField : SubtermLimit {};
	FieldType m_nNotField : SubtermLimit {};

	explicit constexpr
	(	BitClause
	)	(	FieldType
				i_nAtomField
		,	FieldType
				i_nNotField
		)
	:	m_nAtomField
		{	i_nAtomField bitand i_nNotField
		?	False.ToAtomField()
		:	i_nAtomField
		}
	,	m_nNotField
		{	i_nAtomField bitand i_nNotField
		?	False.ToNotField()
		:	i_nNotField
		}
	{}

	constexpr
	(	BitClause
	)	(	BitLiteral
				i_vLiteral
			=	False
		)
	:	m_nAtomField
		{	i_vLiteral.ToAtomField()
		}
	,	m_nNotField
		{	i_vLiteral.ToNotField()
		}
	{}

	friend auto constexpr
	(	IsTrue
	)	(	BitClause
				i_vClause
		)
	->	bool
	{	return 0x0 == (i_vClause.m_nAtomField bitor i_vClause.m_nNotField);	}

	friend auto constexpr
	(	IsFalse
	)	(	BitClause
				i_vClause
		)
	->	bool
	{	return 0x0 != (i_vClause.m_nAtomField bitand i_vClause.m_nNotField);	}

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
			(	::std::popcount(i_vClause.m_nAtomField)
			)
		+	static_cast<IndexType>
			(	::std::popcount(i_vClause.m_nNotField)
			)
		;
	}

	auto constexpr
	(	Replace[[nodiscard]]
	)	(	BitLiteral
				i_vOldLiteral
		,	BitLiteral
				i_vNewLiteral
		)	const&
	->	BitClause
	{
		if	(i_vOldLiteral == i_vNewLiteral)
			return *this;
		if	(IsFalse(i_vNewLiteral))
			return False;

		FieldType const
			nAtomField
		=	(	(	m_nAtomField
				bitand compl
					i_vOldLiteral.ToAtomField()
				)
			bitor
				i_vNewLiteral.ToAtomField()
			)
		;
		FieldType const
			nNotField
		=	(	(	m_nNotField
				bitand compl
					i_vOldLiteral.ToNotField()
				)
			bitor
				i_vNewLiteral.ToNotField()
			)
		;

		return
		BitClause
		{	nAtomField
		,	nNotField
		};
	}

	auto constexpr
	(	Insert[[nodiscard]]
	)	(	BitLiteral
				i_vInsertLiteral
		)	const&
	->	BitClause
	{	return Replace(True, i_vInsertLiteral);	}

	auto constexpr
	(	Erase[[nodiscard]]
	)	(	BitLiteral
				i_vEraseLiteral
		)	const&
	->	BitClause
	{	return Replace(i_vEraseLiteral, True);	}

	auto constexpr
	(	Flip[[nodiscard]]
	)	(	BitLiteral
				i_vLiteral
		)	const&
	->	BitClause
	{	return Replace(i_vLiteral, not i_vLiteral);	}

	auto constexpr
	(	AssumeTrue[[nodiscard]]
	)	(	BitClause
				i_vClause
		)	const&
	->	BitClause
	{
		if	(	m_nAtomField bitand i_vClause.m_nNotField
			or	m_nNotField bitand i_vClause.m_nAtomField
			)
			return False;

		FieldType const
			nAtomField
		=	m_nAtomField
		bitand compl
			i_vClause.m_nAtomField
		;

		FieldType const
			nNotField
		=	m_nNotField
		bitand compl
			i_vClause.m_nNotField
		;
		return
		BitClause
		{	nAtomField
		,	nNotField
		};
	}


	auto constexpr
	(	operator[]
	)	(	::IndexType
				i_nIndex
		)	const
	->	BitLiteral
	{
		if	(i_nIndex >= SubtermLimit)
			return True;

		if	(IsFalse(*this))
			return i_nIndex == 0u ? False : True;

		auto const
			nFieldIndex
		=	BitIndexToField(i_nIndex)
		;

		if	(m_nAtomField bitand nFieldIndex)
			return BitLiteral{i_nIndex, true};

		if	(m_nNotField bitand nFieldIndex)
			return BitLiteral{i_nIndex, false};

		return True;
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

class
	BitClauseIterator
{
	static auto constexpr
	(	NextIndex
	)	(	BitClause
				i_vClause
		,	IndexType
				i_nLiteralIndex
		)
	->	IndexType
	{
		if	(IsFalse(i_vClause))
			return SubtermLimit;

		while(	i_nLiteralIndex < SubtermLimit
			and	IsTrue(i_vClause[i_nLiteralIndex])
			)
			++i_nLiteralIndex;
		return i_nLiteralIndex;
	}

	BitClause
		m_vClause
	;
	IndexType
		m_nLiteralIndex
	;
public:
	using difference_type = ::std::make_signed_t<IndexType>;
	using value_type = BitLiteral;
	using pointer = BitLiteral const*;
	using reference = BitLiteral const&;
	using iterator_category = ::std::input_iterator_tag;

	explicit constexpr
	(	BitClauseIterator
	)	(	BitClause
				i_vClause
		,	IndexType
				i_nLiteralIndex
		)
	:	m_vClause
		{	i_vClause
		}
	,	m_nLiteralIndex
		{	IsTrue(i_vClause[i_nLiteralIndex])
		?	NextIndex
			(	i_vClause
			,	i_nLiteralIndex
			)
		:	i_nLiteralIndex
		}
	{}

	auto constexpr
	(	operator *
	)	()	const&
	->	BitLiteral
	{	return
		m_vClause
		[	m_nLiteralIndex
		];
	}

	auto constexpr
	(	operator ++
	)	()	&
	->	BitClauseIterator&
	{
		(	m_nLiteralIndex
		=	NextIndex
			(	m_vClause
			,	m_nLiteralIndex
			+	1u
			)
		);
		return *this;
	}

	auto constexpr
	(	operator ++
	)	(int)	&
	->	BitClauseIterator
	{
		auto const
			vCopy
		=	*this
		;
		operator++();
		return vCopy;
	}

	friend auto constexpr
	(	operator ==
	)	(	BitClauseIterator
		,	BitClauseIterator
		)
	->	bool
	=	default;
};

auto constexpr
(	begin
)	(	BitClause
			i_vClause
	)
->	BitClauseIterator
{	return BitClauseIterator{i_vClause, 0u};	}

auto constexpr
(	end
)	(	BitClause
			i_vClause
	)
->	BitClauseIterator
{	return BitClauseIterator{i_vClause, SubtermLimit};	}


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
	(	BitTerm
	)	(	BitLiteral
				i_vLiteral
		)
	:	m_vClauses
		{	i_vLiteral
		}
	{}

	constexpr
	(	BitTerm
	)	(	BitClause
				i_vClause
		)
	:	m_vClauses
		{	i_vClause
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
			return True;

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
	{	return Replace(False, i_vNewClause);	}

	auto constexpr
	(	Erase[[nodiscard]]
	)	(	BitClause
				i_vEraseClause
		)	const&
	->	BitTerm
	{	return Replace(i_vEraseClause, False);	}

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
			return True;

		if	(i_nIndex >= ClauseCount(*this))
			return False;

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

		for	(BitClause vClause : *this)
		{
			BitTerm vReplacedTerm = False;
			for	(BitClause vImpliedClause : i_rImpliedTerm)
			{
				BitTerm const vReplacedClause = vImpliedClause.AssumeTrue(vClause);

				if	(IsFalse(vReplacedClause))
					continue;
				if	(IsTrue(vReplacedClause))
				{
					vReplacedTerm = True;
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
	{
		if	(i_rLeftTerm.m_vClauses == i_rRightTerm.m_vClauses)
			return true;
		if	(	ClauseCount(i_rLeftTerm)
			!=	ClauseCount(i_rRightTerm)
			)
			return false;
		if	(	LiteralCount(i_rLeftTerm)
			!=	LiteralCount(i_rRightTerm)
			)
			return false;
		if	(not i_rLeftTerm.Implies(i_rRightTerm))
			return false;
		return	i_rRightTerm.Implies(i_rLeftTerm);
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
		,	False
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
	BitTerm vResult = False;
	for	(BitClause vOldClause : i_rOldTerm)
	{
		BitTerm const vReplacedClause = AssumeLiteralsTrue(i_vNewClause, vOldClause);
		if	(IsTrue(vReplacedClause))
			return True;
		if	(IsFalse(vReplacedClause))
			continue;

		vResult = vResult or vReplacedClause;
	}
	return vResult;
}

auto constexpr
(	LiteralRedundancy
)	(	BitLiteral
			i_vNewLiteral
	,	BitClause
			i_vNewClause
	,	BitTerm const
		&	i_rOldTerm
	)
->	BitTerm
{	return ClauseRedundancy(i_vNewClause.Flip(i_vNewLiteral), i_rOldTerm);	}

auto constexpr
(	LiteralFilter
)	(	BitLiteral
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
		return False;
	else
	{
		BitTerm
			vSynthesizedTerm
		=	True
		;
		for	(BitLiteral vLiteral : i_vNewClause)
		{
			if	(vLiteral == i_vNewLiteral)
				vSynthesizedTerm = vSynthesizedTerm and vRedundancyCondition;
			else
				vSynthesizedTerm = vSynthesizedTerm and vLiteral;
		}

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
			return False;
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
		return False;

	//	another clause is redundant
	for	(BitClause vOldClause : i_rOldTerm)
	{
		//	delay further simplification
		if	(IsTrue(ClauseRedundancy(vOldClause, i_rOldTerm.Replace(vOldClause, i_vNewClause))))
			return i_vNewClause;
	}

	//	filter literals within this clause
	//	this may result in multiple clauses with a filtered literal each
	BitTerm vFilteredLiteralTerm = False;
	for	(BitLiteral i_vNewLiteral : i_vNewClause)
	{
		vFilteredLiteralTerm = vFilteredLiteralTerm or LiteralFilter(i_vNewLiteral, i_vNewClause, i_rOldTerm);
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

	BitTerm vSimplifiedOldTerm = False;
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
		return True;

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
		return False;

	if	(IsTrue(i_rLeftTerm))
		return i_rRightTerm;
	if	(IsTrue(i_rRightTerm))
		return i_rLeftTerm;

	if	(	ClauseCount(i_rLeftTerm) <= 1u
		and	ClauseCount(i_rRightTerm) <= 1u
		)
	{
		FieldType const
			nAtomField
		=	i_rLeftTerm[0u].m_nAtomField
		bitor
			i_rRightTerm[0u].m_nAtomField
		;
		FieldType const
			nNotField
		=	i_rLeftTerm[0u].m_nNotField
		bitor
			i_rRightTerm[0u].m_nNotField
		;

		return
		BitClause
		{	nAtomField
		,	nNotField
		};
	}

	BitTerm vResult = False;
	for	(BitClause i_vLeftClause : i_rLeftTerm)
		for	(BitClause i_vRightClause : i_rRightTerm)
			vResult = vResult or (i_vLeftClause and i_vRightClause);

	return vResult;
}

auto constexpr
(	operator not
)	(	BitTerm const
		&	i_rTerm
	)
->	BitTerm
{
	if	(IsTrue(i_rTerm))
		return False;

	if	(IsFalse(i_rTerm))
		return True;

	if	(ClauseCount(i_rTerm) == 1u)
		return
		[	vClause
			=	i_rTerm[0]
		]	<	::std::size_t
				...	t_npIndex
			>(	::std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
			BitTerm
			{{	not
				vClause[t_npIndex]
				...
			}};
		}(	::std::make_index_sequence<SubtermLimit>{}
		);

	if	(ClauseCount(i_rTerm) == LiteralCount(i_rTerm))
		return
		[&]	<	::std::size_t
				...	t_npIndex
			>(	::std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
			BitClause
			{	static_cast<FieldType>
				((	...
				bitor
					(not i_rTerm[t_npIndex])[0u].m_nAtomField
				))
			,	static_cast<FieldType>
				((	...
				bitor
					(not i_rTerm[t_npIndex])[0u].m_nNotField
				))
			};
		}(	::std::make_index_sequence<SubtermLimit>{}
		);

	return
	[&]	<	::std::size_t
			...	t_npIndex
		>(	::std::index_sequence
			<	t_npIndex
				...
			>
		)
	{	return
		(	...
		and	not i_rTerm[t_npIndex]
		);
	}(	::std::make_index_sequence<SubtermLimit>{}
	);
}

}
