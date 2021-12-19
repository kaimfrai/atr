export module Meta.Logic.Disjunction;

export import Meta.Logic.BitTerm;

namespace
	Meta::Logic
{
	export struct
		Disjunction
	{
		BitTerm const
			Term
		{};

		static auto constexpr
		(	True
		)	()
		->	Disjunction
		;

		static auto constexpr
		(	False
		)	()
		->	Disjunction
		;

		static auto constexpr
		(	Literal
		)	(	USize
			)
		->	Disjunction
		;

		auto constexpr
		(	Permutation
		)	(	::std::span<USize const>
			)	const
		->	Disjunction
		;

		friend auto constexpr
		(	operator not
		)	(	Disjunction const&
			)
		->	Disjunction
		;

		friend auto constexpr
		(	operator and
		)	(	Disjunction const&
			,	Disjunction const&
			)
		->	Disjunction
		;

		friend auto constexpr
		(	operator or
		)	(	Disjunction const&
			,	Disjunction const&
			)
		->	Disjunction
		;

		friend auto constexpr
		(	operator ==
		)	(	Disjunction const&
			,	Disjunction const&
			)
		->	bool
		=	default;
	};

	auto constexpr
	(	Disjunction
	::	True
	)	()
	->	Disjunction
	{	return not False();	}

	auto constexpr
	(	Disjunction
	::	False
	)	()
	->	Disjunction
	{	return {};	}

	auto constexpr
	(	Disjunction
	::	Literal
	)	(	USize
				i_nLiteralIndex
		)
	->	Disjunction
	{	return { BitClause{i_nLiteralIndex} };	}

	auto constexpr
	(	Disjunction
	::	Permutation
	)	(	::std::span<USize const>
				i_vPermutation
		)	const
	->	Disjunction
	{	return { Term.Permutation(i_vPermutation) };	}

	auto constexpr
	(	operator not
	)	(	Disjunction const
			&	i_rDisjunction
		)
	->	Disjunction
	{	return { Negation(i_rDisjunction.Term) };	}

	auto constexpr
	(	operator and
	)	(	Disjunction const
			&	i_rLeft
		,	Disjunction const
			&	i_rRight
		)
	->	Disjunction
	{	return { Union(i_rLeft.Term, i_rRight.Term) };	}

	auto constexpr
	(	operator or
	)	(	Disjunction const
			&	i_rLeft
		,	Disjunction const
			&	i_rRight
		)
	->	Disjunction
	{	return { Intersection(i_rLeft.Term, i_rRight.Term) };	}
}
