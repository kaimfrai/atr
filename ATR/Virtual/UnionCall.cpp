export module ATR.Virtual.UnionCall;

import ATR.Layout.Offset;
import ATR.Virtual.InstructionBuffer;

import Meta.Auto.Simd.ArrayCeil;
import Meta.Auto.Simd.Fill;
import Meta.Auto.Simd.Int32;
import Meta.Auto.Simd.Tag;
import Meta.ID;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::ATR::Layout::Offset;
using ::Meta::BitSize;
using ::Meta::MaskedSimd;
using ::Meta::ProtoID;
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
				<	t_tResult
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
		<	typename
				t_tElement
		,	::std::size_t
				t_vCount
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeSimdMask
	)	(	::std::int32_t
				i_vMask
		,	Simd<::std::int32_t[t_vCount]>
				i_vParallelIndex
		)
		noexcept
	->	SimdMask<t_tElement[t_vCount]>
	{	return
		// *HIGHEST* bit must be set
		::std::bit_cast<SimdMask<t_tElement[t_vCount]>>
		(	SimdFill<::std::int32_t[t_vCount]>
			(	i_vMask
			)
		<<	i_vParallelIndex
		);
	}

	template
		<	typename
				t_tElement
		,	auto const
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

		auto const
			vSimdMask
		=	MakeSimdMask<t_tElement>
			(	vMask
			,	i_vParallelIndex
			)
		;

		return
		(	i_rpVariables
		...	[	vVariableID
			]
		)[	vMask
		][	RestoreTypeEntity
			<	vOffset
			>{}
		];
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
		<	::std::size_t
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

		::std::size_t
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
		<	auto const
			&	t_rOperands
		,	::std::size_t
			...	t_vpParallelIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	BlendMultiple
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
		CompactOperands static constexpr
			vCompactOperands
		{	t_rOperands
		};

		return
		[&]	<	::std::size_t
				...	t_vpIndex
			>(	::std::index_sequence
				<	0uz
				,	t_vpIndex
					...
				>
			)
		{	return
			(	(	i_rpVariables
				...	[	vCompactOperands
						.	Operands
							[	0uz
							]
						.	VariableID
					]
				)
			=	...
			=	(	i_rpVariables
				...	[	vCompactOperands
						.	Operands
							[	t_vpIndex
							]
						.	VariableID
					]
				)[	MakeSimdMask
					(	vCompactOperands
						.	Operands
							[	t_vpIndex
							]
						.	Mask
					,	i_vParallelIndex
					)
				]
			);
		}(	::std::make_index_sequence
			<	vCompactOperands
				.	Count
			>{}
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
				,	t_rFirstOperand
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
				<	t_tResult
				,	t_rFirstOperand
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
				<	t_tResult
				,	t_rFirstOperand
				>(	i_rpVariables
					...
				)
			}
		{}
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

	template
		<	typename
				t_tElement
		,	::std::size_t
				t_vCount
		>
	struct
		MaskedErasedContainer
	{
		::std::byte const
		*	m_aData
		;
		::std::uint32_t
			m_vCapacity
		;
		::std::uint32_t
			m_vIndex
		;
		SimdMask<t_tElement[t_vCount]>
			m_vMask
		;

		template
			<	BitSize
					t_vOffset
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	Offset<t_tElement, t_vOffset>
			)
			noexcept
		->	decltype(auto)
		{
			auto const
				aDataStart
			=	::std::launder
				(	::std::bit_cast<t_tElement const*>
					(	m_aData
					+	m_vCapacity
					*	t_vOffset
					)
				)
			+	m_vIndex
			;
			return
			static_cast<MaskedSimd<t_tElement[t_vCount]>>
			(	MaskedSimd<t_tElement const(&)[t_vCount]>
				{	aDataStart
				,	m_vMask
					.	m_vRaw
				}
			);
		}
	};

	template
		<	::std::size_t
				t_vCount
		>
	struct
		ErasedContainer
	{
		::std::byte const
		*	m_aData
		;
		::std::uint32_t
			m_vCapacity
		;
		::std::uint32_t
			m_vIndex
		;

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SimdMask<t_tElement[t_vCount]>
					i_vMask
			)
			noexcept
		->	MaskedErasedContainer
			<	t_tElement
			,	t_vCount
			>
		{	return
			{	m_aData
			,	m_vCapacity
			,	m_vIndex
			,	i_vMask
			};
		}


		template
			<	typename
					t_tElement
			,	BitSize
					t_vOffset
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	Offset<t_tElement, t_vOffset>
			)
			noexcept
		->	decltype(auto)
		{
			auto const
				aDataStart
			=	::std::launder
				(	::std::bit_cast<t_tElement const*>
					(	m_aData
					+	m_vCapacity
					*	t_vOffset
					)
				)
			+	m_vIndex
			;
			return
			static_cast<Simd<t_tElement[t_vCount]>>
			(	Simd<t_tElement const(&)[t_vCount]>
				{	aDataStart
				}
			);
		}
	};


	[[nodiscard]]
	auto constexpr inline
	(	UnionCall
	)	(	ProtoID auto
				i_vFunction
		,	auto const
			&	i_rUnion
		,	auto
			...	i_vpArgument
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
		&	rInstructions
		=	InstructionBuffer_Of
			<	decltype(i_vFunction)
			,	decltype(i_rUnion)
			>
		;

		auto const
			vTypeIndices
		=	i_rUnion
			[	"_UnionTag"
			]
		;

		return
		[&]	<	::std::size_t
				...	t_vpIndex
			>(	::std::index_sequence
				<	t_vpIndex
					...
				>
			)
		{	return
			EvaluatorGroup
			<	Evaluator
				<	rInstructions
					.	Instructions
						[	t_vpIndex
						]
					.	Type
				,	RestoreTypeEntity
					<	rInstructions
						.	Instructions
							[	t_vpIndex
							]
						.	Result
					>
				,	rInstructions
					.	Instructions
						[	t_vpIndex
						]
					.	FirstOperand
				,	rInstructions
					.	Instructions
						[	t_vpIndex
						]
					.	SecondOperand
				>
				...
			>{	rInstructions
				.	ParallelIndices
			,	vTypeIndices
			,	i_rUnion
			,	i_vpArgument
				...
			};
		}(	::std::make_index_sequence
			<	rInstructions
				.	InstructionCount
			>{}
		);
	}
}
