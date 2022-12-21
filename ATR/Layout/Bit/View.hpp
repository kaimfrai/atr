export module ATR:Layout.Bit.View;

import Meta.ID;
import :Layout.Bit.Access;
import :Layout.Bit.Array;
import :Layout.Bit.MemberOffset;
import :Layout.Bit.Reference;
import :Layout.Bit.Types;

import Meta.Size;
import Meta.Arithmetic;
import Meta.Bit.ByteSize;

import Std;

using ::Meta::BitSize;
using ::Meta::Lex::Transform;
using ::Meta::Const;
using ::Meta::CopyRef;
using ::Meta::LRef;
using ::Meta::Mutable;
using ::Meta::RRef;
using ::Meta::Specifier::Mut;
using ::Meta::Volatile;
using ::Meta::Type;
using ::Meta::TypeEntity;
using ::Meta::USize;

export namespace
	ATR::Bit
{
	template
		<	USize
				t_nOffset
		,	USize
				t_nSize
		,	Meta::ProtoID
				t_tName
		>
	struct
		SingleView
	{
		static auto constexpr
			BitSize
		=	static_cast<ESize>(t_nSize)
		;

		static auto constexpr
			ByteOffset
		=	t_nOffset / ::Meta::Bit::ByteSize
		;

		static auto constexpr
			BitOffset
		=	static_cast<EOffset>(t_nOffset % ::Meta::Bit::ByteSize)
		;

		using
			reference
		=	Reference
			<	BitSize
			,	BitOffset
			>
		;

		using
			value_type
		=	typename
			reference
		::	value_type
		;

		static auto constexpr
		(	ReadWriteView
		)	(	t_tName
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	reference
		{	return
			{	i_aBuffer + ByteOffset
			};
		}

		static auto constexpr
		(	Value
		)	(	t_tName
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	value_type
		{	return
				reference
			::	BitAccess
			::	ReadField(i_aBuffer)
			;
		}
	};

	template
		<	USize
				t_nOffset
		,	USize
				t_nSize
		,	USize
				t_nExtent
		,	Meta::ProtoID
				t_tName
		>
	struct
		ArrayView
	{
		static auto constexpr
			BitSize
		=	static_cast<ESize>(t_nSize)
		;

		static auto constexpr
			ByteOffset
		=	t_nOffset / ::Meta::Bit::ByteSize
		;

		static auto constexpr
			BitOffset
		=	static_cast<EOffset>(t_nOffset % ::Meta::Bit::ByteSize)
		;

		using
			reference
		=	ArrayReference
			<	BitSize
			,	t_nExtent
			,	BitOffset
			>
		;

		using
			value_type
		=	ArrayValue<BitSize, t_nExtent>
		;

		static auto constexpr
		(	ReadWriteView
		)	(	t_tName
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	reference
		{	return
			{	i_aBuffer + ByteOffset
			};
		}

		static auto constexpr
		(	Value
		)	(	t_tName
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	value_type
		{	return
			CopyArray
			<	BitSize
			,	t_nExtent
			,	BitOffset
			>(	i_aBuffer
			+	ByteOffset
			);
		}
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tEntity
		,	Meta::ProtoID
				t_tName
		>
	struct
		ViewBase
	:	SingleView
		<	t_nOffset
		,	BitSize
			(	Type<t_tEntity>
			)
		,	t_tName
		>
	{
		static auto constexpr
			BitCount
		=	static_cast<USize>(ViewBase::BitSize)
		;
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tEntity
		,	USize
				t_nExtent
		,	Meta::ProtoID
				t_tName
		>
	struct
		ViewBase
		<	t_nOffset
		,	t_tEntity
				[	t_nExtent
				]
		,	t_tName
		>
	:	ArrayView
		<	t_nOffset
		,	BitSize
			(	Type<t_tEntity>
			)
		,	t_nExtent
		,	t_tName
		>
	{
		static auto constexpr
			BitCount
		=	static_cast<USize>(ViewBase::BitSize)
		*	t_nExtent
		;
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tEntity
		,	Meta::ProtoID
				t_tName
		>
	struct
		View
	:	ViewBase
		<	t_nOffset
		,	t_tEntity
		,	t_tName
		>
	{
		static auto constexpr
		(	ReadView
		)	(	t_tName
					i_vName
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			View::Value
			(	i_vName
			,	i_aBuffer
			);
		}

		template
			<	typename
				...	t_tpTransform
			>
		static auto constexpr
		(	OffsetOf
		)	(	t_tName
			,	Transform<t_tpTransform...>
					i_vTransform
			)
		{
			using
				tTransformed
			=	TypeEntity
				<	i_vTransform
					(	Type<t_tEntity>
					)
				//	reference only for mutable reference
				//	pure value otherwise
				-	RRef
				-	Const
				-	Volatile
				-	CopyRef
				>
			;
			return
			MemberOffset
			<	View::BitOffset
			,	tTransformed
			>{	View::ByteOffset
			};
		}
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tEntity
		,	Meta::ProtoID
				t_tName
		>
	struct
		View
		<	t_nOffset
		,	Mut<t_tEntity>
		,	t_tName
		>
	:	ViewBase
		<	t_nOffset
		,	t_tEntity
		,	t_tName
		>
	{
		static auto constexpr
		(	ReadView
		)	(	t_tName
					i_vName
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			View::ReadWriteView
			(	i_vName
			,	i_aBuffer
			);
		}

		template
			<	typename
				...	t_tpTransform
			>
		static auto constexpr
		(	OffsetOf
		)	(	t_tName
			,	Transform<t_tpTransform...>
					i_vTransform
			)
		{
			using
				tTransformed
			=	TypeEntity
				<	i_vTransform
					(	Type<t_tEntity>
					)
				//	reference for const& and &
				//	pure value otherwise
				-	RRef
				-	Const
				-	Volatile
					//	 this takes const out of const&
				+	Mutable
				-	Mutable
				>
			;
			return
			MemberOffset
			<	View::BitOffset
			,	tTransformed
			>{	View::ByteOffset
			};
		}
	};
}
