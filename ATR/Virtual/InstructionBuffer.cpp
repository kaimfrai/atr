export module ATR.Virtual.InstructionBuffer;

import ATR.Address;
import ATR.Erase;
import ATR.Member.Composition;
import ATR.Member.Constant;

import Meta.ID;
import Meta.Memory.Size;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::ATR::Member::ConstantType;
using ::ATR::Member::Union;

using ::Meta::BitSize;
using ::Meta::ProtoID;
using ::Meta::RestoreTypeEntity;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;
using ::Meta::TypeToken;

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
		Variable
	{
		short
			ID
		;
		TypeID
			Type
		;
		BitSize
			Offset
		{};
		short
			District
		{};
		void const
		*	Initializer
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
		Variable
			FirstVariable
			[	t_vParallelCount
			]
		;
		Variable
			SecondVariable
			[	t_vParallelCount
			]
		;
		TypeID
			ReturnType
		;
	};

	template
		<	::std::size_t
				t_vParallelCount
		>
	struct
		InstructionBuffer
	{
		Instruction<t_vParallelCount>
			Instructions
			[	InstructionBufferSize
			]
		{};
		::std::ptrdiff_t
			InstructionCount
		{};

		[[nodiscard]]
		auto constexpr inline
		(	FindMatchingInstructionIndex
		)	(	::std::ptrdiff_t
					i_vInstructionIndex
			,	auto
					i_fMatchInstruction
			)	const
			noexcept
		->	::std::ptrdiff_t
		{
			for	(
				;		i_vInstructionIndex
					<	InstructionCount
				;	++	i_vInstructionIndex
				)
			{
				if	(	i_fMatchInstruction
						(	Instructions
							[	i_vInstructionIndex
							]
						)
					)
				{	return
						i_vInstructionIndex
					;
				}
			}
			return
			-	1
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	EmplaceUninitialized
		)	(	::std::ptrdiff_t
					i_vInstructionIndex
			)
			noexcept
		->	Instruction<t_vParallelCount>&
		{
			::std::move_backward
			(		Instructions
				+	i_vInstructionIndex
			,		Instructions
				+	InstructionCount
			,		Instructions
				+	InstructionCount
				+	1
			);
			++	InstructionCount
			;
			return
				Instructions
				[	i_vInstructionIndex
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	Insert
		)	(	TypeID
					i_vReturnType
			,	EInstruction
					i_vInstruction
			,	Variable const
				&	i_rFirst
			,	Variable const
				&	i_rSecond
			,	::std::ptrdiff_t
					i_vInstructionIndex
			,	::std::ptrdiff_t
					i_vParallelIndex
			)
			noexcept
		->	::std::ptrdiff_t
		{
			auto const
				vInsertionIndex
			=	FindMatchingInstructionIndex
				(	i_vInstructionIndex
				,	[&]	(	Instruction<t_vParallelCount> const
							&	rParallelInstruction
						)
					{	return
							(	rParallelInstruction
								.	Type
							==	i_vInstruction
							)
						and	(	rParallelInstruction
								.	ReturnType
							==	i_vReturnType
							)
						;
					}
				)
			;

			if	(	vInsertionIndex
				<	i_vInstructionIndex
				)
			{
				auto
				&	rInstruction
				=	EmplaceUninitialized
					(	i_vInstructionIndex
					)
				;
				(	rInstruction
					.	Type
				=	i_vInstruction
				);

				for	(	auto
							vParallelIndex
						=	0z
					;		vParallelIndex
						<	i_vParallelIndex
					;	++	vParallelIndex
					)
				{
					(	rInstruction
						.	FirstVariable
						[	vParallelIndex
						]
					=	Variable
						{}
					);
					(	rInstruction
						.	SecondVariable
						[	vParallelIndex
						]
					=	Variable
						{}
					);
				}
				(	rInstruction
					.	FirstVariable
					[	i_vParallelIndex
					]
				=	i_rFirst
				);
				(	rInstruction
					.	SecondVariable
					[	i_vParallelIndex
					]
				=	i_rSecond
				);

				(	rInstruction
					.	ReturnType
				=	i_vReturnType
				);

				return
					i_vInstructionIndex
				+	1
				;
			}
			else
			{
				auto
				&	rInstruction
				=	Instructions
					[	vInsertionIndex
					]
				;
				(	rInstruction
					.	FirstVariable
					[	i_vParallelIndex
					]
				=	i_rFirst
				);
				(	rInstruction
					.	SecondVariable
					[	i_vParallelIndex
					]
				=	i_rSecond
				);

				return
					vInsertionIndex
				+	1
				;
			}
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
		::std::ptrdiff_t
			m_vInstructionIndex
		{};
		::std::ptrdiff_t
			m_vParallelIndex
		;
		short
			m_vVariableID
		{};
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
		,	m_vParallelIndex
			{	i_vParallelIndex
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	NewVariableID
		)	()
			noexcept
		->	short
		{	return
				m_vVariableID
				++
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	Return
		)	(	Variable const
				&	i_rFirst
			)
			noexcept
		{
			(	m_vInstructionIndex
			=	m_aBuffer
				->	Insert
					(	i_rFirst
						.	Type
					,	EInstruction
						::	Return
					,	i_rFirst
					,	{}
					,	m_vInstructionIndex
					,	m_vParallelIndex
					)
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	Insert
		)	(	TypeID
					i_vReturnType
			,	EInstruction
					i_vInstruction
			,	Variable const
				&	i_rFirst
			,	Variable const
				&	i_rSecond
				=	{}
			)
			noexcept
		->	Variable
		{
			(	m_vInstructionIndex
			=	m_aBuffer
				->	Insert
					(	i_vReturnType
					,	i_vInstruction
					,	i_rFirst
					,	i_rSecond
					,	m_vInstructionIndex
					,	m_vParallelIndex
					)
			);

			return
			Variable
			{	.	ID
				=	NewVariableID
					()
			,	.	Type
				=	i_vReturnType
			};
		}
	};

	template
		<	::std::size_t
				t_vParallelCount
		>
	(	InstructionView
	)	(	InstructionBuffer<t_vParallelCount>
			&	i_rBuffer
		,	::std::ptrdiff_t
				i_vParallelIndex
		,	short
				i_vArgumentCount
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
		Variable
			m_vVariable
		;
		InstructionView<t_vParallelCount>
		*	m_aInstructionView
		;
	public:
		explicit(true) constexpr inline
		(	ParallelVariable
		)	(	Variable const
				&	i_rVariable
			,	InstructionView<t_vParallelCount>
				&	i_rInstructionView
			)
			noexcept
		:	m_vVariable
			{	i_rVariable
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
		:	ParallelVariable
			{	Variable
				{	.	ID
					=	i_rInstructionView
						.	NewVariableID
							()
				,	.	Type
					=	Type<t_tVariable>
				}
			,	i_rInstructionView
			}
		{}

		template
			<	typename
					t_tData
			>
		[[nodiscard]]
		auto constexpr inline
		(	AccessMember
		)	(	TypeToken<t_tData>
			,	BitSize
					i_vOffset
			,	short
					i_vDistrict
			,	void const
				*	i_aInitializer
			)	const
			noexcept
		->	ParallelVariable<t_tData, t_vParallelCount>
		{	return
			ParallelVariable<t_tData, t_vParallelCount>
			{	Variable
				{	.	ID
					=	m_vVariable
						.	ID
				,	.	Type
					=	Type<t_tData>
				,	.	Offset
					=	i_vOffset
				,	.	District
					=	i_vDistrict
				,	.	Initializer
					=	i_aInitializer
				}
			,	*	m_aInstructionView
			};
		}

		template
			<	typename
					t_tData
			>
		[[nodiscard]]
		auto constexpr inline
		(	AccessMember
		)	(	TypeToken<ConstantType<t_tData>>
			,	BitSize
					i_vOffset
			,	short
					i_vDistrict
			,	void const
				*	i_aInitializer
			)	const
			noexcept
		->	ParallelVariable<t_tData, t_vParallelCount>
		{	return
			AccessMember
			(	Type<t_tData>
			,	i_vOffset
			,	i_vDistrict
			,	i_aInitializer
			);
		}

		auto constexpr inline
		(	Return
		)	()	const
			noexcept
		->	decltype(auto)
		{	return
			m_aInstructionView
			->	Return
				(	m_vVariable
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
		{
			using
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
					(	Type<tResult>
					,	EInstruction
						::	Multiply
					,	i_rLeft
						.	m_vVariable
					,	i_rRight
						.	m_vVariable
					)
			,	*	i_rLeft
				.	m_aInstructionView
			};
		}
	};

	template
		<	typename
				t_tVariable
		,	::std::size_t
				t_vParallelCount
		>
	(	ParallelVariable
	)	(	TypeToken<t_tVariable>
		,	InstructionView<t_vParallelCount>
			&
		)
	->	ParallelVariable
		<	t_tVariable
		,	t_vParallelCount
		>
	;

	template
		<	typename
				t_tData
		,	BitSize
				t_vOffset
		,	short
				t_vDistrict
		,	void const
			*	t_aInitializer
		>
	struct
		ParallelOffset
	{
		template
			<	typename
					t_tType
			,	::std::size_t
					t_vParallelCount
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ParallelVariable<t_tType, t_vParallelCount>
					i_vVariable
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vVariable
			.	AccessMember
				(	Type<t_tData>
				,	t_vOffset
				,	t_vDistrict
				,	t_aInitializer
				)
			;
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
		=	ParallelOffset
			<	RestoreTypeEntity
				<	t_vInfo
					.	Type
				>
			,	t_vInfo
				.	Offset
			,	t_vInfo
				.	DistrictIndex
			,	t_vInfo
				.	Initializer
			>{}
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
		{};

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
