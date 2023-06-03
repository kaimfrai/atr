export module Meta.Logic.Bit.Term;

import Meta.Logic.Bit.Clause;
import Meta.Logic.Bit.Optimizer;

import Meta.Size;
import Meta.Bit.Index.Arithmetic;
import Meta.Bit.Count.Compare;
import Meta.Bit.Count.Range;
import Meta.Bit.Field.Arithmetic;
import Meta.Bit.Field.CountOnes;
import Meta.Bit.Field.Width;

import Std;

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

		ClauseBuffer
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
		auto friend constexpr
		(	begin
		)	(	Term const
				&	i_rTerm
			)
		->	decltype(auto)
		{	return begin(i_rTerm.Clauses);	}

		[[nodiscard]]
		auto friend constexpr
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
			,	end(*this)
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
			noexcept
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
				,	end(*this)
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
					[	LiteralLimit
						.	get
							()
					]
				{};

				for	(	Clause::IndexType
							nPermutation
						{}
					;	auto
							nIndex
					:	nMaxLiteralCount
					)
				{
					(	vTrimLiteralPermutation
						[	static_cast<USize>
							(	nIndex.get()
							)
						]
					=	nPermutation
					);

					if	(vLiteralField[nIndex])
						++nPermutation;
				}

				return
				Permutation
				(	::std::span<Clause::IndexType const>
					{	::std::begin
						(	vTrimLiteralPermutation
						)
					,	static_cast<USize>
						(	nMaxLiteralCount
							.	get
								()
						)
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
		(	operator[]
		)	(	USize
					i_nIndex
			)	const&
		->	Clause
		{
			if	(i_nIndex >= ClauseLimit)
				((void)"Index beyond ClauseLimit!", std::unreachable());

			return Clauses[i_nIndex];
		}
	};
}
