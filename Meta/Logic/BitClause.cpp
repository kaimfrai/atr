export module Meta.Logic.BitClause;

export import Meta.Common;
export import Std.Bit;
export import Std.Span;

namespace
	Meta::Logic
{
	export USize constexpr inline
		SubtermLimit
	=	4uz
	;

	export struct
		BitClause
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
		)	(	FieldType
			,	FieldType
			)
		;

		auto constexpr
		(	Permutate
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

		friend auto constexpr
		(	LiteralCount
		)	(	BitClause
			)
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
		::BitIndexToField
	)	(	USize
				i_vIndex
		)
	->	FieldType
	{	return
		static_cast<FieldType>
		(	1uz
		<<	i_vIndex
		);
	}

	auto constexpr
	(	BitClause
		::Absorbing
	)	()
	->	BitClause
	{	return Inverse(Identity());	}


	auto constexpr
	(	BitClause
		::Identity
	)	()
	->	BitClause
	{	return BitClause{};	}

	constexpr
	(	BitClause
		::BitClause
	)	()
	:	Positive
		{	static_cast<FieldType>
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
			)
		}
	,	Negative
		{	Positive
		}
	{}

	constexpr
	(	BitClause
		::BitClause
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
		?	Identity().Positive
		:	i_nPositive
		}
	,	Negative
		{	(	i_nPositive
			bitand
				i_nNegative
			)
		?	Identity().Negative
		:	i_nNegative
		}
	{}

	auto constexpr
	(	BitClause
		::Permutate[[nodiscard]]
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
				<	SubtermLimit
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
		::IsAbsorbing
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
		::IsIdentity
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
			return 0u;

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
		::operator[]
	)	(	USize
				i_nIndex
		)	const
	->	BitClause
	{
		if	(i_nIndex >= SubtermLimit)
			return Absorbing();

		if	(IsIdentity())
			return i_nIndex == 0u ? *this : Absorbing();

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
		::Includes
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
		::Intersects
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
}
