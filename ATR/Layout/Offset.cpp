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
		,	BitSize
			...	t_vpIndirectOffset
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
				(&	i_rLayout
				)	[]
			)
			noexcept
		->	t_tData&
		{	return
				*
				//	We don't know where the byte array came from
				//	so we need to launder it
				::std::launder
				(	PointerCast<t_tData>
					(	i_rLayout
					+	t_vOffset
					)
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				(&	i_rLayout
				)	[]
			)
			noexcept
		->	t_tData
		{	return
				*
				//	We don't know where the byte array came from
				//	so we need to launder it
				::std::launder
				(	PointerCast<t_tData>
					(	i_rLayout
					+	t_vOffset
					)
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	t_tData
				(&	i_rArray
				)	[]
			,	Offset
			)
			noexcept
		->	t_tData&
		{	return
				i_rArray
				[	ArrayIndex
				]
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	t_tData const
				(&	i_rArray
				)	[]
			,	Offset
			)
			noexcept
		->	t_tData
		{	return
				i_rArray
				[	ArrayIndex
				]
			;
		}
	};

	template
		<	typename
				t_tIndirectData
		,	BitSize
				t_vOffset
		,	BitSize
				t_vNextOffset
		,	BitSize
			...	t_vpNestedOffset
		>
	struct
		Offset
		<	t_tIndirectData
		,	t_vOffset
		,	t_vNextOffset
		,	t_vpNestedOffset
			...
		>
	{
		template
			<	typename
					t_tData
			>
		auto static constexpr
			ArrayIndex
		=		ByteWidth<t_tData*[]>
				(	t_vOffset
				)
			.	Value
		;

		auto static constexpr inline
			NextOffset
		=	Offset
			<	t_tIndirectData
			,	t_vNextOffset
			,	t_vpNestedOffset
				...
			>{}
		;

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte
				(&	i_rLayout
				)	[]
			)
			noexcept
		->	decltype(auto)
		{
			::std::byte
			(&	rNextLayout
			)	[]
			=	**
				//	We don't know where the byte array came from
				//	so we need to launder it
				::std::launder
				(	PointerCast<::std::byte(*)[]>
					(	i_rLayout
					+	t_vOffset
					)
				)
			;

			return
				NextOffset
				(	rNextLayout
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				(&	i_rLayout
				)	[]
			)
			noexcept
		->	decltype(auto)
		{
			::std::byte const
			(&	rNextLayout
			)	[]
			=	**
				//	We don't know where the byte array came from
				//	so we need to launder it
				::std::launder
				(	PointerCast<::std::byte const(* const)[]>
					(	i_rLayout
					+	t_vOffset
					)
				)
			;

			return
				NextOffset
				(	rNextLayout
				)
			;
		}

		template
			<	typename
					t_tData
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	t_tData
				*
				(&	i_rArray
				)	[]
			,	Offset
			)
			noexcept
		->	decltype(auto)
		{	return
				NextOffset
				(	*
					i_rArray
					[	ArrayIndex
						<	t_tData
						>
					]
				)
			;
		}

		template
			<	typename
					t_tData
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	t_tData const
				*	const
				(&	i_rArray
				)	[]
			,	Offset
			)
			noexcept
		->	decltype(auto)
		{	return
				NextOffset
				(	*
					i_rArray
					[	ArrayIndex
						<	t_tData
						>
					]
				)
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
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				(&
				)	[]
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
				(&	i_rLayout
				)	[]
			)
			noexcept
		->	decltype(auto)
		{	return
			Reference
			<	bool
			,	ByteOffset
				.	Remainder
			>{	::std::launder
				(	i_rLayout
				+	ByteOffset
					.	Quotient
				)
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				(&	i_rLayout
				)	[]
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
				(	i_rLayout
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
				(	static_cast<decltype(i_rLayout)>
					(	i_rLayout
					)
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
				(	static_cast<decltype(i_rLayout)>
					(	i_rLayout
					)
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
				(&	i_rLayout
				)	[]
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
				(	i_rLayout
				+	ByteOffset
					.	Quotient
				)
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::byte const
				(&	i_rLayout
				)	[]
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
				>{	i_rLayout
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
				(	static_cast<decltype(i_rLayout)>
					(	i_rLayout
					)
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
				(	static_cast<decltype(i_rLayout)>
					(	i_rLayout
					)
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
				(&	i_rLayout
				)	[]
			)
			noexcept
		->	decltype(auto)
		{	return
				Reference
				<	Field<t_vWidth>
				,	ByteOffset
					.	Remainder
				>{	::std::launder
					(	i_rLayout
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
				(&	i_rLayout
				)	[]
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
				(	i_rLayout
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
				(	static_cast<decltype(i_rLayout)>
					(	i_rLayout
					)
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
				(	static_cast<decltype(i_rLayout)>
					(	i_rLayout
					)
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
				(&	i_rLayout
				)	[]
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
					(	i_rLayout
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
				(&	i_rLayout
				)	[]
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
					>{	i_rLayout
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
				(	static_cast<decltype(i_rLayout)>
					(	i_rLayout
					)
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
				(	static_cast<decltype(i_rLayout)>
					(	i_rLayout
					)
				)
			;
		}
	};

	template
		<	Member::Info
				t_vInfo
		>
	using
		Offset_For
	=	Offset
		<	RestoreTypeEntity
			<	t_vInfo
				.	Type
			>
		,	t_vInfo
			.	Offset
		>
	;
}

