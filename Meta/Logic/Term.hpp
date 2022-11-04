export module Meta.Logic:Term;

export import :BitTerm;
export import :LiteralBase;

export import Meta.Arithmetic;
export import Meta.Token;

import Std;

using ::Meta::Arithmetic::CountUpperZeroBits;
using ::Meta::Arithmetic::CountLowerZeroBits;

namespace
	Meta
{
	template
		<	Logic::BitClause
				t_vLiteral
		,	typename
			...	t_tpLiteral
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	EvaluateLiteral
	)	(	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{
		if	constexpr(t_vLiteral.Positive)
		{
			auto constexpr nIndex = CountLowerZeroBits(t_vLiteral.Positive);

			using
				Literal
			=	decltype(auto(
					*SelectByIndex
					{	Sequence<nIndex>
					}(	static_cast<t_tpLiteral*>(nullptr)
						...
					)
				))
			;

			return
			Literal{}
			(	::std::forward<t_tpArgument>(i_rpArgument)
				...
			);
		}
		else
		{
			auto constexpr nIndex = CountLowerZeroBits(t_vLiteral.Negative);
			using
				Literal
			=	decltype(auto(
					*SelectByIndex
					{	Sequence<nIndex>
					}(	static_cast<t_tpLiteral*>(nullptr)
						...
					)
				))
			;
			return
			not
			Literal{}
			(	::std::forward<t_tpArgument>(i_rpArgument)
				...
			);
		}
	}

	template
		<	Logic::BitClause
				t_vClause
		,	typename
			...	t_tpLiteral
		,	USize
			...	t_npLiteralIndex
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	EvaluateClause
	)	(	IndexToken<t_npLiteralIndex...>
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{	return
		(	...
		and	EvaluateLiteral
			<	t_vClause[t_npLiteralIndex]
			,	t_tpLiteral
				...
			>
			(	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			)
		);
	}

	template
		<	Logic::BitTerm
				t_vTerm
		,	typename
			...	t_tpLiteral
		,	USize
			...	t_npClauseIndex
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	EvaluateTerm
	)	(	IndexToken<t_npClauseIndex...>
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	->	bool
	{	return
		(	...
		or	EvaluateClause
			<	t_vTerm[t_npClauseIndex]
			,	t_tpLiteral
				...
			>
			(	Sequence
				<	t_vTerm[t_npClauseIndex]
				.	LiteralCount()
				>
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			)
		);
	}

	template
		<	typename
				t_tResult
		>
	using
		BinaryTermFunction
	=	auto
		(*)	(	Logic::BitTerm const&
			,	Logic::BitTerm const&
			)
		->	t_tResult
	;

	BinaryTermFunction<Logic::BitTerm> constexpr inline
		ComputeDisjunction
	=	&Logic::Intersection
	;
	BinaryTermFunction<Logic::BitTerm> constexpr inline
		ComputeConjunction
	=	&Logic::Union
	;
	BinaryTermFunction<bool> constexpr inline
		ComputeEquivalence
	=	&Logic::operator==
	;
}

export namespace
	Meta
{
	struct
		ErasedTerm final
	{
		using UnionBufferType = ::std::array<EraseTypeToken, Logic::LiteralLimit * 2uz>;
		using LiteralBufferType = ::std::array<EraseTypeToken, Logic::LiteralLimit>;

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
			,	EraseTypeToken const
				*	i_aUnion
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
				throw "Exceeded maximum amount of predicates per term!";

			LiteralBufferType
				vLiterals
			{};
			for	(	auto nIndex = 0uz
				;	nIndex < nRequiredItemCount
				;	++nIndex
				)
			{
				(	vLiterals[nIndex]
				=	i_aUnion
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
			,	UnionBufferType const&
			)
		->	bool
		{	return i_bEquivalence;	}

		static auto constexpr
		(	ProcessComputation
		)	(	Logic::BitTerm const
				&	i_rResult
			,	UnionBufferType const
				&	i_rUnion
			)
		->	ErasedTerm
		{	return TrimLiterals(i_rResult, i_rUnion.begin());	}

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
			,	BinaryTermFunction<t_tResult>
					i_fCompute
			)
		{
			UnionBufferType
				vUnion
			;
			auto const
				vMiddle
			=	::std::copy
				(	begin(i_rLeft)
				,	end(i_rLeft)
				,	vUnion.begin()
				)
			;
			auto const
				vUnionEnd
			=	::std::copy_if
				(	begin(i_rRight)
				,	end(i_rRight)
				,	vMiddle
				,	[	vLeftBegin = begin(i_rLeft)
					,	vLeftEnd = end(i_rLeft)
					]	(	EraseTypeToken
								i_vType
						)
					{	return
							std::find(vLeftBegin, vLeftEnd, i_vType)
						==	vLeftEnd
						;
					}
				)
			;

			::std::array<USize, Logic::LiteralLimit>
				vPermutationArray
			;
			auto const
				vPermutationEnd
			=	::std::transform
				(	begin(i_rRight)
				,	end(i_rRight)
				,	vPermutationArray.begin()
				,	[	vUnionBegin = vUnion.begin()
					,	vUnionEnd
					]	(	EraseTypeToken
								i_vType
						)
					{
						return
						static_cast<USize>
						(	::std::find
							(	vUnionBegin
							,	vUnionEnd
							,	i_vType
							)
						-	vUnionBegin
						);
					}
				)
			;
			return
			ProcessComputation
			(	i_fCompute
				(	i_rLeft
				.	BitTerm
				,	i_rRight
				.	BitTerm
				.	Permutation
					(	{	vPermutationArray.begin()
						,	vPermutationEnd
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
			,	Literals.begin()
			);
		}
	};

	auto constexpr
	(	operator not
	)	(	ErasedTerm const
			&	i_rTerm
		)
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
	->	ErasedTerm
	{	return
		ErasedTerm::ComputeErasedTerm
		(	i_rLeft
		,	i_rRight
		,	ComputeConjunction
		);
	}

	auto constexpr
	(	operator or
	)	(	ErasedTerm const
			&	i_rLeft
		,	ErasedTerm const
			&	i_rRight
		)
	->	ErasedTerm
	{	return
		ErasedTerm::ComputeErasedTerm
		(	i_rLeft
		,	i_rRight
		,	ComputeDisjunction
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
		,	ComputeEquivalence
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
		{	return Erased;	}

		static USize constexpr
			LiteralCount
		=	sizeof...(t_tpLiteral)
		;

		static USize constexpr
			ClauseCount
		=	t_vTerm.ClauseCount()
		;

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator ()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	const
		->	bool
		{	return
			EvaluateTerm
			<	t_vTerm
			,	t_tpLiteral
				...
			>(	Sequence
				<	ClauseCount
				>
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
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
