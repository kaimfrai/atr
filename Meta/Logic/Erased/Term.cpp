export module Meta.Logic.Erased.Term;

import Meta.Token.TypeID;

import Meta.Logic.Bit.Clause;
import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.BinaryFunction;
import Meta.Logic.Erased.Clause;

import Meta.Buffer.Static;
import Meta.Bit.OneIndexRange;
import Meta.Bit.Field.CountOnes;
import Meta.Bit.Index;
import Meta.Bit.Index.Compare;
import Meta.Size;

import Std;

export namespace
	Meta::Logic::Erased
{
	struct
		Term final
	{
		using
			LiteralBufferType
		=	::std::array
			<	TypeID
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
			,	::std::span<TypeID const>
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
			,	::std::span<TypeID const>
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
			,	std::span<TypeID const>
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
			<	TypeID
			,	Logic::Bit::LiteralLimit.get()
			>
		{
			Buffer::Static
			<	TypeID
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
			using ::std::begin;
			using ::std::end;

			if	(	auto const
						vLeftSpan
					=	i_rLeft.LiteralSpan()
					,	vRightSpan
					=	i_rRight.LiteralSpan()
				;	::std::equal
					(	begin(vLeftSpan)
					,	end(vLeftSpan)
					,	begin(vRightSpan)
					,	end(vRightSpan)
					)
				)
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
						]	(	TypeID
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
		->	::std::span<TypeID const>
		{	return
			{	Literals.begin()
			,	LiteralCount()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	USize
					i_nClauseIndex
			)	const
			noexcept
		->	Clause
		{	auto const
				vTrimmed
			=	TrimLiterals
				(	BitTerm[i_nClauseIndex]
				,	Literals
				)
			;
			return
			{	vTrimmed.BitTerm[0uz]
			,	vTrimmed.Literals
			};
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
}
