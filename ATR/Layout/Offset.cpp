export module ATR.Layout.Offset;

import ATR.Member.Info;

import Meta.Bit.Array;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.Memory.Constraint;
import Meta.Memory.PointerCast;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size;
import Meta.Size;
import Meta.Token.Type;

import Std;

using ::Meta::Bit::ArrayConstReference;
using ::Meta::Bit::ArrayReference;
using ::Meta::Bit::Field;
using ::Meta::Bit::Reference;
using ::Meta::BitSize;
using ::Meta::ByteIndex;
using ::Meta::Memory::ByteWidth;
using ::Meta::Memory::Constraint_Of;
using ::Meta::Memory::PointerCast;
using ::Meta::RestoreTypeEntity;
using ::Meta::USize;

using namespace ::Meta::Literals;

export namespace
	ATR::Layout
{
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
		auto static constexpr
			ArrayIndex
		=		ByteWidth<t_tData>
				(	t_vOffset
				)
			.	Value
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte
				*	i_aLayout
			)
			noexcept
		->	t_tData&
		{	return
				*
				//	We don't know where the byte array came from
				//	so we need to launder it
				::std::launder
				(	PointerCast<t_tData>
					(	i_aLayout
					+	t_vOffset
					)
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				*	i_aLayout
			)
			noexcept
		->	t_tData
		{	return
				*
				//	We don't know where the byte array came from
				//	so we need to launder it
				::std::launder
				(	PointerCast<t_tData>
					(	i_aLayout
					+	t_vOffset
					)
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	t_tData
				*	i_aArray
			,	Offset
			)
			noexcept
		->	t_tData&
		{	return
				i_aArray
				[	ArrayIndex
				]
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	t_tData const
				*	i_aArray
			,	Offset
			)
			noexcept
		->	t_tData
		{	return
				i_aArray
				[	ArrayIndex
				]
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
		auto static constexpr inline
			ArrayIndex
		=		ByteWidth<void*>
				(	t_vOffset
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

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte
				*	i_aLayout
			)
			noexcept
		->	decltype(auto)
		{
			::std::byte
			*	aNextLayout
			=	*
				//	We don't know where the byte array came from
				//	so we need to launder it
				::std::launder
				(	PointerCast<::std::byte*>
					(	i_aLayout
					+	t_vOffset
					)
				)
			;

			return
				NextOffset
				(	aNextLayout
				)
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
			::std::byte const
			*	aNextLayout
			=	*
				//	We don't know where the byte array came from
				//	so we need to launder it
				::std::launder
				(	PointerCast<::std::byte const* const>
					(	i_aLayout
					+	t_vOffset
					)
				)
			;

			return
				NextOffset
				(	aNextLayout
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	void
				**	i_aArray
			,	Offset
			)
			noexcept
		->	decltype(auto)
		{
			void
			*	aElement
			=	i_aArray
				[	ArrayIndex
				]
			;
			if	(	aElement
				==	nullptr
				)
			{	((void)"Element pointer not initialized", ::std::unreachable());
			}

			if	constexpr
				(	::std::is_array_v<t_tDistrict>
				)
			{	return
					static_cast<::std::remove_extent_t<t_tDistrict>*>
					(	aElement
					)
				->*	NextOffset
				;
			}
			else
			{	return
					*
					static_cast<t_tDistrict*>
					(	i_aArray
						[	ArrayIndex
						]
					)
				->*	NextOffset
				;
			}
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	void const
				*	const
				*	i_aArray
			,	Offset
			)
			noexcept
		->	decltype(auto)
		{
			void const
			*	aElement
			=	i_aArray
				[	ArrayIndex
				]
			;

			if	(	aElement
				==	nullptr
				)
			{	((void)"Element pointer not initialized", ::std::unreachable());
			}

			if	constexpr
				(	::std::is_array_v<t_tDistrict>
				)
			{	return
					static_cast<::std::remove_extent_t<t_tDistrict> const*>
					(	i_aArray
						[	ArrayIndex
						]
					)
				->*	NextOffset
				;
			}
			else
			{	return
					*
					static_cast<t_tDistrict const*>
					(	i_aArray
						[	ArrayIndex
						]
					)
				->*	NextOffset
				;
			}
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
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				*
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
		auto static constexpr
			ByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte
				*	i_aLayout
			)
			noexcept
		->	decltype(auto)
		{	return
			Reference
			<	bool
			,	ByteOffset
				.	Remainder
			>{	::std::launder
				(	i_aLayout
				+	ByteOffset
					.	Quotient
				)
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				*	i_aLayout
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
				(	i_aLayout
				+	ByteOffset
					.	Quotient
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	::std::byte
				(&	i_rLayout
				)	[]
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	i_rLayout
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	::std::byte const
				(&	i_rLayout
				)	[]
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	i_rLayout
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
		auto static constexpr
			ByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte
				*	i_aLayout
			)
			noexcept
		->	decltype(auto)
		{	return
			ArrayReference
			<	1_bit
			,	t_vExtent
			,	ByteOffset
				.	Remainder
			>{	::std::launder
				(	i_aLayout
				+	ByteOffset
					.	Quotient
				)
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				*	i_aLayout
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
				>{	i_aLayout
				+	ByteOffset
					.	Quotient
				}
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	::std::byte
				(&	i_rLayout
				)	[]
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	i_rLayout
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	::std::byte const
				(&	i_rLayout
				)	[]
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	i_rLayout
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
		auto static constexpr
			ByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte
				*	i_aLayout
			)
			noexcept
		->	decltype(auto)
		{	return
				Reference
				<	Field<t_vWidth>
				,	ByteOffset
					.	Remainder
				>{	::std::launder
					(	i_aLayout
					+	ByteOffset
						.	Quotient
					)
				}
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
		{	return
				Reference
				<	Field<t_vWidth> const
				,	ByteOffset
					.	Remainder
				>
			::	Read
				(	i_aLayout
				+	ByteOffset
					.	Quotient
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	::std::byte
				(&	i_rLayout
				)	[]
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	i_rLayout
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	::std::byte const
				(&	i_rLayout
				)	[]
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	i_rLayout
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
		auto static constexpr
			ByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte
				*	i_aLayout
			)
			noexcept
		->	decltype(auto)
		{	return
				ArrayReference
				<	t_vWidth
				,	t_vExtent
				,	ByteOffset
					.	Remainder
				>{	::std::launder
					(	i_aLayout
					+	ByteOffset
						.	Quotient
					)
				}
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
		{	return
				CopyArray
				(	ArrayConstReference
					<	t_vWidth
					,	t_vExtent
					,	ByteOffset
						.	Remainder
					>{	i_aLayout
					+	ByteOffset
						.	Quotient
					}
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	::std::byte
				(&	i_rLayout
				)	[]
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	i_rLayout
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	::std::byte const
				(&	i_rLayout
				)	[]
			,	Offset
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
				i_vOffset
				(	i_rLayout
				)
			;
		}
	};

	template
		<	typename
				t_tDistrict
		,	Member::Info
				t_vInfo
		,	typename
			...	t_tpIndirectOffset
		>
	auto constexpr inline
		Offset_For
	=	Offset_For
		<	t_tDistrict
		,	t_tDistrict
			::	DistrictInfo
				(	t_vInfo
					.	DistrictIndex
				)
		,	Offset
			<	RestoreTypeEntity
				<	t_vInfo
					.	Type
				>
			,	t_vInfo
				.	Offset
			>
		,	t_tpIndirectOffset
			...
		>
	;

	template
		<	typename
				t_tDistrict
		,	Member::Info
				t_vInfo
		,	typename
			...	t_tpIndirectOffset
		>
	requires
		(	t_vInfo
			.	DistrictIndex
		<=	0
		)
	auto constexpr inline
		Offset_For
		<	t_tDistrict
		,	t_vInfo
		,	t_tpIndirectOffset
			...
		>
	=	Offset
		<	RestoreTypeEntity
			<	t_vInfo
				.	Type
			>
		,	t_vInfo
			.	Offset
		,	t_tpIndirectOffset
			...
		>{}
	;
}

