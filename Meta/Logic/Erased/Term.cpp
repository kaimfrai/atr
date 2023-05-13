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
		=	TypeID
				[	Bit::LiteralLimit
					.	get
						()
				]
		;

		using
			IndexType
		=	typename
				Logic
			::	Bit
			::	Term
			::	IndexType
		;

		Bit::Term
			BitTerm
		;
		LiteralBufferType
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
			Term
				vTrimmed
			{	.BitTerm
				=	i_rResult
					.	TrimLiterals
						()
			,	.Literals
				{}
			};

			for	(	auto
						nArrayIndex
					=	0uz
				;	auto
						vBitIndex
				:	::Meta::Bit::OneIndexRange
					{	i_rResult
						.	LiteralField
							()
					}
				)
			{
				vTrimmed
				.	Literals
					[	nArrayIndex
					]
				=	i_vUnion
						[	static_cast<USize>
							(	vBitIndex
								.	get
									()
							)
						]
				;
				++nArrayIndex;
			}

			return
				vTrimmed
			;
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
			,	Logic::Bit::LiteralLimit
				.	get
					()
			>
		{
			Buffer::Static
			<	TypeID
			,	Logic::Bit::LiteralLimit
				.	get
					()
			>
				vUnion
			;

			vUnion
			.	m_nElementCount
			=	0uz
			;

			auto const
				vLeftSpan
			=	i_rLeft
				.	LiteralSpan
					()
			;

			for	(	auto
						vTypeID
				:	vLeftSpan
				)
			{
				vUnion
				.	m_vBuffer
					[	vUnion
						.	m_nElementCount
					]
				=	vTypeID
				;
				++	vUnion
					.	m_nElementCount
				;
			}

			auto const
				aLeftBegin
			=	vLeftSpan
				.	begin
					()
			;

			auto const
				aLeftEnd
			=	vLeftSpan
				.	end
					()
			;

			for	(	auto
						vTypeID
				:	i_rRight
					.	LiteralSpan
						()
				)
			{
				if	(	auto
							aLeftPosition
						=	::std::find
							(	aLeftBegin
							,	aLeftEnd
							,	vTypeID
							)
					;	(	aLeftPosition
						==	aLeftEnd
						)
					)
				{
					vUnion
					.	m_vBuffer
						[	vUnion
							.	m_nElementCount
						]
					=	vTypeID
					;
					++	vUnion
						.	m_nElementCount
					;
				}
			}

			//	compiler will complain about uninitialized buffer in constant expression otherwise
			if consteval
			{
				vUnion
				.	SetUnusedToDefault
					()
				;
			}

			return
				vUnion
			;
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
			IndexType
				vPermutationArray
				[	Logic::Bit::LiteralLimit
					.	get
						()
				]
			;

			auto const
				vLiteralSpan
			=	LiteralSpan
				()
			;

			for	(	IndexType
					*	aIndex
					=	+
						vPermutationArray
				;	auto
						vLiteral
				:	vLiteralSpan
				)
			{
				*	aIndex
				=	i_fMapIndex
					(	vLiteral
					)
				;
				++	aIndex
				;
			}

			return
			BitTerm
			.	Permutation
				(	::std::span
					{	+
						vPermutationArray
					,	vLiteralSpan
						.	size
							()
					}
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
			{	+
				Literals
			,	LiteralCount
				()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	USize
					i_vClauseIndex
			)	const
			noexcept
		->	Clause
		{
			auto const
				[	rBitTerm
				,	rLiterals
				]
			=	TrimLiterals
				(	BitTerm
						[	i_vClauseIndex
						]
				,	Literals
				)
			;

			static_assert
			(	Bit::LiteralLimit.get() == 16z
			,	"The optimization below need to be updated"
			);

			return
			{	.BitClause
				=	rBitTerm
						[	0uz
						]
			,	.Literals
				// TODO replace with a pack as soon as structured binding can introduce a pack
				{	rLiterals[0x0]
				,	rLiterals[0x1]
				,	rLiterals[0x2]
				,	rLiterals[0x3]
				,	rLiterals[0x4]
				,	rLiterals[0x5]
				,	rLiterals[0x6]
				,	rLiterals[0x7]
				,	rLiterals[0x8]
				,	rLiterals[0x9]
				,	rLiterals[0xA]
				,	rLiterals[0xB]
				,	rLiterals[0xC]
				,	rLiterals[0xD]
				,	rLiterals[0xE]
				,	rLiterals[0xF]
				}
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
