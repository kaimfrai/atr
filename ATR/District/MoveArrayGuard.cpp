export module ATR.District.MoveArrayGuard;

import ATR.Layout.Create;
import ATR.Layout.Fork;
import ATR.Layout.Offset;
import ATR.Member.Composition;
import ATR.Virtual.InstructionBuffer;
import ATR.Virtual.UnionCall;

import Meta.Auto.Simd.Array;
import Meta.Auto.Simd.Cast;
import Meta.Generic.RandomAccessIteratorBase;
import Meta.ID;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Token.Type;

import Std;

using ::ATR::Layout::Fork;
using ::ATR::Layout::Offset;
using ::ATR::Virtual::GenericSimdMask;
using ::Meta::BitSize;
using ::Meta::ByteSize;
using ::Meta::Generic::RandomAccessIteratorBase;
using ::Meta::ProtoID;
using ::Meta::RestoreTypeEntity;
using ::Meta::Simd;
using ::Meta::SimdCast;

export namespace
	ATR::District
{
	template
		<	typename
		,	::std::size_t
		>
	struct
		DynamicArray
	;

	template
		<	::std::size_t
				t_vBatch
		>
	struct
		DynamicArray
		<	void
		,	t_vBatch
		>
	{
		template
			<	typename
					t_tData
			>
		using
			Rebind
		=	DynamicArray
			<	t_tData
			,	t_vBatch
			>
		;

		::std::byte
		*	Data
		;
		::std::uint32_t
			Capacity
		;
		::std::uint32_t
			Count
		;

		template
			<	::std::size_t
					t_vAlignment
			>
		auto constexpr inline
		(	allocate
		)	(	::std::uint32_t
					i_vCapacity
			,	BitSize
					i_vSize
			)	&
			noexcept
		->	void
		{
			auto const
				vSize
			=	static_cast<::std::size_t>
				(	ByteSize
					(	i_vCapacity
					*	i_vSize
					)
				.	get
					()
				)
			;

			if	consteval
			{
				//	FIXME Maybe allocate more bytes, then align?
				(	Data
				=	::std::assume_aligned
					<	t_vAlignment
					>(	new
						::std::byte
							[	vSize
							]
					)
				);
			}
			else
			{
				//	Aligned alloc not constexpr
				(	Data
				=	static_cast<::std::byte*>
					(	::std::aligned_alloc
						(	t_vAlignment
						,	vSize
						)
					)
				);
			}
			(	Capacity
			=	i_vCapacity
			);
			(	Count
			=	{}
			);
		}

		auto constexpr inline
		(	deallocate
		)	()	&
			noexcept
		->	void
		{
			if	(	nullptr
				!=	Data
				)
			{
				if	consteval
				{
					delete
						[]
						Data
					;
				}
				else
				{
					::std::free
					(	Data
					);
				}

				(	Data
				=	nullptr
				);
				(	Capacity
				=	{}
				);
				(	Count
				=	{}
				);
			}
		}

		template
			<	typename
					t_tData
			,	auto
					t_vOffset
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	DynamicArray
				&	i_rArray
			,	Layout::Offset<t_tData, t_vOffset>
			)
			noexcept
		->	decltype(auto)
		{
			t_tData
			*	aData
			=	::std::launder
				(	::std::bit_cast<t_tData*>
					(	i_rArray
						.	Data
					+	i_rArray
						.	Capacity
					*	t_vOffset
					)
				)
			;
			return
			Simd<t_tData(&)[][t_vBatch]>
			{	aData
			,	i_rArray
				.	Count
			};
		}

		template
			<	typename
					t_tData
			,	auto
					t_vOffset
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	DynamicArray const
				&	i_rArray
			,	Layout::Offset<t_tData, t_vOffset>
			)
			noexcept
		->	decltype(auto)
		{
			t_tData const
			*	aData
			=	::std::launder
				(	::std::bit_cast<t_tData const*>
					(	i_rArray
						.	Data
					+	i_rArray
						.	Capacity
					*	t_vOffset
					)
				)
			;
			return
			Simd<t_tData const(&)[][t_vBatch]>
			{	aData
			,	i_rArray
				.	Count
			};
		}

		template
			<	typename
					t_tElement
			,	::std::size_t
					t_vExtent
			>
		auto constexpr inline
		(	operator=
		)	(	Simd<t_tElement[t_vBatch]> const
				(&	i_rArray
				)	[	t_vExtent
					]
			)
			noexcept
		{
			auto const
			*	aData
			=	Data
			;
			for	(	auto const
					&	rElement
				:	i_rArray
				)
			{
				rElement
				.	StoreAligned
					(	::std::launder
						(	::std::bit_cast<t_tElement*>
							(	aData
							)
						)
					+	Count
					)
				;

				(	aData
				+=	sizeof(t_tElement)
				*	Capacity
				);
			}

			return
			*	this
			;
		}

		template
			<	typename
					t_tNorth
			,	typename
					t_tSouth
			>
		auto constexpr inline
		(	operator=
		)	(	Fork<t_tNorth, t_tSouth> const
				&	i_rFork
			)
			noexcept
		{
			(*	this
			=	i_rFork
				.	NorthArea
			);

			DynamicArray
				vSouth
			{	.	Data
				=	Data
				+	sizeof(t_tNorth)
				/	t_vBatch
				*	Capacity
			,	.	Capacity
				=	Capacity
			,	.	Count
				=	Count
			};

			(	vSouth
			=	i_rFork
				.	SouthArea
			);

			return
			*	this
			;
		}
	};

	template
		<	typename
				t_tDistrict
		,	::std::size_t
				t_vBatch
		>
	struct
		DynamicArray
	{
		using
			Erased
		=	DynamicArray
			<	void
			,	t_vBatch
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	Read
		)	(	Erased
				&	i_rErased
			)
			noexcept
		->	decltype(auto)
		{	return
			(	i_rErased
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Read
		)	(	Erased const
				&	i_rErased
			)
			noexcept
		->	decltype(auto)
		{	return
			(	i_rErased
			);
		}
	};

	template
		<	typename
				t_tUnion
		,	::std::size_t
				t_vBatch
		>
	struct
		CallValue
	;

	template
		<	typename
				t_tUnion
		,	::std::size_t
				t_vBatch
		>
	struct
		MaskedCallReference
	{
		t_tUnion
		*	m_aUnion
		;

		::Meta::Multiple<t_vBatch>
			m_vIndex
		;
		GenericSimdMask<t_vBatch>
			m_vMask
		;

		template
			<	typename
					t_tElement
			,	BitSize
					t_vOffset
			,	typename
				...	t_tpNestedOffset
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator->*
		)	(	Offset<t_tElement, t_vOffset, t_tpNestedOffset...>
					i_vOffset
			)	const
			noexcept
		->	decltype(auto)
		{	return
			(	(	m_aUnion
				->	Layout
				)
			->*	i_vOffset
			)	[	m_vMask
				][	m_vIndex
				]
			;
		}
	};

	template
		<	typename
				t_tUnion
		,	::std::size_t
				t_vBatch
		>
	struct
		CallReference
	{
		using
			ReferencedValue
		=	CallValue
			<	t_tUnion
			,	t_vBatch
			>
		;

		t_tUnion
		*	m_aUnion
		;

		::Meta::Multiple<t_vBatch>
			m_vIndex
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	GenericSimdMask<t_vBatch>
					i_vMask
			)	const
			noexcept
		->	MaskedCallReference
			<	t_tUnion
			,	t_vBatch
			>
		{	return
			{	m_aUnion
			,	m_vIndex
			,	i_vMask
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator->*
		)	(	auto
					i_vOffset
			)	const
			noexcept
		->	decltype(auto)
		{	return
			(	(	m_aUnion
				->	Layout
				)
			->*	i_vOffset
			)	[	m_vIndex
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	ProtoID auto
					i_vFunction
			,	auto
				...	i_vpArgument
			)	const
			noexcept
		->	decltype(auto)
		{
			auto static constexpr
			&	rInstructions
			=	::ATR::Virtual::InstructionBuffer_Of
				<	decltype(i_vFunction)
				,	t_tUnion&
				,	decltype(i_vpArgument)
					...
				>
			;

			auto const
				vTypeIndices
			=	SimdCast<::std::int32_t>
				(	(	(	m_aUnion
						->	Layout
						)
					->*	t_tUnion
						::	template
							Offset_Of
							<	"_UnionTag"
							>
					)[	m_vIndex
					]
				)
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
				Return
				(	::ATR::Virtual::EvaluatorGroup
					<	::ATR::Virtual::Evaluator
						<	rInstructions
							.	Instructions
								[	t_vpIndex
								]
							.	Type
						,	Simd
							<	RestoreTypeEntity
								<	rInstructions
									.	Instructions
										[	t_vpIndex
										]
									.	Result
								>	[	t_vBatch
									]
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
					,	*	this
					,	i_vpArgument
						...
					}
				);
			}(	::std::make_index_sequence
				<	rInstructions
					.	InstructionCount
				>{}
			);
		}
	};

	template
		<	typename
				t_tUnion
		,	::std::size_t
				t_vBatch
		>
	struct
		CallIterator
	:	RandomAccessIteratorBase
		<	CallReference
			<	t_tUnion
			,	t_vBatch
			>
		>
	{
		t_tUnion
		*	m_aUnion
		;

		::Meta::Multiple<t_vBatch>
			m_vIndex
		{};

		auto constexpr inline
		(	operator+=
		)	(	this CallIterator
				&	i_rThis
			,	CallIterator::difference_type
					i_vDifference
			)
			noexcept
		->	decltype(i_rThis)
		{
			(	i_rThis
				.	m_vIndex
			+=	::Meta::Multiple<t_vBatch>
				{	i_vDifference
				}
			);
			return
				i_rThis
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	CallIterator
					i_aLeft
			,	CallIterator
					i_aRight
			)
			noexcept
		->	CallIterator::difference_type
		{	return
				(	i_aLeft
					.	m_vIndex
				-	i_aRight
					.	m_vIndex
				)
			.	m_vIndex
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	(	this CallIterator
					i_aThis
			)
			noexcept
		->	CallIterator::reference
		{	return
			{	i_aThis
				.	m_aUnion
			,	i_aThis
				.	m_vIndex
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	CallIterator
					i_aLeft
			,	CallIterator
					i_aRight
			)
			noexcept
		->	bool
		{	return
				i_aLeft
				.	m_vIndex
			==	i_aRight
				.	m_vIndex
			;
		}

		[[nodiscard]]
		auto friend inline
		(	operator<=>
		)	(	CallIterator
					i_aLeft
			,	CallIterator
					i_aRight
			)
			noexcept
		->	decltype(auto)
		{	return
				i_aLeft
				.	m_vIndex
			<=>	i_aRight
				.	m_vIndex
			;
		}
	};

	template
		<	typename
				t_tUnion
		,	::std::size_t
				t_vBatch
		>
	struct
		CallView
	{
		t_tUnion
		*	m_aUnion
		;
		::std::uint32_t
			m_vCount
		;

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const
			noexcept
		->	CallIterator
			<	t_tUnion
			,	t_vBatch
			>
		{	return
			{	.	m_aUnion
				=	m_aUnion
			,	.	m_vIndex
				=	{}
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const
			noexcept
		->	CallIterator
			<	t_tUnion
			,	t_vBatch
			>
		{	return
			{	.	m_aUnion
				=	m_aUnion
			,	.	m_vIndex
				=	{	m_vCount
					/	static_cast<::std::ptrdiff_t>
						(	t_vBatch
						)
					}
			};
		}
	};

	template
		<	::std::size_t
				t_vMultiplier
		,	short
				t_vDistrictIndex
		,	typename
				t_tInstance
		>
	class
		MoveArrayGuard
	{
	public:
		using
			District
		=	MoveArrayGuard
		;
	};

	template
		<	::std::size_t
				t_vExtent
		>
	struct
		SimdArrayTransform
	{
		template
			<	typename
					t_tElement
			,	::std::size_t
					t_vCount
			>
		using
			Type
		=	::Meta::Simd
			<	t_tElement
				[	t_vExtent
				]
			>
				[	t_vCount
				]
		;
	};

	template
		<	::std::size_t
				t_vMultiplier
		,	short
				t_vDistrictIndex
		,	template
				<	typename
				,	typename
					...
				>
			typename
				t_t1Instance
		,	typename
				t_tTypeName
		,	typename
			...	t_tpDistrict
		>
	requires
		(	Member::Composition_Of
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		.	Layout
			[	t_vDistrictIndex
			]
		.	HasAny
			()
		)
	class
		MoveArrayGuard
		<	t_vMultiplier
		,	t_vDistrictIndex
		,	t_t1Instance
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		>
	{
		using
			InstanceType
		=	t_t1Instance
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		;

		auto static constexpr inline
		&	Composition
		=	Member::Composition_Of
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		;

		auto static constexpr inline
			DistrictMask
		=	Composition
			.	DistrictMask
				(	t_vDistrictIndex
				)
		;

		auto static constexpr inline
			IsFullMask
		=	Count
			(	DistrictMask
			)
		==	Composition
			.	Members
			.	UnionCount
		;
	public:
		[[nodiscard]]
		auto constexpr inline
		(	GuardedValue
		)	()	&
			noexcept
		->	DynamicArray<void, t_vMultiplier>&
		{	return
				static_cast<InstanceType&>
				(*	this
				)
				.	Layout
			->*	::ATR::Layout::Offset_For
				<	Composition
				,	DynamicArray<void, t_vMultiplier>
				,	Composition
					.	GetDistrictOffset
						(	t_vDistrictIndex
						)
				,	Composition
					.	GetDistrictDistrictIndex
						(	t_vDistrictIndex
						)
				,	nullptr
				>
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GuardedValue
		)	()	const&
			noexcept
		->	DynamicArray<void, t_vMultiplier>
		{	return
				static_cast<InstanceType const&>
				(*	this
				).	Layout
			->*	::ATR::Layout::Offset_For
				<	Composition
				,	DynamicArray<void, t_vMultiplier>
				,	Composition
					.	GetDistrictOffset
						(	t_vDistrictIndex
						)
				,	Composition
					.	GetDistrictDistrictIndex
						(	t_vDistrictIndex
						)
				,	nullptr
				>
			;
		}

	public:
		using
			District
		=	::ATR::Layout::CreateType
			<	Composition
			,	t_vDistrictIndex
			,		SimdArrayTransform
					<	t_vMultiplier
					>
				::	template
					Type
			>
		;

		explicit(false) constexpr inline
		(	MoveArrayGuard
		)	()
			noexcept
		{
			(	GuardedValue
				()
			=	{}
			);
		}

		explicit(false) constexpr inline
		(	MoveArrayGuard
		)	(	::std::uint32_t
					i_vCapacity
			)
			noexcept
		{
			auto static constexpr
			&	rLayout
			=	Composition
			.	Layout
				[	t_vDistrictIndex
				]
			;

			(	GuardedValue
				()
			.	template
				allocate
				<	alignof(District)
				>(	i_vCapacity
				,	rLayout
					.	Size
				)
			);
		}

		explicit(false) constexpr inline
		(	MoveArrayGuard
		)	(	MoveArrayGuard
				&&	i_rOther
			)
			noexcept
		{
			(	GuardedValue
				()
			=	::std::exchange
				(	i_rOther
					.	GuardedValue
						()
				,	{}
				)
			);
		}

		auto constexpr inline
		(	operator=
		)	(	MoveArrayGuard
				&&	i_rOther
			)	&
			noexcept
		->	MoveArrayGuard
			&
		{
			auto
			&	rGuardedValue
			=	GuardedValue
				()
			;

			rGuardedValue
			.	deallocate
				()
			;

			::std::swap
			(	rGuardedValue
			,	i_rOther
				.	GuardedValue
					()
			);

			return
			*	this
			;
		}

		constexpr inline
		(	compl
			MoveArrayGuard
		)	()
			noexcept
		{
			auto
			&	rGuardedValue
			=	GuardedValue
				()
			;

			rGuardedValue
			.	deallocate
				()
			;
		}

		auto constexpr inline
		(	push_back
		)	(	Simd<unsigned char[t_vMultiplier]>
			,	District const
				&	i_rDistrict
			)
			noexcept
		->	void
		{
			auto
			&	rGuardedValue
			=	GuardedValue
				()
			;

			if	constexpr
				(	IsFullMask
				)
			{
				(	rGuardedValue
				=	i_rDistrict
				);

				(	rGuardedValue
					.	Count
				+=	t_vMultiplier
				);
			}
			else
			{
				// TODO
				// Permutate by type
				// Masked unaligned assign
				// increment by #values contained in the district
			}
		}

		auto friend constexpr inline
		(	View
		)	(	MoveArrayGuard const
				&	i_rInstance
			)
			noexcept
		->	decltype(auto)
		{	auto
				rGuardedValue
			=	i_rInstance
				.	GuardedValue
					()
			;
			return
			CallView<InstanceType const, t_vMultiplier>
			{	&	static_cast<InstanceType const&>
					(	i_rInstance
					)
			,	rGuardedValue
				.	Count
			};
		}
	};


	template
		<	template
				<	typename
				,	typename
					...
				>
			typename
				t_t1Instance
		,	typename
				t_tTypeName
		,	typename
			...	t_tpDistrict
		,	::std::size_t
				t_vMultiplier
		>
	auto constexpr inline
	(	push_back
	)	(	t_t1Instance<t_tTypeName, t_tpDistrict...>
			&	rInstance
		,	Simd<unsigned char[t_vMultiplier]>
				i_vTypeIndex
		,	typename
				t_t1Instance<t_tTypeName, t_tpDistrict...>
			::	template
				District
				<	t_tpDistrict
				>
				const
			&
			...	i_rpDistrictInitializer
		)
		noexcept
	->	void
	{
		using
			tInstance
		=	t_t1Instance<t_tTypeName, t_tpDistrict...>
		;
		(	...
		,	static_cast<typename tInstance::template DistrictGuard<t_tpDistrict>&>
			(	rInstance
			)
			.	push_back
				(	i_vTypeIndex
				,	i_rpDistrictInitializer
				)
		);
	}
}
