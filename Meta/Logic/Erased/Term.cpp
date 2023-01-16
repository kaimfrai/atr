export module Meta.Logic.Erased.Term;

export import Meta.Token;

import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.BinaryFunction;

import Meta.Buffer.Static;
import Meta.Bit.OneIndexRange;
import Meta.Bit.Field.CountOnes;
import Meta.Bit.Index;
import Meta.Bit.Index.Compare;
import Meta.Size;

import Std;

using namespace ::Meta::Literals;

export namespace
	Meta::Logic::Erased
{
	struct
		Term final
	{
		using
			LiteralBufferType
		=	::std::array
			<	EraseTypeToken
			,	Bit::LiteralLimit.get()
			>
		;

		using
			IndexType
		=	typename
				Logic
			::	Bit
			::	Term
			::	IndexType
		;

		Bit::Term const
			BitTerm
		;
		LiteralBufferType const
			Literals
		{};

		[[nodiscard]]
		static auto constexpr
		(	TrimLiterals
		)	(	Bit::Term const
				&	i_rResult
			,	::std::span<EraseTypeToken const>
					i_vUnion
			)
			noexcept
		->	Term
		{
			LiteralBufferType
				vLiterals
			{};

			for	(	auto
						nArrayIndex
					=	0uz
				;	auto
						vBitIndex
				:	::Meta::Bit::OneIndexRange
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

		[[nodiscard]]
		static auto constexpr
		(	ProcessComputation
		)	(	bool
					i_bEquivalence
			,	::std::span<EraseTypeToken const>
			)
			noexcept
		->	bool
		{	return
				i_bEquivalence
			;
		}

		[[nodiscard]]
		static auto constexpr
		(	ProcessComputation
		)	(	Bit::Term const
				&	i_rResult
			,	std::span<EraseTypeToken const>
					i_vUnion
			)
			noexcept
		->	Term
		{	return
			TrimLiterals
			(	i_rResult
			,	i_vUnion
			);
		}

		[[nodiscard]]
		static auto constexpr
		(	GetLiteralUnion
		)	(	Term const
				&	i_rLeft
			,	Term const
				&	i_rRight
			)
			noexcept
		->	Buffer::Static
			<	EraseTypeToken
			,	Logic::Bit::LiteralLimit.get()
			>
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

		[[nodiscard]]
		auto constexpr
		(	GetBitTermPermutation
		)	(	auto const
				&	i_fMapIndex
			)	const
			noexcept
		->	Bit::Term
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
		[[nodiscard]]
		static auto constexpr
		(	Compute
		)	(	Term const
				&	i_rLeft
			,	Term const
				&	i_rRight
			,	Bit::BinaryFunction<t_tResult>
					i_fCompute
			)
			noexcept
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

		[[nodiscard]]
		auto constexpr
		(	ClauseCount
		)	()	const
			noexcept
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

		[[nodiscard]]
		auto constexpr
		(	GetClause
		)	(	USize
					i_nClauseIndex
			)	const
			noexcept
		{	return
			TrimLiterals
			(	BitTerm[i_nClauseIndex]
			,	Literals
			);
		}
	};

	Term constexpr inline
		True
	{	Bit::Clause::Absorbing()
	};

	Term constexpr inline
		False
	{	Bit::Clause::Identity()
	};

	template
		<	typename
				t_tLiteral
		>
	Term constexpr inline
		Literal
	{	Bit::Clause{0_bdx}
	,	{	Type<t_tLiteral>
		}
	};
}
