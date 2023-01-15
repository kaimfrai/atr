export module Meta.Logic.ErasedTerm;

export import Meta.Logic.Bit.Term;
export import Meta.Logic.LiteralBase;
import Meta.Logic.Bit.BinaryFunction;
import Meta.Logic.Bit.Conjunction;
import Meta.Logic.Bit.Disjunction;
import Meta.Logic.Bit.Equivalence;

import Meta.Size;
import Meta.Buffer.Static;
export import Meta.Token;
import Meta.Functional;
import Meta.Bit.OneIndexRange;
import Meta.Bit.Field;
import Meta.Bit.Field.CountOnes;
import Meta.Bit.Field.Set;
import Meta.Bit.Index;
import Meta.Bit.Index.Arithmetic;
import Meta.Bit.Index.Compare;

import Std;

using namespace ::Meta::Literals;

export namespace
	Meta
{
	struct
		ErasedTerm final
	{
		using
			LiteralBufferType
		=	::std::array
			<	EraseTypeToken
			,	Logic::Bit::LiteralLimit.get()
			>
		;

		using
			IndexType
		=	typename
				Logic::Bit::Term
			::	IndexType
		;

		Logic::Bit::Term const
			BitTerm
		;
		LiteralBufferType const
			Literals
		{};

		static auto constexpr
		(	TrimLiterals
		)	(	Logic::Bit::Term const
				&	i_rResult
			,	std::span<EraseTypeToken const>
					i_vUnion
			)
		->	ErasedTerm
		{
			LiteralBufferType
				vLiterals
			{};

			for	(	auto
						nArrayIndex
					=	0uz
				;	auto
						vBitIndex
				:	Bit::OneIndexRange
					{	i_rResult.LiteralField()
					}
				)
			{
				(	vLiterals
					[	nArrayIndex
					]
				=	i_vUnion
					[	static_cast<USize>
						(	vBitIndex.get()
						)
					]
				);
				++nArrayIndex;
			}

			return
			{	i_rResult.TrimLiterals()
			,	vLiterals
			};
		}

		static auto constexpr
		(	ProcessComputation
		)	(	bool
					i_bEquivalence
			,	std::span<EraseTypeToken const>
			)
		->	bool
		{	return i_bEquivalence;	}

		static auto constexpr
		(	ProcessComputation
		)	(	Logic::Bit::Term const
				&	i_rResult
			,	std::span<EraseTypeToken const>
					i_vUnion
			)
		->	ErasedTerm
		{	return TrimLiterals(i_rResult, i_vUnion);	}

		static auto constexpr
		(	GetLiteralUnion
		)	(	ErasedTerm const
				&	i_rLeft
			,	ErasedTerm const
				&	i_rRight
			)
		{
			Buffer::Static
			<	EraseTypeToken
			,	Logic::Bit::LiteralLimit.get()
			>	vUnion
			;
			vUnion.AppendUnique(i_rLeft.LiteralSpan());
			vUnion.AppendUnique(i_rRight.LiteralSpan());

			//	compiler will complain about uninitialized buffer in constant expression otherwise
			if consteval
			{
				vUnion.SetUnusedToDefault();
			}
			return vUnion;
		}

		auto constexpr
		(	GetBitTermPermutation
		)	(	auto const
				&	i_fMapIndex
			)	const
		->	Logic::Bit::Term
		{
			Buffer::Static
			<	IndexType
			,	Logic::Bit::LiteralLimit.get()
			>	vPermutationArray
			;

				vPermutationArray
			.	AppendUnique
				(	LiteralSpan()
				|	std::views::transform
					(	i_fMapIndex
					)
				)
			;

			return
				BitTerm
			.	Permutation
				(	vPermutationArray
				)
			;
		}

		template
			<	typename
					t_tResult
			>
		static auto constexpr
		(	ComputeErasedTerm
		)	(	ErasedTerm const
				&	i_rLeft
			,	ErasedTerm const
				&	i_rRight
			,	Logic::Bit::BinaryFunction<t_tResult>
					i_fCompute
			)
		{
			if	(std::ranges::equal(i_rLeft.LiteralSpan(), i_rRight.LiteralSpan()))
			{
				return
				ProcessComputation
				(	i_fCompute
					(	i_rLeft.BitTerm
					,	i_rRight.BitTerm
					)
				,	i_rLeft.Literals
				);
			}

			auto const
				vUnion
			=	GetLiteralUnion
				(	i_rLeft
				,	i_rRight
				)
			;

			return
			ProcessComputation
			(	i_fCompute
				(	i_rLeft.BitTerm
				,	i_rRight.GetBitTermPermutation
					(	[	&vUnion
						]	(	EraseTypeToken
									i_vType
							)
						->	IndexType
						{	return
							IndexType
							{	static_cast<typename IndexType::IndexType>
								(	vUnion.FindIndexOf
									(	i_vType
									)
								)
							};
						}
					)
				)
			,	vUnion
			);
		}

		[[nodiscard]]
		auto constexpr
		(	LiteralCount
		)	()	const
			noexcept
		->	USize
		{	return
			static_cast<USize>
			(	CountOnes
				(	BitTerm
				.	LiteralField()
				)
			.	get()
			);
		}

		auto constexpr
		(	ClauseCount
		)	()	const
		{	return
				BitTerm
			.	ClauseCount()
			;
		}

		[[nodiscard]]
		auto constexpr
		(	LiteralSpan
		)	()	const
			noexcept
		->	::std::span<EraseTypeToken const>
		{	return
			{	Literals.begin()
			,	LiteralCount()
			};
		}

		auto constexpr
		(	GetClause
		)	(	USize
					i_nClauseIndex
			)	const
		{	return
			TrimLiterals
			(	BitTerm[i_nClauseIndex]
			,	Literals
			);
		}
	};

	ErasedTerm constexpr inline
		ErasedTrue
	{	Logic::Bit::Clause::Absorbing()
	};

	ErasedTerm constexpr inline
		ErasedFalse
	{	Logic::Bit::Clause::Identity()
	};

	template
		<	typename
				t_tLiteral
		>
	ErasedTerm constexpr inline
		ErasedLiteral
	{	Logic::Bit::Clause{0_bdx}
	,	{	Type<t_tLiteral>
		}
	};
}
