export module Meta.Logic.Bit.Term;

export import Meta.Logic.Bit.Clause;
export import Meta.Logic.Bit.LiteralIterator;
import Meta.Logic.Bit.Optimizer;

import Meta.Size;
import Meta.Bit.Index;
import Meta.Bit.Index.Arithmetic;
import Meta.Bit.Count.Compare;
import Meta.Bit.Count.Range;
import Meta.Bit.Field.Arithmetic;
import Meta.Bit.Field.CountOnes;
import Meta.Bit.Field.Width;

import Std;

using ::Meta::Bit::Index;

export namespace
	Meta::Logic::Bit
{
	struct
		Term final
	{
		using
			FieldType
		=	typename
				Clause
			::	FieldType
		;
		using
			IndexType
		=	typename
				Clause
			::	IndexType
		;

		ClauseBuffer const
			Clauses
		{};

		explicit(false) constexpr
		(	Term
		)	()
		=	default;

		explicit(false) constexpr
		(	Term
		)	(	Clause
					i_vClause
			)
		:	Clauses
			{	i_vClause.IsIdentity()
			?	ClauseBuffer{}
			:	ClauseBuffer
				{	i_vClause
				}
			}
		{}

		explicit(false) constexpr
		(	Term
		)	(	ClauseBuffer const
				&	i_rClauses
			)
		:	Clauses
			{	i_rClauses
			}
		{}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	Term const
				&	i_rTerm
			)
		->	decltype(auto)
		{	return begin(i_rTerm.Clauses);	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Term const
				&	i_rTerm
			)
		->	decltype(auto)
		{	return end(i_rTerm.Clauses);	}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			::std::span<Clause const>
		)	()	const&
		{	return
			{	begin(*this)
			,	end(*this).base()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	Evaluate
		)	(	FieldType
					i_vPreset
			,	bool
					i_bIdentity
			)	const
		->	bool
		{
			for	(auto vClause : *this)
			{
				if	(vClause.Evaluate(i_vPreset).IsAbsorbing())
					return i_bIdentity;
			}
			return not i_bIdentity;
		}

		[[nodiscard]]
		auto constexpr
		(	transform_reduce
		)	(	auto
				&&	i_rInitial
			,	auto
				&&	i_fReduce
			,	auto
				&&	i_fTransform
			)	const
		{
			if	constexpr
				(	std::is_member_pointer_v
					<	std::remove_cvref_t
						<	decltype(i_fTransform)
						>
					>
				)
			{	return
				transform_reduce
				(	std::forward<decltype(i_rInitial)>(i_rInitial)
				,	std::forward<decltype(i_fReduce)>(i_fReduce)
				,	std::mem_fn(i_fTransform)
				);
			}
			else
			{	return
				std::transform_reduce
				(	begin(*this)
				,	end(*this).base()
				,	std::forward<decltype(i_rInitial)>(i_rInitial)
				,	std::forward<decltype(i_fReduce)>(i_fReduce)
				,	std::forward<decltype(i_fTransform)>(i_fTransform)
				);
			}
		}

		[[nodiscard]]
		auto constexpr
		(	LiteralField
		)	()	const
			noexcept
		->	FieldType
		{	return
			transform_reduce
			(	FieldType{}
			,	::std::bit_or<typename Clause::FieldType>{}
			,	&Clause::LiteralField
			);
		}

		[[nodiscard]]
		auto constexpr
		(	Permutation
		)	(	::std::span<Clause::IndexType const>
					i_vPermutation
			)	const
		->	Term
		{
			Optimizer
				vPermutationResult
			{	2uz
			*	ClauseCount()
			};

			for	(	Clause
						vClause
				:	*this
				)
				vPermutationResult.insert(vClause.Permutation(i_vPermutation));

			return { ::std::move(vPermutationResult) };
		}

		[[nodiscard]]
		auto constexpr
		(	TrimLiterals
		)	()	const
			noexcept
		->	Term
		{
			auto const
				vLiteralField
			=	LiteralField
				()
			;
			auto const
				nRequiredLiteralCount
			=	CountOnes
				(	vLiteralField
				)
			;

			auto const
				nMaxLiteralCount
			=	Width
				(	vLiteralField
				)
			;

			if	(	nRequiredLiteralCount
				==	nMaxLiteralCount
				)
			{	return
					*this
				;
			}
			else
			{
				Clause::IndexType
					vTrimLiteralPermutation
				[	LiteralLimit.get()
				]{};

				for	(	Clause::IndexType
							nPermutation
						{}
					;	auto
							nIndex
					:	nMaxLiteralCount
					)
				{
						vTrimLiteralPermutation
						[	nIndex.get()
						]
					=	nPermutation
					;
					if	(vLiteralField[nIndex])
						++nPermutation;
				}

				return
				Permutation
				(	::std::span<Clause::IndexType const>
					{	+vTrimLiteralPermutation
					,	static_cast<USize>(nMaxLiteralCount.get())
					}
				);
			}
		}

		[[nodiscard]]
		auto constexpr
		(	IsAbsorbing
		)	()	const
		->	bool
		{	return Clauses[0uz].IsAbsorbing();	}

		[[nodiscard]]
		auto constexpr
		(	IsIdentity
		)	()	const
		->	bool
		{	return Clauses[0uz].IsIdentity();	}

		[[nodiscard]]
		auto constexpr
		(	ClauseCount
		)	()	const
		->	USize
		{	return Clauses.size();	}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	USize
					i_nIndex
			)	const&
		->	Clause
		{
			if	(i_nIndex >= ClauseLimit)
				((void)"Index beyond ClauseLimit!", std::unreachable());

			return Clauses[i_nIndex];
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	Term const
				&	i_rLeftTerm
			,	Term const
				&	i_rRightTerm
			)
		->	bool
		{	return
			::std::ranges::equal
			(	i_rLeftTerm
			,	i_rRightTerm
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	Intersection
		)	(	Term const
				&	i_rLeftTerm
			,	Term const
				&	i_rRightTerm
			)
		->	Term
		{
			if	(i_rLeftTerm.IsAbsorbing() or i_rRightTerm.IsAbsorbing())
				return Clause::Absorbing();

			if	(i_rLeftTerm.IsIdentity())
				return i_rRightTerm;
			if	(i_rRightTerm.IsIdentity())
				return i_rLeftTerm;

			if	(i_rLeftTerm == i_rRightTerm)
				return i_rLeftTerm;

			auto const
				nCombinedLiteralCount
			=	CountOnes
				(	i_rLeftTerm.LiteralField()
				bitor
					i_rRightTerm.LiteralField()
				)
			;

			Optimizer
				vOptimizer
			{	nCombinedLiteralCount
			};

			vOptimizer.insert(i_rLeftTerm);
			vOptimizer.insert(i_rRightTerm);

			return {::std::move(vOptimizer)};
		}

		[[nodiscard]]
		friend auto constexpr
		(	Union
		)	(	Term const
				&	i_rLeftTerm
			,	Term const
				&	i_rRightTerm
			)
		->	Term
		{
			if	(i_rLeftTerm.IsIdentity() or i_rRightTerm.IsIdentity())
				return Clause::Identity();

			if	(i_rLeftTerm.IsAbsorbing())
				return i_rRightTerm;
			if	(i_rRightTerm.IsAbsorbing())
				return i_rLeftTerm;

			if	(i_rLeftTerm == i_rRightTerm)
				return i_rLeftTerm;

			auto const
				nCombinedLiteralCount
			=	CountOnes
				(	i_rLeftTerm.LiteralField()
				bitor
					i_rRightTerm.LiteralField()
				)
			;

			Optimizer
				vOptimizer
			{	nCombinedLiteralCount
			};

			for	(	Clause
						i_vLeftClause
				:	i_rLeftTerm
				)
			{
				for	(	Clause
							i_vRightClause
					:	i_rRightTerm
					)
				{
					vOptimizer.insert(Union(i_vLeftClause, i_vRightClause));
				}
			}

			return {::std::move(vOptimizer)};
		}

		[[nodiscard]]
		friend auto constexpr
		(	Negation
		)	(	Term const
				&	i_rTerm
			)
		->	Term
		{
			if	(i_rTerm.IsAbsorbing())
				return Clause::Identity();

			if	(i_rTerm.IsIdentity())
				return Clause::Absorbing();

			USize const
				nMaxClauseCount
			=	i_rTerm.transform_reduce
				(	1uz
				,	std::multiplies<USize>{}
				,	&Clause::LiteralCount
				)
			;

			Optimizer
				vOptimizer
			{	nMaxClauseCount
			};
			vOptimizer.insert(Clause::Absorbing());

			Optimizer
				vResultBuffer
			{	nMaxClauseCount
			};

			for	(	Clause const
						vClause
				:	i_rTerm
				)
			{
				for	(	Clause const
							vLiteral
					:	vClause
					)
				{
					Clause const
						vNegatedLiteral
					=	Inverse(vLiteral)
					;
					for	(	Clause const
								vCurrentClause
						:	vOptimizer
						)
					{
						vResultBuffer.insert
						(	Union
							(	vNegatedLiteral
							,	vCurrentClause
							)
						);
					}
				}
				vOptimizer.clear();
				std::swap(vResultBuffer, vOptimizer);
			}

			return {::std::move(vOptimizer)};
		}
	};
}
