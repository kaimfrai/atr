export module ATR.Virtual.InstructionBuffer;

import ATR.Address;
import ATR.Erase;
import ATR.Layout.Create;
import ATR.Layout.Offset;
import ATR.Member.Composition;
import ATR.Member.Constant;

import Meta.ID;
import Meta.Memory.Size;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import std;

using ::ATR::Layout::Offset;
using ::ATR::Member::ConstantValue;
using ::ATR::Member::Union;

using ::Meta::BitSize;
using ::Meta::ProtoID;
using ::Meta::RestoreTypeEntity;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;

export namespace
	ATR::Virtual
{
	auto constexpr inline
		InstructionBufferSize
	=	16uz
	;

	enum class
		EInstruction
	:	unsigned char
	{	Noop
	,	Return
	,	LoadMember
	,	LoadConstant
	,	Store
	,	Add
	,	Subtract
	,	Multiply
	,	Divide
	,	Modulo
	,	LogicalNot
	,	LogicalAnd
	,	LogicalOr
	,	BitNot
	,	BitAnd
	,	BitOr
	,	BitXor
	};

	struct
		Operand
	{
		::std::ptrdiff_t
			ID
		=	-1
		;
		TypeID
			Offset
		{};
	};

	template
		<	::std::size_t
				t_vParallelCount
		>
	struct
		Instruction
	{
		EInstruction
			Type
		;
		TypeID
			Result
		;
		Operand
			FirstOperand
			[	t_vParallelCount
			]
		;
		Operand
			SecondOperand
			[	t_vParallelCount
			]
		;

		auto constexpr inline
		(	SetOperands
		)	(	::std::ptrdiff_t
					i_vParallelIndex
			,	Operand
					i_vFirst
			,	Operand
					i_vSecond
			)
			noexcept
		->	void
		{	(	FirstOperand
				[	i_vParallelIndex
				]
			=	i_vFirst
			);
			(	SecondOperand
				[	i_vParallelIndex
				]
			=	i_vSecond
			);
		}
	};

	template
		<	::std::size_t
				t_vParallelCount
		>
	struct
		InstructionBuffer
	{
		auto static constexpr inline
			ParallelIndices
		=	::std::make_index_sequence
			<	t_vParallelCount
			>{}
		;

		Instruction<t_vParallelCount>
			Instructions
			[	InstructionBufferSize
			]
		{};
		::std::ptrdiff_t
			InstructionCount
		{};
		::std::ptrdiff_t
			ArgumentCount
		{};

		[[nodiscard]]
		auto constexpr inline
		(	InsertGeneric
		)	(	::std::ptrdiff_t
					i_vSearchStart
			,	auto
					i_fMatchInstruction
			,	auto
					i_fMatched
			,	auto
					i_fNewInstruction
			,	Operand
					i_vLastOperand
			,	::std::ptrdiff_t
					i_vParallelIndex
			)
			noexcept
		->	Operand
		{
			//	Merge same instructions if possible
			for	(	auto
						vInstructionIndex
					=	i_vSearchStart
				;		vInstructionIndex
					<	InstructionCount
				;	++	vInstructionIndex
				)
			{
				auto
				&	rInstruction
				=	Instructions
					[	vInstructionIndex
					]
				;

				if	(	i_fMatchInstruction
						(	rInstruction
						)
					)
				{
					i_fMatched
					(	rInstruction
					);

					return
					Operand
					{	.	ID
						=	vInstructionIndex
						+	ArgumentCount
					};
				}
			}

			//	Insert instruction after last
			auto const
				vInsertIndex
			=	i_vLastOperand
				.	ID
			-	ArgumentCount
			+	1
			;

			//	Move backward
			for	(	auto
						vInstructionIndex
					=	InstructionCount
				;		vInstructionIndex
					>	vInsertIndex
				;	--	vInstructionIndex
				)
			{
				auto
				&	rNextInstruction
				=	Instructions
					[	vInstructionIndex
					]
				;
				auto const
				&	rPreviousInstruction
				=	Instructions
					[	vInstructionIndex
					-	1
					]
				;

				(	rNextInstruction
					.	Type
				=	rPreviousInstruction
					.	Type
				);
				(	rNextInstruction
					.	Result
				=	rPreviousInstruction
					.	Result
				);

				//	Increment references to previous results
				for	(	auto
							vParallelIndex
						=	0z
					;		vParallelIndex
						<	i_vParallelIndex
					;	++	vParallelIndex
					)
				{
					auto
					&	rNextFirstOperand
					=	rNextInstruction
						.	FirstOperand
							[	vParallelIndex
							]
					;
					(	rNextFirstOperand
					=	rPreviousInstruction
						.	FirstOperand
							[	vParallelIndex
							]
					);

					(	rNextFirstOperand
						.	ID
					+=	(	rNextFirstOperand
							.	ID
						>	i_vLastOperand
							.	ID
						)
					);

					auto
					&	rNextSecondOperand
					=	rNextInstruction
						.	SecondOperand
							[	vParallelIndex
							]
					;
					(	rNextSecondOperand
					=	rPreviousInstruction
						.	SecondOperand
							[	vParallelIndex
							]
					);

					(	rNextSecondOperand
						.	ID
					+=	(	rNextSecondOperand
							.	ID
						>	i_vLastOperand
							.	ID
						)
					);
				}
			}

			++	InstructionCount
			;
			auto
			&	rInstruction
			=	Instructions
				[	vInsertIndex
				]
			;

			//	Reset operands
			for	(	auto
						vParallelIndex
					=	0z
				;		vParallelIndex
					<	i_vParallelIndex
				;	++	vParallelIndex
				)
			{	rInstruction
				.	SetOperands
					(	vParallelIndex
					,	Operand
						{}
					,	Operand
						{}
					)
				;
			}

			i_fNewInstruction
			(	rInstruction
			);

			return
			Operand
			{	.	ID
				=	i_vLastOperand
					.	ID
				+	1z
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	Insert
		)	(	EInstruction
					i_vInstruction
			,	TypeID
					i_vResult
			,	Operand
					i_vFirst
			,	Operand
					i_vSecond
			,	Operand
					i_vLastOperand
			,	::std::ptrdiff_t
					i_vParallelIndex
			)
			noexcept
		->	Operand
		{
			auto const
				vSearchStart
			=	i_vLastOperand
				.	ID
			-	ArgumentCount
			+	1
			;

			return
			InsertGeneric
			(	vSearchStart
			,	[&]	(	Instruction<t_vParallelCount> const
						&	rInstruction
					)
				{	return
						(	rInstruction
							.	Type
						==	i_vInstruction
						)
					and	(	rInstruction
							.	Result
						==	i_vResult
						)
					;
				}
			,	[&]	(	Instruction<t_vParallelCount>
						&	rInstruction
					)
				{
					rInstruction
					.	SetOperands
						(	i_vParallelIndex
						,	i_vFirst
						,	i_vSecond
						)
					;
				}
			,	[&]	(	Instruction<t_vParallelCount>
						&	rInstruction
					)
				{
					rInstruction
					.	Type
					=	i_vInstruction
					;
					rInstruction
					.	Result
					=	i_vResult
					;
					rInstruction
					.	SetOperands
						(	i_vParallelIndex
						,	i_vFirst
						,	i_vSecond
						)
					;
				}
			,	i_vLastOperand
			,	i_vParallelIndex
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	LoadMember
		)	(	EInstruction
					i_vLoadType
			,	TypeID
					i_vResult
			,	Operand
					i_vBase
			,	TypeID
					i_vBaseOffset
			,	Operand
					i_vLastOperand
			,	::std::ptrdiff_t
					i_vParallelIndex
			)
			noexcept
		->	Operand
		{
			[[assume(i_vLoadType == EInstruction::LoadMember || i_vLoadType == EInstruction::LoadConstant)]];
			auto const
				vSearchStart
			=	::std::max
				(	i_vBase
					.	ID
				-	ArgumentCount
				+	1z
				,	0z
				)
			;

			return
			InsertGeneric
			(	vSearchStart
			,	[&]	(	Instruction<t_vParallelCount> const
						&	rInstruction
					)
				{	if	(		rInstruction
								.	Type
							!=	i_vLoadType
						or		rInstruction
								.	Result
							!=	i_vResult
						)
					{	return
							false
						;
					}

					for	(	auto
								vParallelIndex
							=	i_vParallelIndex
						;		vParallelIndex
							>=	0z
						;	--	vParallelIndex
						)
					{
						if	(		rInstruction
									.	FirstOperand
										[	vParallelIndex
										]
									.	ID
								==	i_vBase
									.	ID
							and	(	//	Constants may have different offsets
									(	i_vLoadType
									==	EInstruction
										::	LoadConstant
									)
								or	(	rInstruction
										.	SecondOperand
											[	vParallelIndex
											]
										.	Offset
									==	i_vBaseOffset
									)
								)
							)
						{	return
								true
							;
						}
					}
					return
						false
					;
				}
			,	[&]	(	Instruction<t_vParallelCount>
						&	rInstruction
					)
				{	rInstruction
					.	SetOperands
						(	i_vParallelIndex
						,	i_vBase
						,	Operand
							{	.	Offset
								=	i_vBaseOffset
							}
						)
					;
				}
			,	[&]	(	Instruction<t_vParallelCount>
						&	rInstruction
					)
				{
					rInstruction
					.	Type
					=	i_vLoadType
					;
					rInstruction
					.	Result
					=	i_vResult
					;
					rInstruction
					.	SetOperands
						(	i_vParallelIndex
						,	i_vBase
						,	Operand
							{	.	Offset
								=	i_vBaseOffset
							}
						)
					;
				}
			,	i_vLastOperand
			,	i_vParallelIndex
			);
		}
	};

	template
		<	::std::size_t
				t_vParallelCount
		>
	class
		InstructionView
	{
		InstructionBuffer<t_vParallelCount>
		*	m_aBuffer
		;
		Operand
			m_vLastOperand
		{};
		::std::ptrdiff_t
			m_vParallelIndex
		;
	public:
		explicit(true) constexpr inline
		(	InstructionView
		)	(	InstructionBuffer<t_vParallelCount>
				&	i_rBuffer
			,	::std::ptrdiff_t
					i_vParallelIndex
			)
			noexcept
		:	m_aBuffer
			{	&	i_rBuffer
			}
		,	m_vLastOperand
			{}
		,	m_vParallelIndex
			{	i_vParallelIndex
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	UpdateLastOperand
		)	(	Operand
					i_vNewOperand
			)
			noexcept
		->	Operand
		{
			if	(	i_vNewOperand
					.	ID
				>	m_vLastOperand
					.	ID
				)
			{	(	m_vLastOperand
				=	i_vNewOperand
				);
			}
			return
				i_vNewOperand
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	AddArgument
		)	()
			noexcept
		->	Operand
		{
			++	m_vLastOperand
				.	ID
			;
			return
				m_vLastOperand
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	LoadMember
		)	(	EInstruction
					i_vLoadType
			,	TypeID
					i_vResult
			,	Operand
					i_vBase
			,	TypeID
					i_vBaseOffset
			)
			noexcept
		->	Operand
		{
			auto const
				vLoadedOperand
			=	m_aBuffer
			->	LoadMember
				(	i_vLoadType
				,	i_vResult
				,	i_vBase
				,	i_vBaseOffset
				,	m_vLastOperand
				,	m_vParallelIndex
				)
			;
			return
			UpdateLastOperand
			(	vLoadedOperand
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	Return
		)	(	TypeID
					i_vResult
			,	Operand
					i_vFirst
			)
			noexcept
		->	Operand
		{	return
			UpdateLastOperand
			(	m_aBuffer
			->	Insert
				(	EInstruction
					::	Return
				,	i_vResult
				,	i_vFirst
				,	{}
				,	m_vLastOperand
				,	m_vParallelIndex
				)
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	Insert
		)	(	EInstruction
					i_vInstruction
			,	TypeID
					i_vResult
			,	Operand
					i_vFirst
			,	Operand
					i_vSecond
				=	{}
			)
			noexcept
		->	Operand
		{	return
			UpdateLastOperand
			(	m_aBuffer
			->	Insert
				(	i_vInstruction
				,	i_vResult
				,	i_vFirst
				,	i_vSecond
				,	m_vLastOperand
				,	m_vParallelIndex
				)
			);
		}
	};

	template
		<	::std::size_t
				t_vParallelCount
		>
	(	InstructionView
	)	(	InstructionBuffer<t_vParallelCount>
			&
		,	Operand
		,	::std::ptrdiff_t
		)
	->	InstructionView
		<	t_vParallelCount
		>
	;

	template
		<	typename
				t_tVariable
		,	::std::size_t
				t_vParallelCount
		>
	class
		ParallelVariable
	{
		Operand
			m_vOperand
		;
		InstructionView<t_vParallelCount>
		*	m_aInstructionView
		;
	public:
		explicit(true) constexpr inline
		(	ParallelVariable
		)	(	Operand
					i_vOperand
			,	InstructionView<t_vParallelCount>
				&	i_rInstructionView
			)
			noexcept
		:	m_vOperand
			{	i_vOperand
			}
		,	m_aInstructionView
			{	&	i_rInstructionView
			}
		{}

		explicit(true) constexpr inline
		(	ParallelVariable
		)	(	InstructionView<t_vParallelCount>
				&	i_rInstructionView
			)
			noexcept
		:	m_vOperand
			{	i_rInstructionView
				.	AddArgument
					()
			}
		,	m_aInstructionView
			{	&	i_rInstructionView
			}
		{}

		template
			<	typename
					t_tData
			,	BitSize
					t_vOffset
			,	typename
				...	t_tpIndirectOffsets
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	Offset<t_tData, t_vOffset, t_tpIndirectOffsets...>
					i_vOffset
			)	const
			noexcept
		->	decltype(auto)
		{
			using
				tData
			=	typename
					decltype(i_vOffset)
				::
				DataType
			;

			return
			ParallelVariable<tData, t_vParallelCount>
			{	m_aInstructionView
				->	LoadMember
					(	EInstruction
						::	LoadMember
					,	Type<tData>
					,	m_vOperand
					,	Type<decltype(i_vOffset)>
					)
			,	*	m_aInstructionView
			};
		}

		template
			<	auto
					t_vData
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	Offset<ConstantValue<t_vData>, {}>
			)	const
			noexcept
		->	decltype(auto)
		{	return
			ParallelVariable<decltype(t_vData), t_vParallelCount>
			{	m_aInstructionView
				->	LoadMember
					(	EInstruction
						::	LoadConstant
					,	Type<decltype(t_vData)>
					,	m_vOperand
					,	Type<ConstantValue<t_vData>>
					)
			,	*	m_aInstructionView
			};
		}

		auto constexpr inline
		(	Return
		)	()	const
			noexcept
		->	decltype(auto)
		{	return
			m_aInstructionView
			->	Return
				(	Type<t_tVariable>
				,	m_vOperand
				)
			;
		}

		template
			<	typename
					t_tOtherVariable
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator*
		)	(	ParallelVariable const
				&	i_rLeft
			,	ParallelVariable<t_tOtherVariable, t_vParallelCount> const
				&	i_rRight
			)
			noexcept
		->	decltype(auto)
		{	using
				tResult
			=	decltype
				(	::std::declval<t_tVariable>
					()
				*	::std::declval<t_tOtherVariable>
					()
				)
			;

			return
			ParallelVariable
			<	tResult
			,	t_vParallelCount
			>{	i_rLeft
				.	m_aInstructionView
				->	Insert
					(	EInstruction
						::	Multiply
					,	Type<tResult>
					,	i_rLeft
						.	m_vOperand
					,	i_rRight
						.	m_vOperand
					)
			,	*	i_rLeft
					.	m_aInstructionView
			};
		}
	};

	[[nodiscard]]
	auto constexpr inline
	(	UnionMemberIndexPack
	)	(	ProtoID auto
		)
		noexcept
	->	::std::make_index_sequence
		<	1uz
		>
	{	return
		{};
	}

	template
		<	ProtoID
			...	t_tpUnionMember
		>
	[[nodiscard]]
	auto constexpr inline
	(	UnionMemberIndexPack
	)	(	Union
			<	t_tpUnionMember
				...
			>
		)
		noexcept
	->	::std::make_index_sequence
		<	sizeof...(t_tpUnionMember)
		>
	{	return
		{};
	}

	template
		<	typename
				t_tUnion
		,	auto
				t_vUnionIndex
		>
	struct
		UnionMemberProxy
	{
		template
			<	ImplicitHash
					t_vMemberName
			>
		bool static constexpr inline
			HasMember
		=	t_tUnion
			::	Composition
			.	FindMemberInfo
				(	t_vMemberName
				,	t_vUnionIndex
				)
			.	IsValid
				()
		;

		template
			<	ImplicitHash
					t_vMemberName
			,	auto
					t_vInfo
				=	t_tUnion
					::	Composition
					.	FindMemberInfo
						(	t_vMemberName
						,	t_vUnionIndex
						)
			>
		requires
			(	t_vInfo
				.	IsValid
					()
			)
		auto static constexpr inline
			Offset_Of
		=	Layout::Offset_For
			<	t_tUnion
				::	Composition
			,	RestoreTypeEntity
				<	t_vInfo
					.	Type
				>
			,	t_vInfo
				.	Offset
			,	t_vInfo
				.	DistrictIndex
			,	t_vInfo
				.	Initializer
			>
		;
	};

	template
		<	typename
				t_tUnion
		,	auto
				t_vUnionIndex
		>
	auto
	(	ForwardErased
	)	(	UnionMemberProxy<t_tUnion, t_vUnionIndex> const
			&
		)
		noexcept
	->	ParallelVariable
		<	ErasedType<t_tUnion const&>
		,	UnionMemberIndexPack
			(	t_tUnion
				::	TypeName
			)
			.	size
				()
		>
	;

	template
		<	typename
				t_tUnion
		,	auto
				t_vUnionIndex
		>
	auto
	(	ForwardErased
	)	(	UnionMemberProxy<t_tUnion, t_vUnionIndex>
			&
		)
		noexcept
	->	ParallelVariable
		<	ErasedType<t_tUnion&>
		,	UnionMemberIndexPack
			(	t_tUnion
				::	TypeName
			)
			.	size
				()
		>
	;

	template
		<	typename
				t_tUnion
		,	auto
				t_vUnionIndex
		>
	auto
	(	ForwardErased
	)	(	UnionMemberProxy<t_tUnion, t_vUnionIndex>
			&&
		)
		noexcept
	->	ParallelVariable
		<	ErasedType<t_tUnion&&>
		,	UnionMemberIndexPack
			(	t_tUnion
				::	TypeName
			)
			.	size
				()
		>
	;

	template
		<	typename
				t_tFuncID
		,	typename
			...	t_tpDependency
		,	::std::size_t
				t_vParallelCount
		>
	auto constexpr inline
	(	FillInstructionBuffer
	)	(	Function
			<	t_tFuncID
			,	t_tpDependency
				...
			>
				i_fFunction
		,	InstructionView
			<	t_vParallelCount
			>
				i_rInstructionView
		)
		noexcept
	->	void
	{	auto
			vResult
		=	i_fFunction
			(	typename
					t_tpDependency
				::	ArgumentType
				{	i_rInstructionView
				}
				...
			)
		;

		vResult
		.	Return
			()
		;
	}

	template
		<	typename
				t_tUnion
		>
	struct
		MakeUnionMemberProxy
	{
		template
			<	auto
					t_vUnionIndex
			>
		using
			Type
		=	UnionMemberProxy
			<	t_tUnion
			,	t_vUnionIndex
			>
		;
	};

	template
		<	typename
				t_tUnion
		>
	struct
		MakeUnionMemberProxy
		<	t_tUnion const
			&
		>
	{
		template
			<	auto
					t_vUnionIndex
			>
		using
			Type
		=	UnionMemberProxy
			<	t_tUnion
			,	t_vUnionIndex
			>	const
			&
		;
	};

	template
		<	typename
				t_tUnion
		>
	struct
		MakeUnionMemberProxy
		<	t_tUnion
			&
		>
	{
		template
			<	auto
					t_vUnionIndex
			>
		using
			Type
		=	UnionMemberProxy
			<	t_tUnion
			,	t_vUnionIndex
			>
			&
		;
	};

	template
		<	typename
				t_tUnion
		>
	struct
		MakeUnionMemberProxy
		<	t_tUnion
			&&
		>
	{
		template
			<	auto
					t_vUnionIndex
			>
		using
			Type
		=	UnionMemberProxy
			<	t_tUnion
			,	t_vUnionIndex
			>
			&&
		;
	};

	template
		<	ProtoID
				t_tFuncID
		,	typename
				t_tUnion
		,	typename
			...	t_tpArgument
		,	::std::size_t
			...	t_tpUnionIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeInstructionBuffer
	)	(	::std::index_sequence
			<	t_tpUnionIndex
				...
			>
		)
		noexcept
	->	InstructionBuffer
		<	sizeof...(t_tpUnionIndex)
		>
	{
		InstructionBuffer<sizeof...(t_tpUnionIndex)>
			vInstructionBuffer
		{	.	ArgumentCount
			=	1z
			+	sizeof...(t_tpArgument)
		};

		(	...
		,	FillInstructionBuffer
			(	FunctionType
				<	t_tFuncID
				,	typename
						MakeUnionMemberProxy
						<	t_tUnion
						>
					::	template
						Type
						<	t_tpUnionIndex
						>
				,	t_tpArgument
					...
				>{}
			,	InstructionView
				{	vInstructionBuffer
				,	t_tpUnionIndex
				}
			)
		);

		return
			vInstructionBuffer
		;
	}

	template
		<	ProtoID
				t_tFuncID
		,	typename
				t_tUnion
		,	typename
			...	t_tpArgument
		>
	auto constexpr inline
		InstructionBuffer_Of
	=	MakeInstructionBuffer
		<	t_tFuncID
		,	t_tUnion
		,	t_tpArgument
			...
		>(	UnionMemberIndexPack
			(	t_tUnion{}
				.	TypeName
			)
		)
	;
}
