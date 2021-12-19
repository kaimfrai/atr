export module Meta.Logic.BitClause;

export import Std.Array;
export import Std.Bit;
export import Std.Span;

export import Meta.Common;

namespace
	Meta::Logic
{
	export USize constexpr inline
		SubtermLimit
	=	4uz
	;

	export struct
		BitClause final
	{
		using FieldType = ::Meta::UInt<8uz>;

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

	export using
		BitClauseArray
	=	::std::array
		<	BitClause
		,	SubtermLimit
		>
	;

	export auto constexpr
	(	LiteralCount
	)	(	BitClause
		)
	->	USize
	;

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
		{	static_cast<FieldType>
			(	//	generate a sequence of #SubtermLimit 1s
				//	does not cause overflows or bitfield conversion warnings
				(	(	(	1uz
						<<	(	SubtermLimit
							-	1uz
							)
						)
						-	1uz
					)
				<<	1uz
				)
			+	1uz
			)
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
				|= BitIndexToField(i_vPermutation[nIndex])
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
	(	LiteralCount
	)	(	BitClause
				i_vClause
		)
	->	USize
	{
		if	(	i_vClause.Positive
			==	i_vClause.Negative
			)
			return 0uz;

		return
		static_cast<USize>
		(	::std::popcount(i_vClause.Positive)
		+	::std::popcount(i_vClause.Negative)
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
		if	(i_nIndex >= SubtermLimit)
			throw "Index beyond Subtermlimit!";

		if	(IsIdentity())
			return i_nIndex == 0uz ? *this : Absorbing();

		auto const
			nIndexField
		=	BitIndexToField
			(	i_nIndex
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
		=	static_cast
			<	USize
			>(	::std::countr_zero
				(	Positive
				)
			)
		;
		USize const
			nFirstNegativeIndex
		=	static_cast
			<	USize
			>(	::std::countr_zero
				(	Negative
				)
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
