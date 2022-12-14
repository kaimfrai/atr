export module Meta.Logic:Term;

export import :BitTerm;
export import :LiteralBase;
export import :BufferedSpan;

export import Meta.Arithmetic;
export import Meta.Token;

import Std;

using ::Meta::Arithmetic::CountUpperZeroBits;
using ::Meta::Arithmetic::CountLowerZeroBits;

namespace
	Meta::Logic
{
	auto constexpr
	(	EvaluateTerm
	)	(	BitTerm const
			&	i_rTerm
		,	std::span<bool const>
				i_vPreset
		)
	->	bool
	{
		BitClause::FieldType
			nPresetMask
		{	0uz
		};
		for	(	BitClause::FieldType
					nShift
				=	0uz
			;	bool
					bPreset
			:	i_vPreset
			)
		{
			nPresetMask |= bPreset << nShift;
			++nShift;
		}
		return
			i_rTerm
		.	Evaluate
			(	nPresetMask
			,	true
			)
		;
	}

	template
		<	typename
				t_tResult
		>
	using
		BinaryTermFunction
	=	auto
		(*)	(	BitTerm const&
			,	BitTerm const&
			)
		->	t_tResult
	;

	BinaryTermFunction<BitTerm> constexpr inline
		ComputeDisjunction
	=	+[]	(	BitTerm const
				&	i_rLeft
			,	BitTerm const
				&	i_rRight
			)
		->	BitTerm
		{	return Intersection(i_rLeft, i_rRight);	}
	;
	BinaryTermFunction<BitTerm> constexpr inline
		ComputeConjunction
	=	+[]	(	BitTerm const
				&	i_rLeft
			,	BitTerm const
				&	i_rRight
			)
		->	BitTerm
		{	return Union(i_rLeft, i_rRight);	}
	;
	BinaryTermFunction<bool> constexpr inline
		ComputeEquivalence
	{	Fold<&Functional::Key::operator== >{}
	};
}

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
			,	Logic::LiteralLimit
			>
		;

		Logic::BitTerm const
			BitTerm
		;
		LiteralBufferType const
			Literals
		{};

		static auto constexpr
		(	TrimLiterals
		)	(	Logic::BitTerm const
				&	i_rResult
			,	std::span<EraseTypeToken const>
					i_vUnion
			)
		->	ErasedTerm
		{
			auto const
				vResultLiteralField
			=	i_rResult.LiteralField()
			;

			auto const vBitTerm = i_rResult.TrimLiterals();

			USize const
				nRequiredItemCount
			=	CountOneBits(vResultLiteralField)
			;
			if	(nRequiredItemCount > Logic::LiteralLimit)
				((void)"Exceeded maximum amount of predicates per term!", std::unreachable());

			LiteralBufferType
				vLiterals
			{};
			for	(	auto nIndex = 0uz
				;	nIndex < nRequiredItemCount
				;	++nIndex
				)
			{
				(	vLiterals[nIndex]
				=	i_vUnion
					[	GetIndexOfNthOneBit
						(	vResultLiteralField
						,	nIndex
						)
					]
				);
			}
			return
			{	vBitTerm
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
		)	(	Logic::BitTerm const
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
			StaticBufferedSpan
			<	EraseTypeToken
			,	Logic::LiteralLimit
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
		->	Logic::BitTerm
		{
			StaticBufferedSpan
			<	USize
			,	Logic::LiteralLimit
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
			,	Logic::BinaryTermFunction<t_tResult>
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
						{	return
							vUnion.FindIndexOf
							(	i_vType
							);
						}
					)
				)
			,	vUnion
			);
		}

		auto constexpr
		(	LiteralCount
		)	()	const
		{	return
			CountOneBits
			(	BitTerm
			.	LiteralField()
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

	auto constexpr
	(	operator not
	)	(	ErasedTerm const
			&	i_rTerm
		)
		noexcept
	->	ErasedTerm
	{	return
		ErasedTerm
		{	Negation(i_rTerm.BitTerm)
		,	i_rTerm.Literals
		};
	}

	auto constexpr
	(	operator and
	)	(	ErasedTerm const
			&	i_rLeft
		,	ErasedTerm const
			&	i_rRight
		)
		noexcept
	->	ErasedTerm
	{	return
		ErasedTerm::ComputeErasedTerm
		(	i_rLeft
		,	i_rRight
		,	Logic::ComputeConjunction
		);
	}

	auto constexpr
	(	operator or
	)	(	ErasedTerm const
			&	i_rLeft
		,	ErasedTerm const
			&	i_rRight
		)
		noexcept
	->	ErasedTerm
	{	return
		ErasedTerm::ComputeErasedTerm
		(	i_rLeft
		,	i_rRight
		,	Logic::ComputeDisjunction
		);
	}

	auto constexpr
	(	operator ==
	)	(	ErasedTerm const
			&	i_rLeft
		,	ErasedTerm const
			&	i_rRight
		)
	->	bool
	{	return
		ErasedTerm::ComputeErasedTerm
		(	i_rLeft
		,	i_rRight
		,	Logic::ComputeEquivalence
		);
	}

	ErasedTerm constexpr inline
		ErasedTrue
	{	Logic::BitClause::Absorbing()
	};

	ErasedTerm constexpr inline
		ErasedFalse
	{	Logic::BitClause::Identity()
	};

	template
		<	typename
				t_tLiteral
		>
	ErasedTerm constexpr inline
		ErasedLiteral
	{	Logic::BitClause{0uz}
	,	{	Type<t_tLiteral>
		}
	};

	template
		<	Logic::BitTerm
				t_vTerm
		,	typename
			...	t_tpLiteral
		>
	class
		Term final
	{
	public:
		static ErasedTerm constexpr
			Erased
		{	t_vTerm
		,	{	Type<t_tpLiteral>
				...
			}
		};

		explicit(false) constexpr
		(	operator ErasedTerm const&
		)	()	const
			noexcept
		{	return Erased;	}

		static USize constexpr
			LiteralCount
		=	sizeof...(t_tpLiteral)
		;

		static USize constexpr
			ClauseCount
		=	t_vTerm.ClauseCount()
		;

		static auto constexpr
		(	operator ()
		)	(	auto
				&&
				...	i_rpArgument
			)
		->	bool
		{	return
			EvaluateTerm
			(	t_vTerm
			,	std::array
				{	t_tpLiteral{}
					(	std::forward<decltype(i_rpArgument)>
						(	i_rpArgument
						)
						...
					)
					...
				}
			);
		}
	};

	template
		<	Logic::BitTerm
				t_vTerm
		,	typename
			...	t_tpLiteral
		>
	(	Term
	)	(	Term<t_vTerm, t_tpLiteral...>
		)
	->	Term<t_vTerm, t_tpLiteral...>
	;
}

template
	<	::Meta::ErasedTerm
			t_vErased
	,	::Meta::USize
		...	t_npIndex
	>
auto constexpr
	MakeTerm
	(	::Meta::IndexToken<t_npIndex...>
	)
->	::Meta::Term
	<	t_vErased.BitTerm
	,	::Meta::RestoreTypeEntity
		<	t_vErased
		.	Literals
			[	t_npIndex
			]
		>
		...
	>
;

export namespace
	Meta
{
	template
		<	ErasedTerm
				t_vErasedTerm
		>
	using
		DeduceTerm
	=	decltype
		(	::MakeTerm
			<	t_vErasedTerm
			>(	Sequence<t_vErasedTerm.LiteralCount()>
			)
		)
	;

	DeduceTerm<ErasedTrue> extern
		True
	;

	DeduceTerm<ErasedFalse> extern
		False
	;

	template
		<	typename
				t_tLiteral
		>
	DeduceTerm
	<	ErasedLiteral
		<	t_tLiteral
		>
	>	inline
		Literal
	{};
}
