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
using ::Meta::Type;
using ::Meta::TypeEntity;
using ::Meta::USize;

export namespace
	ATR::Bit
{
	using ::Meta::Specifier::Mutable;

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
		ViewBase
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
		(	Ref
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
		(	Move
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
	:	ViewBase
		<	t_nOffset
		,	BitSize
			(	Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	Const
		)	(	ID<t_rpName...>
					i_vName
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			View::Move
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
				>
			;

			//	only opt into using BitReference for T&
			if	constexpr
				(	::std::is_lvalue_reference_v<tTransformed>
				and	not
					::std::is_const_v
					<	::std::remove_reference_t
						<	tTransformed
						>
					>
				)
			{	return
				MemberOffset
				<	View::BitOffset
				,	tTransformed
				>{	View::ByteOffset
				};
			}
			else
			{	return
				MemberOffset
				<	View::BitOffset
				,	::std::remove_cvref_t
					<	tTransformed
					>
				>{	View::ByteOffset
				};
			}
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
		,	Mutable<t_tEntity>
		,	t_rpName
			...
		>
	:	ViewBase
		<	t_nOffset
		,	BitSize
			(	Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	Const
		)	(	ID<t_rpName...>
					i_vName
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			View::Ref
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
				>
			;

			//	for mutable, opt into using BitReference for T const& and T&
			if	constexpr
				(	::std::is_lvalue_reference_v<tTransformed>
				)
			{	return
				MemberOffset
				<	View::BitOffset
				,	tTransformed
				>{	View::ByteOffset
				};
			}
			else
			{	return
				MemberOffset
				<	View::BitOffset
				,	::std::remove_cvref_t
					<	tTransformed
					>
				>{	View::ByteOffset
				};
			}
		}
	};
}
