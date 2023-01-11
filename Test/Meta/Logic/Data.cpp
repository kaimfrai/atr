export module Meta.Logic.Test.Data;

export import Meta.Logic;

export import Std;

export
{
	struct
		TestTerm
	{
		Meta::ErasedTerm
			Term
		;

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	TestTerm const
				&	i_rLeft
			,	TestTerm const
				&	i_rRight
			)
			noexcept
		->	bool
		{
			if	(	bool const
						bEquivalent
					=	i_rLeft.Term
					==	i_rRight.Term
				;	not
					bEquivalent
				)
				return false;

			if	(	bool const
						bLiteralsPermutation
				=	::std::is_permutation
					(	begin(i_rLeft.Term.Literals)
					,	end(i_rLeft.Term.Literals)
					,	begin(i_rRight.Term.Literals)
					,	end(i_rRight.Term.Literals)
					)
				;	not
					bLiteralsPermutation
				)
				return false;

			if	(	bool const
						bEqualClauseCount
					=	i_rLeft.Term.ClauseCount()
					==	i_rRight.Term.ClauseCount()
				;	not
					bEqualClauseCount
				)
				return false;

			auto const
				vLeftLiteralSum
			=	i_rLeft.Term.BitTerm.transform_reduce
				(	0uz
				,	::std::plus<>{}
				,	&Meta::Logic::BitClause::LiteralCount
				)
			;

			auto const
				vRightLiteralSum
			=	i_rRight.Term.BitTerm.transform_reduce
				(	0uz
				,	::std::plus<>{}
				,	&Meta::Logic::BitClause::LiteralCount
				)
			;

			return vLeftLiteralSum == vRightLiteralSum;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator and
		)	(	TestTerm const
				&	i_rLeft
			,	TestTerm const
				&	i_rRight
			)
			noexcept
		->	TestTerm
		{	return
			{	i_rLeft.Term
			and	i_rRight.Term
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator or
		)	(	TestTerm const
				&	i_rLeft
			,	TestTerm const
				&	i_rRight
			)
			noexcept
		->	TestTerm
		{	return
			{	i_rLeft.Term
			or	i_rRight.Term
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator not
		)	(	TestTerm const
				&	i_rTerm
			)
			noexcept
		->	TestTerm
		{	return
			{	not
				i_rTerm.Term
			};
		}
	};

	///	Constants
	TestTerm constexpr inline T{::Meta::ErasedTrue};
	TestTerm constexpr inline F{::Meta::ErasedFalse};
	/// Literals
	struct P{};
	TestTerm constexpr inline p{::Meta::ErasedLiteral<P>};
	struct Q{};
	TestTerm constexpr inline q{::Meta::ErasedLiteral<Q>};
	struct R{};
	TestTerm constexpr inline r{::Meta::ErasedLiteral<R>};
}
