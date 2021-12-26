export module Meta.Logic.Conjunction;

export import Meta.Logic.BitTerm;

namespace
	Meta::Logic
{
	export struct
		Conjunction
	{
		BitTerm const
			Term
		{};

		static auto constexpr
		(	True
		)	()
		->	Conjunction
		;

		static auto constexpr
		(	False
		)	()
		->	Conjunction
		;

		static auto constexpr
		(	Literal
		)	(	USize
			)
		->	Conjunction
		;

		auto constexpr
		(	IsTrue
		)	()	const
		->	bool
		;

		auto constexpr
		(	IsFalse
		)	()	const
		->	bool
		;

		auto constexpr
		(	ClauseCount
		)	()	const
		->	USize
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
		->	Conjunction
		;

		friend auto constexpr
		(	operator not
		)	(	Conjunction const&
			)
		->	Conjunction
		;

		friend auto constexpr
		(	operator and
		)	(	Conjunction const&
			,	Conjunction const&
			)
		->	Conjunction
		;

		friend auto constexpr
		(	operator or
		)	(	Conjunction const&
			,	Conjunction const&
			)
		->	Conjunction
		;

		friend auto constexpr
		(	operator ==
		)	(	Conjunction const&
			,	Conjunction const&
			)
		->	bool
		=	default;
	};

	auto constexpr
	(	Conjunction
	::	True
	)	()
	->	Conjunction
	{	return {};	}

	auto constexpr
	(	Conjunction
	::	False
	)	()
	->	Conjunction
	{	return not True();	}

	auto constexpr
	(	Conjunction
	::	Literal
	)	(	USize
				i_nLiteralIndex
		)
	->	Conjunction
	{	return { BitClause{i_nLiteralIndex}};	}

	auto constexpr
	(	Conjunction
	::	IsTrue
	)	()	const
	->	bool
	{	return Term.IsIdentity();	}

	auto constexpr
	(	Conjunction
	::	IsFalse
	)	()	const
	->	bool
	{	return Term.IsAbsorbing();	}

	auto constexpr
	(	Conjunction
	::	ClauseCount
	)	()	const
	->	USize
	{	return Term.ClauseCount();	}

	auto constexpr
	(	Conjunction
	::	PredicateField
	)	()	const
	->	USize
	{	return Term.PredicateField();	}

	auto constexpr
	(	Conjunction
	::	Permutation
	)	(	::std::span<USize const>
				i_vPermutation
		)	const
	->	Conjunction
	{	return { Term.Permutation(i_vPermutation) };	}

	auto constexpr
	(	operator not
	)	(	Conjunction const
			&	i_rConjunction
		)
	->	Conjunction
	{	return { Negation(i_rConjunction.Term) };	}

	auto constexpr
	(	operator and
	)	(	Conjunction const
			&	i_rLeft
		,	Conjunction const
			&	i_rRight
		)
	->	Conjunction
	{	return { Intersection(i_rLeft.Term, i_rRight.Term) };	}

	auto constexpr
	(	operator or
	)	(	Conjunction const
			&	i_rLeft
		,	Conjunction const
			&	i_rRight
		)
	->	Conjunction
	{	return { Union(i_rLeft.Term, i_rRight.Term) };	}
}
