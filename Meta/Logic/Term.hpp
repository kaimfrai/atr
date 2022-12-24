export module Meta.Logic:Term;

export import :BitTerm;
export import :LiteralBase;

import Meta.Size;
import Meta.Buffer.Static;
export import Meta.Token;
import Meta.Functional;
import Meta.Bit.IndexView;
import Meta.Bit.Count;

import Std;

using ::Meta::Literals::operator""_bits;

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
			LiteralBufferType
				vLiterals
			{};

			for	(	auto
						nArrayIndex
					=	0uz
				;	auto
						vBitIndex
				:	Bit::IndexView
					{	i_rResult.LiteralField()
					}
				)
			{
				vLiterals[nArrayIndex] = i_vUnion[vBitIndex];
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
			Buffer::Static
			<	EraseTypeToken
			,	Logic::LiteralLimit
			>	vUnion
			;
			vUnion.AppendUnique(i_rLeft);
			vUnion.AppendUnique(i_rRight);

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
			Buffer::Static
			<	Bits
			,	Logic::LiteralLimit
			>	vPermutationArray
			;

				vPermutationArray
			.	AppendUnique
				(	*this
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
			if	(std::ranges::equal(i_rLeft, i_rRight))
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
						->	Bits
						{	return
							{	vUnion.FindIndexOf
								(	i_vType
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
				CountOnes
				(	BitTerm
				.	LiteralField()
				)
			.	get()
			;
		}

		auto constexpr
		(	ClauseCount
		)	()	const
		{	return
				BitTerm
			.	ClauseCount()
			;
		}

		friend auto constexpr
		(	begin
		)	(	ErasedTerm const
				&	i_rTerm
			)
		->	EraseTypeToken const*
		{	return
				i_rTerm
			.	Literals
			.	begin()
			;
		}

		friend auto constexpr
		(	end
		)	(	ErasedTerm const
				&	i_rTerm
			)
		->	EraseTypeToken const*
		{	return
				begin(i_rTerm)
			+	i_rTerm
			.	LiteralCount()
			;
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
	{	Logic::BitClause{0_bits}
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
