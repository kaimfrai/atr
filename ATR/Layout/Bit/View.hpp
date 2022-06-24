export module ATR:Layout.Bit.View;

import :ID;
import :Layout.Bit.Access;
import :Layout.Bit.MemberOffset;
import :Layout.Bit.Reference;

import Meta.Arithmetic;

import Std;

using ::Meta::BitSize;
using ::Meta::BitsPerByte;
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
		,	char const
			&
			...	t_rpName
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
		=	t_nOffset / BitsPerByte
		;

		static auto constexpr
			BitOffset
		=	static_cast<EOffset>(t_nOffset % BitsPerByte)
		;

		using
			reference
		=	Reference
			<	BitSize
			,	BitOffset
			>
		;
		using
			BitAccess
		=	typename
			reference
		::	BitAccess
		;

		static auto constexpr
		(	ReadWriteView
		)	(	ID<t_rpName...>
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
		)	(	ID<t_rpName...>
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	typename reference::FieldType
		{	return
				BitAccess
			::	ReadField(i_aBuffer)
			;
		}
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tEntity
		,	char const
			&
			...	t_rpName
		>
	struct
		View
	:	SingleView
		<	t_nOffset
		,	BitSize
			(	Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ReadView
		)	(	ID<t_rpName...>
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
		)	(	ID<t_rpName...>
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
		,	char const
			&
			...	t_rpName
		>
	struct
		View
		<	t_nOffset
		,	Mut<t_tEntity>
		,	t_rpName
			...
		>
	:	SingleView
		<	t_nOffset
		,	BitSize
			(	Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ReadView
		)	(	ID<t_rpName...>
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
		)	(	ID<t_rpName...>
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
