export module ATR:Layout.Bit.View;

import :Layout.Bit.Access;
import :Layout.Bit.Array;
import :Layout.Bit.MemberOffset;
import :Layout.Bit.Reference;

import Meta.ID.Concept;
import Meta.Memory.Size;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Bit.Index;
import Meta.Token.Query;
import Meta.Token.Reference;
import Meta.Token.Specifier;
import Meta.Token.CV;
import Meta.Token.Type;
import Meta.Lex.Transform;

import Meta.Size;

import Std;

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

using namespace ::Meta::Literals;

export namespace
	ATR::Bit
{
	template
		<	::Meta::BitSize
				t_nOffset
		,	::Meta::BitSize
				t_nSize
		,	Meta::ProtoID
				t_tName
		>
	struct
		SingleView
	{
		static auto constexpr
			BitSize
		=	t_nSize
		;

		static auto constexpr
			ByteOffset
		=	SizeCast<::Meta::ByteSize>
			(	t_nOffset
			)
		.	Quotient
		;

		static auto constexpr
			BitOffset
		=	SizeCast<::Meta::ByteSize>
			(	t_nOffset
			)
		.	Remainder
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
			{	i_aBuffer
			+	ByteOffset
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
			::	Read
				(	i_aBuffer
				+	ByteOffset
				)
			;
		}
	};

	template
		<	::Meta::BitSize
				t_nOffset
		,	::Meta::BitSize
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
		=	t_nSize
		;

		static auto constexpr
			ByteOffset
		=	SizeCast<::Meta::ByteSize>
			(	t_nOffset
			)
		.	Quotient
		;

		static auto constexpr
			BitOffset
		=	SizeCast<::Meta::ByteSize>
			(	t_nOffset
			)
		.	Remainder
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
		=	ArrayValue
			<	BitSize
			,	t_nExtent
			>
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
			{	i_aBuffer
			+	ByteOffset
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
			(	ArrayConstReference
				<	BitSize
				,	t_nExtent
				,	BitOffset
				>{	i_aBuffer
				+	ByteOffset
				}
			);
		}
	};

	template
		<	::Meta::BitSize
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
		,	::Meta::BitSize_Of
			(	Type<t_tEntity>
			)
		,	t_tName
		>
	{};

	template
		<	::Meta::BitSize
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
		,	::Meta::BitSize_Of
			(	Type<t_tEntity>
			)
		,	t_nExtent
		,	t_tName
		>
	{
		static auto constexpr
			BitSize
		=	Meta::BitSize_Of
			(	Type<t_tEntity>
			)
		*	t_nExtent
		;
	};

	template
		<	::Meta::BitSize
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
		<	::Meta::BitSize
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
