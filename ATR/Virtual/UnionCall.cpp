export module ATR.Virtual.UnionCall;

import ATR.Virtual.InstructionBuffer;

import Meta.Auto.Simd.ArrayCeil;
import Meta.Auto.Simd.Fill;
import Meta.Auto.Simd.Tag;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::RestoreTypeEntity;
using ::Meta::Simd;
using ::Meta::SimdFill;
using ::Meta::SimdMask;
using ::Meta::TypeID;

export namespace
	ATR::Virtual
{
	template
		<	typename
				t_tResult
		,	Operand
				t_vOperand
		>
	[[nodiscard]]
	auto constexpr inline
	(	LoadSingleConstant
	)	()
		noexcept
	->	decltype(auto)
	{
		if	constexpr
			(	t_vOperand
				.	Offset
			==	TypeID
				{}
			)
		{	return
			t_tResult
			{};
		}
		else
		{	return
			static_cast<t_tResult>
			(	RestoreTypeEntity
				<	t_vOperand
					.	Offset
				>
			::	Value
			);
		}
	}

	template
		<	typename
				t_tResult
		,	auto const
			&	t_rOperand
		,	::std::size_t
			...	t_vpParallelIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	LoadMultipleConstants
	)	(	::std::index_sequence
			<	t_vpParallelIndex
				...
			>
		,	auto
				i_vTypeIndex
		)
		noexcept
	->	decltype(auto)
	{	return
			::Meta::SimdArrayCeil
			(	LoadSingleConstant
				<	typename
						t_tResult
					::	ElementType
				,	t_rOperand
					[	t_vpParallelIndex
					]
				>()
				...
			)
			[	i_vTypeIndex
			]
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	SelectFirstVariableID
	)	(	Operand const
			*	i_aOperands
		)
		noexcept
	->	::std::ptrdiff_t
	{
		for	(
			;	i_aOperands
				->	ID
			<	0
			;	++	i_aOperands
			)
		{}
		return
			i_aOperands
			->	ID
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	SelectFirstOffset
	)	(	Operand const
			*	i_aOperands
		)
		noexcept
	->	TypeID
	{
		for	(
			;	i_aOperands
				->	Offset
			==	TypeID
				{}
			;	++	i_aOperands
			)
		{}
		return
			i_aOperands
			->	Offset
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	IndexToMaskFlag
	)	(	bool
				i_vEnable
		,	::std::int32_t
				i_vParallelIndex
		)
		noexcept
	->	::std::int32_t
	{	return
		(	static_cast<::std::int32_t>
			(	i_vEnable
			)
		<<	(	31
			-	i_vParallelIndex
			)
		);
	}

	template
		<	::std::size_t
				t_vCount
		>
	struct
		GenericSimdMask
	{
		Simd<::std::int32_t[t_vCount]>
			m_vMask
		;

		explicit(true) constexpr inline
		(	GenericSimdMask
		)	(	::std::int32_t
					i_vMask
			,	Simd<::std::int32_t[t_vCount]>
					i_vParallelIndex
			)
			noexcept
		:	m_vMask
			{	// *HIGHEST* bit must be set
				SimdFill<::std::int32_t[t_vCount]>
				(	i_vMask
				)
			<<	i_vParallelIndex
			}
		{}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			SimdMask<t_tElement[t_vCount]>
		)	()	const
			noexcept
		{	return
			::std::bit_cast<SimdMask<t_tElement[t_vCount]>>
			(	m_vMask
			);
		}
	};

	template
		<	::std::size_t
				t_vCount
		>
	(	GenericSimdMask
	)	(	::std::int32_t
		,	Simd<::std::int32_t[t_vCount]>
		)
	->	GenericSimdMask
		<	t_vCount
		>
	;

	template
		<	auto const
			&	t_rFirstOperand
		,	auto const
			&	t_rSecondOperand
		,	::std::size_t
			...	t_vpParallelIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	LoadMultipleMembers
	)	(	::std::index_sequence
			<	t_vpParallelIndex
				...
			>
		,	auto
				i_vParallelIndex
		,	auto
			&
			...	i_rpVariables
		)
		noexcept
	->	decltype(auto)
	{
		::std::int32_t static constexpr
			vMask
		{(	...
		bitor
			IndexToMaskFlag
			(	(	t_rSecondOperand
					[	t_vpParallelIndex
					]
					.	Offset
				!=	TypeID
					{}
				)
			,	static_cast<::std::int32_t>
				(	t_vpParallelIndex
				)
			)
		)};

		auto static constexpr
			vVariableID
		=	SelectFirstVariableID
			(	t_rFirstOperand
			)
		;

		auto static constexpr
			vOffset
		=	SelectFirstOffset
			(	t_rSecondOperand
			)
		;

		return
		Unmask
		(	(	i_rpVariables
			...	[	vVariableID
				]
			)[	GenericSimdMask
				(	vMask
				,	i_vParallelIndex
				)
			]
		->*	RestoreTypeEntity
			<	vOffset
			>{}
		);
	}

	struct
		CompactOperand
	{
		::std::ptrdiff_t
			VariableID
		{};
		::std::int32_t
			Mask
		{};
	};

	template
		<	::std::int32_t
				t_vParallelCount
		>
	struct
		CompactOperands
	{
		CompactOperand
			Operands
			[	t_vParallelCount
			]
		{};

		::std::int32_t
			Count
		{};

		auto constexpr inline
		(	Insert
		)	(	::std::int32_t
					i_vIndex
			,	::std::ptrdiff_t
					i_vVariableID
			)
			noexcept
		{
			auto const
				vMaskFlag
			=	IndexToMaskFlag
				(	true
				,	i_vIndex
				)
			;

			for	(	auto
						vTargetIndex
					=	0
				;		vTargetIndex
					<	Count
				;	++	vTargetIndex
				)
			{	auto
				&	[	rVariableID
					,	rMask
					]
				=	Operands
					[	vTargetIndex
					]
				;

				if	(	i_vVariableID
					==	rVariableID
					)
				{		rMask
					|=	vMaskFlag
					;
					return
					;
				}
			}

			auto
			&	[	rVariableID
				,	rMask
				]
			=	Operands
				[	Count
					++
				]
			;
			(	rVariableID
			=	i_vVariableID
			);
			(	rMask
			=	vMaskFlag
			);
		}

		explicit(true) constexpr inline
		(	CompactOperands
		)	(	Operand const
				(&	i_rOperands
				)	[	t_vParallelCount
					]
			)
			noexcept
		{
			for	(	auto
						vSourceIndex
					=	0
				;		vSourceIndex
					<	t_vParallelCount
				;	++	vSourceIndex
				)
			{
				Operand const
				&	rOperand
				=	i_rOperands
					[	vSourceIndex
					]
				;

				if	(	rOperand
						.	ID
					<	0
					)
				{	continue
					;
				}
				Insert
				(	vSourceIndex
				,	rOperand
					.	ID
				);
			}
		}
	};

	template
		<	::std::int32_t
				t_vParallelCount
		>
	(	CompactOperands
	)	(	Operand const
			(&)	[	t_vParallelCount
				]
		)
	->	CompactOperands
		<	t_vParallelCount
		>
	;


	[[nodiscard]]
	auto constexpr inline
	(	MaskByType
	)	(	auto const
			&	i_rBase
		,	::std::int32_t
				i_vMask
		,	auto
				i_vParallelIndex
		)
		noexcept
	->	decltype(auto)
	{	return
			i_rBase
			[	GenericSimdMask
				(	i_vMask
				,	i_vParallelIndex
				)
			]
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	BlendFold
	)	(	auto
				i_vFirst
		,	auto
			...	i_vpBlend
		)
		noexcept
	->	auto
	{	return
		(	i_vFirst
		=	...
		=	i_vpBlend
		);
	}

	template
		<	::std::size_t
			...	t_vpTypeIndex
		,	::std::size_t
			...	t_vpMask
		>
	[[nodiscard]]
	auto constexpr inline
	(	SelectByOperand
	)	(	::std::index_sequence
			<	t_vpTypeIndex
				...
			>
		,	::std::index_sequence
			<	t_vpMask
				...
			>
		,	auto
				i_vParallelIndex
		,	auto
				i_vFirstVariable
		,	auto
			&
			...	i_rpVariables
		)
		noexcept
	->	decltype(auto)
	{	return
		BlendFold
		(	i_vFirstVariable
		,	MaskByType
			(	(	i_rpVariables
				...	[	t_vpTypeIndex
					]
				)
			,	t_vpMask
			,	i_vParallelIndex
			)
			...
		);
	}

	template
		<	auto const
			&	t_rOperands
		>
	[[nodiscard]]
	auto constexpr inline
	(	BlendMultiple
	)	(	auto
		,	auto
				i_vParallelIndex
		,	auto
			&
			...	i_rpVariables
		)
		noexcept
	->	auto
	{
		CompactOperands static constexpr
			vCompactOperands
		{	t_rOperands
		};

		auto static constexpr
			vVariableIDs
		=	[]	<	::std::size_t
					...	t_vpIndex
				>(	::std::index_sequence
					<	0uz
					,	t_vpIndex
						...
					>
				)
			{	return
				::std::index_sequence
				<	vCompactOperands
					.	Operands
						[	t_vpIndex
						]
					.	VariableID
					...
				>{};
			}(	::std::make_index_sequence
				<	vCompactOperands
					.	Count
				>{}
			)
		;

		auto static constexpr
			vMasks
		=	[]	<	::std::size_t
					...	t_vpIndex
				>(	::std::index_sequence
					<	0uz
					,	t_vpIndex
						...
					>
				)
			{	return
				::std::index_sequence
				<	vCompactOperands
					.	Operands
						[	t_vpIndex
						]
					.	Mask
					...
				>{};
			}(	::std::make_index_sequence
				<	vCompactOperands
					.	Count
				>{}
			)
		;

		return
		SelectByOperand
		(	vVariableIDs
		,	vMasks
		,	i_vParallelIndex
		,	(	i_rpVariables
			...	[	vCompactOperands
					.	Operands
						[	0uz
						]
					.	VariableID
				]
			)
		,	i_rpVariables
			...
		);
	}

	template
		<	EInstruction
				t_vInstruction
		,	typename
				t_tResult
		,	auto const
			&	t_rFirstOperand
		,	auto const
			&	t_rSecondOperand
		>
	struct
		Evaluator
	{
		static_assert
		(	false
		,	"Unexpected specialization!"
		);
	};

	template
		<	typename
				t_tResult
		,	auto const
			&	t_rFirstOperand
		,	auto const
			&	t_rSecondOperand
		>
	struct
		Evaluator
		<	EInstruction
			::	Multiply
		,	t_tResult
		,	t_rFirstOperand
		,	t_rSecondOperand
		>
	{
		t_tResult
			Value
		;

		explicit(true) constexpr inline
		(	Evaluator
		)	(	auto
				&
				...	i_rpVariables
			)
			noexcept
		:	Value
			{	BlendMultiple
				<	t_rFirstOperand
				>(	i_rpVariables
					...
				)
			*	BlendMultiple
				<	t_rSecondOperand
				>(	i_rpVariables
					...
				)
			}
		{}
	};

	template
		<	typename
				t_tResult
		,	auto const
			&	t_rFirstOperand
		,	auto const
			&	t_rSecondOperand
		>
	struct
		Evaluator
		<	EInstruction
			::	LoadConstant
		,	t_tResult
		,	t_rFirstOperand
		,	t_rSecondOperand
		>
	{
		t_tResult
			Value
		;

		explicit(true) constexpr inline
		(	Evaluator
		)	(	auto
					i_vParallelIndices
			,	auto
					i_vTypeIndices
			,	auto
				&
				...
			)
			noexcept
		:	Value
			{	LoadMultipleConstants
				<	t_tResult
				,	t_rSecondOperand
				>(	i_vParallelIndices
				,	i_vTypeIndices
				)
			}
		{}
	};

	template
		<	typename
				t_tResult
		,	auto const
			&	t_rFirstOperand
		,	auto const
			&	t_rSecondOperand
		>
	struct
		Evaluator
		<	EInstruction
			::	LoadMember
		,	t_tResult
		,	t_rFirstOperand
		,	t_rSecondOperand
		>
	{
		t_tResult
			Value
		;

		explicit(true) constexpr inline
		(	Evaluator
		)	(	auto
				&
				...	i_rpVariables
			)
			noexcept
		:	Value
			{	LoadMultipleMembers
				<	t_rFirstOperand
				,	t_rSecondOperand
				>(	i_rpVariables
					...
				)
			}
		{}
	};

	template
		<	typename
				t_tResult
		,	auto const
			&	t_rFirstOperand
		,	auto const
			&	t_rSecondOperand
		>
	struct
		Evaluator
		<	EInstruction
			::	Return
		,	t_tResult
		,	t_rFirstOperand
		,	t_rSecondOperand
		>
	{
		t_tResult
			Value
		;

		explicit(true) constexpr inline
		(	Evaluator
		)	(	auto
				&
				...	i_rpVariables
			)
			noexcept
		:	Value
			{	BlendMultiple
				<	t_rFirstOperand
				>(	i_rpVariables
					...
				)
			}
		{}

		[[nodiscard]]
		auto friend constexpr inline
		(	Return
		)	(	Evaluator
				&&	i_rEvaluator
			)
			noexcept
		->	t_tResult
		{	return
				i_rEvaluator
				.	Value
			;
		}
	};

	template
		<	typename
			...	t_tpEvaluator
		>
	struct
		EvaluatorGroup
	:	t_tpEvaluator
		...
	{
		template
			<	typename
				...	t_tpArgument
			>
		explicit(true) constexpr inline
		(	EvaluatorGroup
		)	(	t_tpArgument
				&
				...	i_rpArgument
			)
			noexcept
		:	t_tpEvaluator
			{	i_rpArgument
				...
			,		static_cast<t_tpEvaluator*>
					(	this
					)
				->	Value
				...
			}
			...
		{}
	};
}
