export module Meta.Logic:BitTerm;

export import :BitClause;
export import :BitClauseIterator;
import :Optimizer;

import Meta.Size;
import Meta.Arithmetic;
import Meta.Bit.CountOnes;
import Meta.Bit.Width;
import Meta.Bit.Test;
import Meta.Bit.Power;
import Meta.Bit.Field;
import Meta.Bit.Count;

import Std;

export namespace
	Meta::Logic
{
	struct
		BitTerm final
	{
		BitClauseBuffer const
			Clauses
		{};

		explicit(false) constexpr
		(	BitTerm
		)	()
		=	default;

		explicit(false) constexpr
		(	BitTerm
		)	(	BitClause
					i_vClause
			)
		:	Clauses
			{	i_vClause.IsIdentity()
			?	BitClauseBuffer{}
			:	BitClauseBuffer
				{	i_vClause
				}
			}
		{}

		explicit(false) constexpr
		(	BitTerm
		)	(	BitClauseBuffer const
				&	i_rClauses
			)
		:	Clauses
			{	i_rClauses
			}
		{}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	BitTerm const
				&	i_rTerm
			)
		->	decltype(auto)
		{	return begin(i_rTerm.Clauses);	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	BitTerm const
				&	i_rTerm
			)
		->	decltype(auto)
		{	return end(i_rTerm.Clauses);	}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			::std::span<BitClause const>
		)	()	const&
		{	return
			{	begin(*this)
			,	end(*this).base()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	Evaluate
		)	(	Logic::BitClause::FieldType
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
		(	Permutation
		)	(	::std::span<Bits const>
					i_vPermutation
			)	const
		->	BitTerm
		{
			Optimizer
				vPermutationResult
			{	2uz
			*	ClauseCount()
			};

			for	(	BitClause
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
		{
			auto const
				vLiteralField
			=	LiteralField
				()
			;
			auto const
				nRequiredLiteralCount
			=	Bit::CountOnes(vLiteralField)
			;

			auto const
				nMaxLiteralCount
			=	Bit::Width
				(	vLiteralField
				)
			;

			if	(	nRequiredLiteralCount
				==	nMaxLiteralCount
				)
				return *this;
			else
			{
				Bits
					vTrimLiteralPermutation
				[	LiteralLimit
				]{};

				for	(	Bits
							nIndex
						{}
						,	nPermutation
						{}
					;		nIndex
						<	nMaxLiteralCount
					;	++	nIndex
					)
				{
						vTrimLiteralPermutation
						[	nIndex.get()
						]
					=	nPermutation
					;
					nPermutation += Bits{Bit::Test(vLiteralField, nIndex)};
				}

				return
				Permutation
				(	::std::span<Bits const>
					{	+vTrimLiteralPermutation
					,	nMaxLiteralCount.get()
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
		->	BitClause
		{
			if	(i_nIndex >= ClauseLimit)
				((void)"Index beyond ClauseLimit!", std::unreachable());

			return Clauses[i_nIndex];
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
			auto const
				vBegin
			=	begin(*this)
			,	vEnd
			=	end(*this).base()
			;
			if	constexpr
				(	std::is_member_pointer_v
					<	std::remove_cvref_t
						<	decltype(i_fTransform)
						>
					>
				)
			{	return
				std::transform_reduce
				(	vBegin
				,	vEnd
				,	std::forward<decltype(i_rInitial)>(i_rInitial)
				,	std::forward<decltype(i_fReduce)>(i_fReduce)
				,	std::mem_fn(i_fTransform)
				);
			}
			else
			{	return
				std::transform_reduce
				(	vBegin
				,	vEnd
				,	std::forward<decltype(i_rInitial)>(i_rInitial)
				,	std::forward<decltype(i_fReduce)>(i_fReduce)
				,	std::forward<decltype(i_fTransform)>(i_fTransform)
				);
			}
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	BitTerm const
				&	i_rLeftTerm
			,	BitTerm const
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
		)	(	BitTerm const
				&	i_rLeftTerm
			,	BitTerm const
				&	i_rRightTerm
			)
		->	BitTerm
		{
			if	(i_rLeftTerm.IsAbsorbing() or i_rRightTerm.IsAbsorbing())
				return BitClause::Absorbing();

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

			//	at most 2^LiteralCount clauses are possible
			auto const
				nMaxClauseCount
			=	Bit::Power(nCombinedLiteralCount)
			;

			Optimizer
				vOptimizer
			{	nMaxClauseCount
			};

			vOptimizer.insert(i_rLeftTerm);
			vOptimizer.insert(i_rRightTerm);

			return {::std::move(vOptimizer)};
		}

		[[nodiscard]]
		friend auto constexpr
		(	Union
		)	(	BitTerm const
				&	i_rLeftTerm
			,	BitTerm const
				&	i_rRightTerm
			)
		->	BitTerm
		{
			if	(i_rLeftTerm.IsIdentity() or i_rRightTerm.IsIdentity())
				return BitClause::Identity();

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

			//	at most 2^LiteralCount clauses are possible
			auto const
				nMaxClauseCount
			=	Bit::Power(nCombinedLiteralCount)
			;

			Optimizer
				vOptimizer
			{	nMaxClauseCount
			};

			for	(	BitClause
						i_vLeftClause
				:	i_rLeftTerm
				)
			{
				for	(	BitClause
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
		)	(	BitTerm const
				&	i_rTerm
			)
		->	BitTerm
		{
			if	(i_rTerm.IsAbsorbing())
				return BitClause::Identity();

			if	(i_rTerm.IsIdentity())
				return BitClause::Absorbing();

			USize const
				nMaxClauseCount
			=	i_rTerm.transform_reduce
				(	1uz
				,	std::multiplies<USize>{}
				,	&BitClause::LiteralCount
				)
			;

			Optimizer
				vOptimizer
			{	nMaxClauseCount
			};
			vOptimizer.insert(BitClause::Absorbing());

			Optimizer
				vResultBuffer
			{	nMaxClauseCount
			};

			for	(	BitClause const
						vClause
				:	i_rTerm
				)
			{
				for	(	BitClause const
							vLiteral
					:	vClause
					)
				{
					BitClause const
						vNegatedLiteral
					=	Inverse(vLiteral)
					;
					for	(	BitClause const
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

		[[nodiscard]]
		auto constexpr
		(	LiteralField
		)	()	const
			noexcept
		->	Bit::Field
		{	return
			transform_reduce
			(	Bit::Field{}
			,	std::bit_or<Bit::Field>{}
			,	&BitClause::LiteralField
			);
		}
	};
}
