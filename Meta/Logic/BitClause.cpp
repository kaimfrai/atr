export module Meta.Logic.BitClause;

export import Std.Array;
export import Std.Compare;
export import Std.Span;

export import Meta.Integer;
export import Meta.Bit;

namespace
	Meta::Logic
{
	export USize constexpr inline
		SubtermLimit
	=	16uz
	;

	export struct
		BitClause final
	{
		using FieldType = UInt<SubtermLimit>;

		static auto constexpr
		(	BitIndexToField
		)	(	USize
			)
		->	FieldType
		;

		FieldType Positive : SubtermLimit;
		FieldType Negative : SubtermLimit;

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

		auto constexpr
		(	PredicateField
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
				i_nIndex
		)
	->	FieldType
	{
		if	(i_nIndex >= SubtermLimit)
			throw "Index to large to convert to a bit field!";
		return
		static_cast<FieldType>
		(	1uz
		<<	i_nIndex
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
		{	SetOneBits(SubtermLimit)
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

	auto constexpr
	(	BitClause
	::	PredicateField
	)	()	const
	->	USize
	{
		if	(IsIdentity())
			return 0uz;

		return
			0uz
		bitor
			Positive
		bitor
			Negative
		;
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
					nIndex
				=	0uz
			;		nIndex
				<	i_vPermutation.size()
			;	++	nIndex
			)
		{
			auto const
				nIndexField
			=	BitIndexToField(nIndex)
			;
			if	(Positive bitand nIndexField)
				(	vResult.Positive
				|=	BitIndexToField(i_vPermutation[nIndex])
				);
			else
			if	(Negative bitand nIndexField)
				(	vResult.Negative
				|=	BitIndexToField(i_vPermutation[nIndex])
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
			return 1uz;

		return
		CountOneBits
		(	PredicateField()
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
				i_nIndex
		)	const
	->	BitClause
	{
		if	(i_nIndex >= LiteralCount())
			throw "Index beyond LiteralCount!";

		if	(IsIdentity())
			return *this;

		auto const
			nIndexField
		=	BitIndexToField
			(	GetIndexOfNthOneBit
				(	PredicateField()
				,	i_nIndex
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
}
