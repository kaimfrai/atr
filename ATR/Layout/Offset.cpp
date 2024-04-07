export module ATR.Layout.Offset;

import ATR.Layout.TypeIndex;

import Meta.Auto.CPO.Data;
import Meta.Auto.Ref.DataRange;
import Meta.Auto.Ref.RArray;
import Meta.Bit.Array;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.Memory.Constraint;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Size;

import Std;

using ::Meta::Bit::ArrayConstReference;
using ::Meta::Bit::ArrayReference;
using ::Meta::Bit::Field;
using ::Meta::Bit::Reference;
using ::Meta::BitSize;
using ::Meta::ByteIndex;
using ::Meta::ByteSize;
using ::Meta::CArray;
using ::Meta::Memory::ByteWidth;
using ::Meta::Memory::Constraint_Of;
using ::Meta::ProtoBorrowContainer_Of_AtLeast;
using ::Meta::ProtoOwnerContainer_Of_AtLeast;
using ::Meta::RArray;
using ::Meta::SSize;
using ::Meta::USize;

using namespace ::Meta::Literals;

export namespace
	ATR::Layout
{
	template
		<	typename
				t_tData
		,	SSize
				t_vExtent
		,	BitSize
				t_vOffset
		>
	auto constexpr inline
		TypeIndex_Of
	=	TypeIndex<t_tData>
		{	ByteWidth<t_tData>
			(	t_vOffset
			)
		.	Value
		,	t_vExtent
		}
	;

	template
		<	typename
				t_tData
		,	SSize
				t_vExtent
		,	BitSize
				t_vOffset
		>
	auto constexpr inline
		MinByteExtent_Of
	=	TypeIndex_Of
		<	t_tData
		,	t_vExtent
		,	t_vOffset
		>
	.	MinByteExtent
		()
	;

	template
		<	typename
				t_tProto
		,	TypeIndex
				t_vTypeIndex
		>
	concept
		ProtoOwnerDataRange_For
	=	ProtoOwnerContainer_Of_AtLeast
		<	t_tProto
		,	typename
			decltype(t_vTypeIndex)
			::	TargetType
		,	t_vTypeIndex
			.	MinExtent
				()
		>
	;

	template
		<	TypeIndex
				t_vTypeIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	Read
	)	(	ProtoOwnerDataRange_For<t_vTypeIndex> auto
			&	i_rDataRange
		)
		noexcept
	->	typename
		decltype(t_vTypeIndex)
		::	TargetType
		&
	{	return
		*	t_vTypeIndex
			[	::Meta::CPO::Data
				(	i_rDataRange
				)
			]
		;
	}

	template
		<	TypeIndex
				t_vTypeIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	Read
	)	(	ProtoOwnerDataRange_For<t_vTypeIndex> auto const
			&	i_rDataRange
		)
		noexcept
	->	typename
		decltype(t_vTypeIndex)
		::	TargetType
	{	return
		*	t_vTypeIndex
			[	::Meta::CPO::Data
				(	i_rDataRange
				)
			]
		;
	}

	template
		<	typename
				t_tProto
		,	TypeIndex
				t_vTypeIndex
		>
	concept
		ProtoBorrowDataRange_For
	=	ProtoBorrowContainer_Of_AtLeast
		<	t_tProto
		,	typename
			decltype(t_vTypeIndex)
			::	TargetType
		,	t_vTypeIndex
			.	MinExtent
				()
		>
	;

	template
		<	TypeIndex
				t_vTypeIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	Read
	)	(	ProtoBorrowDataRange_For<t_vTypeIndex> auto
				i_rDataRange
		)
		noexcept
	->	decltype(auto)
	{	return
		typename
		decltype(i_rDataRange)
		::	reference
		(*	t_vTypeIndex
			[	::Meta::CPO::Data
				(	i_rDataRange
				)
			]
		);
	}

	template
		<	typename
				t_tData
		,	SSize
				t_vExtent
		,	BitSize
				t_vOffset
		>
	using
		RErasure
	=	RArray
		<	::std::byte
		,	MinByteExtent_Of
			<	t_tData
			,	t_vExtent
			,	t_vOffset
			>
		>
	;

	template
		<	typename
				t_tData
		,	SSize
				t_vExtent
		,	BitSize
				t_vOffset
		>
	using
		CErasure
	=	CArray
		<	::std::byte
		,	MinByteExtent_Of
			<	t_tData
			,	t_vExtent
			,	t_vOffset
			>
		>
	;

	template
		<	typename
				t_tData
		,	BitSize
				t_vOffset
		,	typename
			...	t_tpIndirectOffsets
		>
	requires
		(	t_vOffset
		>=	0_bit
		)
	struct
		Offset
	{
		using
			DataType
		=	t_tData
		;

		auto static constexpr inline
			TypeIndex
		=	TypeIndex_Of
			<	t_tData
			,	1z
			,	t_vOffset
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	t_tData&
		{	return
				TypeIndex
				[	i_rLayout
					.	data
						()
				]
			.	operator
				t_tData
				&
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte const, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	t_tData
		{	return
				TypeIndex
				[	i_rLayout
					.	data
						()
				]
			.	operator
				t_tData
				()
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoOwnerDataRange_For<TypeIndex_Of<t_tData, 1z, t_vOffset>> auto
				&&	i_rArray
			,	Offset
			)
			noexcept
		->	decltype(auto)
		{	return
				Read<TypeIndex>
				(	static_cast<decltype(i_rArray)>
					(	i_rArray
					)
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoBorrowDataRange_For<TypeIndex_Of<t_tData, 1z, t_vOffset>> auto
					i_rArray
			,	Offset
			)
			noexcept
		->	decltype(auto)
		{	return
				Read<TypeIndex>
				(	static_cast<decltype(i_rArray)>
					(	i_rArray
					)
				)
			;
		}
	};

	template
		<	typename
				t_tDistrict
		,	BitSize
				t_vDistrictOffset
		,	typename
				t_tData
		,	BitSize
				t_vOffset
		,	typename
			...	t_tpIndirectOffset
		>
	struct
		Offset
		<	t_tDistrict
		,	t_vDistrictOffset
		,	Offset
			<	t_tData
			,	t_vOffset
			>
		,	t_tpIndirectOffset
			...
		>
	{
		using
			Erased
		=	typename
				t_tDistrict
			::	Erased
		;

		auto static constexpr inline
			ArrayIndex
		=		ByteWidth<Erased>
				(	t_vDistrictOffset
				)
			.	Value
		;

		auto static constexpr inline
			NextOffset
		=	Offset
			<	t_tData
			,	t_vOffset
			,	t_tpIndirectOffset
				...
			>{}
		;

		using
			DataType
		=	typename
				Offset
				<	t_tData
				,	t_vOffset
				,	t_tpIndirectOffset
					...
				>
			::	DataType
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte
				*	i_aLayout
			)
			noexcept
		->	decltype(auto)
		{
			auto
			&	aErased
			=	*	//	We don't know where the byte array came from
					//	so we need to launder it
					::std::launder
					(	PointerCast<Erased*>
						(	i_aLayout
						+	t_vOffset
						)
					)
			;
			return
			t_tDistrict
			::	Read
				(	aErased
				)
			->*	NextOffset
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				*	i_aLayout
			)
			noexcept
		->	decltype(auto)
		{
			auto
			&	aErased
			=	*	//	We don't know where the byte array came from
					//	so we need to launder it
					::std::launder
					(	PointerCast<typename t_tDistrict::Erased const*>
						(	i_aLayout
						+	t_vOffset
						)
					)
			;
			return
			t_tDistrict
			::	Read
				(	aErased
				)
			->*	NextOffset
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	Erased
				*	i_aArray
			,	Offset
			)
			noexcept
		->	decltype(auto)
		{	return
				t_tDistrict
				::	Read
					(	i_aArray
						[	ArrayIndex
						]
					)
			->*	NextOffset
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	Erased const
				*	i_aArray
			,	Offset
			)
			noexcept
		->	decltype(auto)
		{	return
				t_tDistrict
				::	Read
					(	i_aArray
						[	ArrayIndex
						]
					)
			->*	NextOffset
			;
		}
	};

	template
		<	BitSize
				t_vOffset
		,	typename
				t_tData
		,	USize
				t_vExtent
		>
	struct
		Offset
		<	t_tData
				[	t_vExtent
				]
		,	t_vOffset
		>
	{
		static_assert
		(	false
		,	"Offset to array not yet supported!"
		);
	};

	template
		<	typename
				t_tData
		>
	requires
		(	not
			Constraint_Of
			<	t_tData
			>
			.	IsAligned
				()
		)
	struct
		Offset
		<	t_tData
		,	0_bit
		>
	{
		using
			DataType
		=	t_tData
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	auto
			)
			noexcept
		->	t_tData
		{	return
				t_tData
				{}
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	auto const
				&
			,	Offset
			)
			noexcept
		->	t_tData
		{	return
				t_tData
				{}
			;
		}
	};

	template
		<	BitSize
				t_vOffset
		>
	struct
		Offset
		<	bool
		,	t_vOffset
		>
	{
		using
			DataType
		=	bool
		;
		auto static constexpr inline
			ByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;

		auto static constexpr inline
			TypeIndex
		=	TypeIndex_Of
			<	::std::byte
			,	1z
			,	ByteOffset
				.	Quotient
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	decltype(auto)
		{	return
			Reference
			<	bool
			,	ByteOffset
				.	Remainder
			>{	TypeIndex
				[	i_rLayout
					.	data
						()
				]
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte const, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	bool
		{	return
				Reference
				<	bool const
				,	ByteOffset
					.	Remainder
				>
			::	Read
				(	TypeIndex
					[	i_rLayout
						.	data
							()
					]
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoOwnerDataRange_For<TypeIndex_Of<::std::byte, 1z, IndexCast<ByteIndex>(t_vOffset).Quotient>> auto
				&	i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	RErasure<::std::byte, 1z, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoOwnerDataRange_For<TypeIndex_Of<::std::byte, 1z, IndexCast<ByteIndex>(t_vOffset).Quotient>> auto const
				&	i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	CErasure<::std::byte, 1z, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoBorrowDataRange_For<TypeIndex_Of<::std::byte, 1z, IndexCast<ByteIndex>(t_vOffset).Quotient>> auto
					i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	CErasure<::std::byte, 1z, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}
	};

	template
		<	USize
				t_vExtent
		,	BitSize
				t_vOffset
		>
	struct
		Offset
		<	bool
				[	t_vExtent
				]
		,	t_vOffset
		>
	{
		using
			DataType
		=	bool
				[	t_vExtent
				]
		;
		auto static constexpr inline
			ByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;

		auto static constexpr inline
			ByteExtent
		=	ByteSize
			(	BitSize
				(	ByteOffset
					.	Remainder
					.	get
						()
				+	t_vExtent
				)
			)
		.	Value
		;

		auto static constexpr inline
			TypeIndex
		=	TypeIndex_Of
			<	::std::byte
			,	ByteExtent
			,	ByteOffset
				.	Quotient
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	decltype(auto)
		{	return
			ArrayReference
			<	1_bit
			,	t_vExtent
			,	ByteOffset
				.	Remainder
			>{	TypeIndex
				[	i_rLayout
					.	data
						()
				]
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte const, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	decltype(auto)
		{	return
			CopyArray
			(	ArrayConstReference
				<	1_bit
				,	t_vExtent
				,	ByteOffset
					.	Remainder
				>{	TypeIndex
					[	i_rLayout
						.	data
							()
					]
				}
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoOwnerDataRange_For<TypeIndex_Of<::std::byte, ByteSize(BitSize(IndexCast<ByteIndex>(t_vOffset).Remainder.get() + t_vExtent)).Value, IndexCast<ByteIndex>(t_vOffset).Quotient>> auto
				&	i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	RErasure<::std::byte, ByteExtent, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoOwnerDataRange_For<TypeIndex_Of<::std::byte, ByteSize(BitSize(IndexCast<ByteIndex>(t_vOffset).Remainder.get() + t_vExtent)).Value, IndexCast<ByteIndex>(t_vOffset).Quotient>> auto const
				&	i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	CErasure<::std::byte, ByteExtent, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoBorrowDataRange_For<TypeIndex_Of<::std::byte, ByteSize(BitSize(IndexCast<ByteIndex>(t_vOffset).Remainder.get() + t_vExtent)).Value, IndexCast<ByteIndex>(t_vOffset).Quotient>> auto
					i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	CErasure<::std::byte, ByteExtent, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}
	};

	template
		<	BitSize
				t_vWidth
		,	BitSize
				t_vOffset
		>
	struct
		Offset
		<	Field<t_vWidth>
		,	t_vOffset
		>
	{
		using
			DataType
		=	Field<t_vWidth>
		;
		auto static constexpr
			ByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;

		auto static constexpr inline
			ByteExtent
		=	ByteSize
			(	BitSize
				(	ByteOffset
					.	Remainder
				)
			+	t_vWidth
			)
		.	Value
		;

		auto static constexpr inline
			TypeIndex
		=	TypeIndex_Of
			<	::std::byte
			,	ByteExtent
			,	ByteOffset
				.	Quotient
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	decltype(auto)
		{	return
				Reference
				<	Field<t_vWidth>
				,	ByteOffset
					.	Remainder
				>{	TypeIndex
					[	i_rLayout
						.	data
							()
					]
				}
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte const, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	decltype(auto)
		{	return
				Reference
				<	Field<t_vWidth> const
				,	ByteOffset
					.	Remainder
				>
			::	Read
				(	TypeIndex
					[	i_rLayout
						.	data
							()
					]
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoOwnerDataRange_For<TypeIndex> auto
				&	i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	RErasure<::std::byte, ByteExtent, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoOwnerDataRange_For<TypeIndex> auto const
				&	i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	CErasure<::std::byte, ByteExtent, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoBorrowDataRange_For<TypeIndex> auto const
					i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	CErasure<::std::byte, ByteExtent, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}
	};

	template
		<	BitSize
				t_vWidth
		,	USize
				t_vExtent
		,	BitSize
				t_vOffset
		>
	struct
		Offset
		<	Field<t_vWidth>
				[	t_vExtent
				]
		,	t_vOffset
		>
	{
		using
			DataType
		=	Field<t_vWidth>
				[	t_vExtent
				]
		;
		auto static constexpr
			ByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;

		auto static constexpr inline
			ByteExtent
		=	ByteSize
			(	BitSize
				(	ByteOffset
					.	Remainder
				)
			+	(	t_vExtent
				*	t_vWidth
				)
			)
		.	Value
		;

		auto static constexpr inline
			TypeIndex
		=	TypeIndex_Of
			<	::std::byte
			,	ByteExtent
			,	ByteOffset
				.	Quotient
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	decltype(auto)
		{	return
			ArrayReference
			<	t_vWidth
			,	t_vExtent
			,	ByteOffset
				.	Remainder
			>{	TypeIndex
				[	i_rLayout
					.	data
						()
				]
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	ProtoBorrowContainer_Of_AtLeast<::std::byte const, ByteSize(t_vOffset).Value> auto
					i_rLayout
			)
			noexcept
		->	decltype(auto)
		{	return
				CopyArray
				(	ArrayConstReference
					<	t_vWidth
					,	t_vExtent
					,	ByteOffset
						.	Remainder
					>{	TypeIndex
						[	i_rLayout
							.	data
								()
						]
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoOwnerDataRange_For<TypeIndex_Of<::std::byte, ByteSize(BitSize(IndexCast<ByteIndex>(t_vOffset).Remainder) + (t_vExtent * t_vWidth)).Value, IndexCast<ByteIndex>(t_vOffset).Quotient>> auto
				&	i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	RErasure<::std::byte, ByteExtent, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoOwnerDataRange_For<TypeIndex_Of<::std::byte, ByteSize(BitSize(IndexCast<ByteIndex>(t_vOffset).Remainder) + (t_vExtent * t_vWidth)).Value, IndexCast<ByteIndex>(t_vOffset).Quotient>> auto const
				&	i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	CErasure<::std::byte, ByteExtent, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	ProtoBorrowDataRange_For<TypeIndex_Of<::std::byte, ByteSize(BitSize(IndexCast<ByteIndex>(t_vOffset).Remainder) + (t_vExtent * t_vWidth)).Value, IndexCast<ByteIndex>(t_vOffset).Quotient>> auto
					i_rArray
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	CErasure<::std::byte, ByteExtent, ByteOffset.Quotient>
					{	i_rArray
					}
				)
			;
		}
	};

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
	(	MinByteExtent
	)	(	Offset
			<	t_tData
			,	t_vOffset
			,	t_tpIndirectOffsets
				...
			>
		)
		noexcept
	->	SSize
	{	return
			MinByteExtent_Of
			<	t_tData
			,	1z
			,	t_vOffset
			>
		;
	}
}
