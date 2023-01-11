export module Meta.Logic.Test.Data;

import Meta.Logic;

import Std;

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
	struct p{};
	TestTerm constexpr inline P{::Meta::ErasedLiteral<p>};
	struct q{};
	TestTerm constexpr inline Q{::Meta::ErasedLiteral<q>};
	struct r{};
	TestTerm constexpr inline R{::Meta::ErasedLiteral<r>};

	auto constexpr inline
		nP
	=	!P
	;
	auto constexpr inline
		nQ
	=	!Q
	;
	auto constexpr inline
		nR
	=	!R
	;

	auto constexpr inline
		P_and_Q
	=	P and Q
	;
	auto constexpr inline
		P_and_nQ
	=	P and nQ
	;
	auto constexpr inline
		P_and_R
	=	P and R
	;
	auto constexpr inline
		P_and_nR
	=	P and nR
	;

	auto constexpr inline
		nP_and_Q
	=	nP and Q
	;
	auto constexpr inline
		nP_and_nQ
	=	nP and nQ
	;
	auto constexpr inline
		nP_and_R
	=	nP and R
	;
	auto constexpr inline
		nP_and_nR
	=	nP and nR
	;

	auto constexpr inline
		Q_and_R
	=	Q and R
	;
	auto constexpr inline
		Q_and_nR
	=	Q and nR
	;

	auto constexpr inline
		nQ_and_R
	=	nQ and R
	;
	auto constexpr inline
		nQ_and_nR
	=	nQ and nR
	;

	auto constexpr inline
		P_and_Q_and_R
	=	P_and_Q and R
	;
	auto constexpr inline
		P_and_Q_and_nR
	=	P_and_Q and nR
	;
	auto constexpr inline
		P_and_nQ_and_R
	=	P_and_nQ and R
	;
	auto constexpr inline
		P_and_nQ_and_nR
	=	P_and_nQ and nR
	;

	auto constexpr inline
		nP_and_Q_and_R
	=	nP_and_Q and R
	;
	auto constexpr inline
		nP_and_Q_and_nR
	=	nP_and_Q and nR
	;
	auto constexpr inline
		nP_and_nQ_and_R
	=	nP_and_nQ and R
	;
	auto constexpr inline
		nP_and_nQ_and_nR
	=	nP_and_nQ and nR
	;

	auto constexpr inline
		P_and_nR_or_nP_and_nQ
	=	P_and_nR or nP_and_nQ
	;
	auto constexpr inline
		nP_and_nR_or_nP_and_nQ
	=	nP_and_nR or nP_and_nQ
	;
	auto constexpr inline
		P_and_nR_or_nP_and_nQ_and_R
	=	P_and_nR or nP_and_nQ_and_R
	;
	auto constexpr inline
		nP_and_nR_or_nP_and_nQ_and_R
	=	nP_and_nR or nP_and_nQ_and_R
	;
	auto constexpr inline
		P_and_nR_or_nP_and_nQ_or_Q_and_R
	=	P_and_nR_or_nP_and_nQ or Q_and_R
	;
	auto constexpr inline
		P_and_Q_and_R_or_nP_and_nQ
	=	P_and_Q_and_R or nP_and_nQ
	;
	auto constexpr inline
		P_and_Q_and_R_or_nP_and_nQ_and_R
	=	P_and_Q_and_R or nP_and_nQ_and_R
	;
	auto constexpr inline
		P_and_Q_and_R_or_nP_and_nQ_and_nR
	=	P_and_Q_and_R or nP_and_nQ_and_nR
	;
	auto constexpr inline
		nP_and_Q_and_R_or_nP_and_nQ_and_nR
	=	nP_and_Q_and_R or nP_and_nQ_and_nR
	;
	auto constexpr inline
		P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR
	=	P_and_Q_and_R_or_nP_and_nQ or nP_and_nR
	;
	auto constexpr inline
		P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR
	=	P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR or nQ_and_nR
	;
	auto constexpr inline
		P_and_Q_and_R_or_P_and_nQ_and_nR
	=	P_and_Q_and_R or P_and_nQ_and_nR
	;
	auto constexpr inline
		P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR
	=	P_and_Q_and_R_or_P_and_nQ_and_nR or nP_and_Q_and_nR
	;
	auto constexpr inline
		P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R
	=	P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR or nP_and_nQ_and_R
	;
	auto constexpr inline
		P_and_Q_or_nP_and_nQ
	=	P_and_Q or nP_and_nQ
	;
	auto constexpr inline
		P_and_Q_or_nP_and_nQ_and_R
	=	P_and_Q or nP_and_nQ_and_R
	;
	auto constexpr inline
		P_and_Q_or_nP_and_nQ_and_nR
	=	P_and_Q or nP_and_nQ_and_nR
	;
	auto constexpr inline
		P_and_Q_or_nP_and_nQ_or_nQ_and_R
	=	P_and_Q_or_nP_and_nQ or nQ_and_R
	;
	auto constexpr inline
		P_and_Q_or_nP_and_nQ_or_R
	=	P_and_Q_or_nP_and_nQ or R
	;
	auto constexpr inline
		P_and_Q_or_nP_and_R
	=	P_and_Q or nP_and_R
	;
	auto constexpr inline
		nP_and_Q_or_nP_and_R
	=	nP_and_Q or nP_and_R
	;
	auto constexpr inline
		P_and_Q_or_nP_and_R_or_nQ_and_nR
	=	P_and_Q_or_nP_and_R or nQ_and_nR
	;
	auto constexpr inline
		P_and_Q_or_P_and_R
	=	P_and_Q or P_and_R
	;
	auto constexpr inline
		P_and_Q_or_P_and_R_or_nP_and_nQ
	=	P_and_Q_or_P_and_R or nP_and_nQ
	;
	auto constexpr inline
		P_and_Q_or_P_and_R_or_nP_and_nQ_and_nR
	=	P_and_Q_or_P_and_R or nP_and_nQ_and_nR
	;
	auto constexpr inline
		P_and_Q_or_P_and_R_or_Q_and_R
	=	P_and_Q_or_P_and_R or Q_and_R
	;
	auto constexpr inline
		P_and_Q_or_R
	=	P_and_Q or R
	;
	auto constexpr inline
		nP_and_Q_or_R
	=	nP_and_Q or R
	;
	auto constexpr inline
		P_or_Q
	=	P or Q
	;
	auto constexpr inline
		P_or_Q_and_R
	=	P or Q_and_R
	;
	auto constexpr inline
		P_or_Q_and_nR
	=	P or Q_and_nR
	;
	auto constexpr inline
		nP_or_Q
	=	nP or Q
	;
	auto constexpr inline
		nP_or_Q_and_R
	=	nP or Q_and_R
	;
	auto constexpr inline
		nP_or_Q_and_nR
	=	nP or Q_and_nR
	;
	auto constexpr inline
		P_or_Q_or_R
	=	P_or_Q or R
	;
	auto constexpr inline
		nP_or_Q_or_R
	=	nP_or_Q or R
	;
}
