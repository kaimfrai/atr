export module ATR:Layout.BitView;

import :ID;
import :Layout.BitAccess;
import :Layout.BitReference;
import :Layout.BitOffset;

import Meta.Arithmetic;

import Std;

using ::Meta::BitSize;
using ::Meta::BitsPerByte;
using ::Meta::Lex::Transform;
using ::Meta::Type;
using ::Meta::TypeEntity;
using ::Meta::USize;

export namespace
	ATR
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
		BitViewBase
	{
		static auto constexpr
			BitSize
		=	static_cast<EBitFieldSize>(t_nSize)
		;

		static auto constexpr
			ByteOffset
		=	t_nOffset / BitsPerByte
		;

		static auto constexpr
			BitOffset
		=	static_cast<EBitFieldOffset>(t_nOffset % BitsPerByte)
		;

		using
			reference
		=	BitReference
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
		(	View
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
		BitView
	:	BitViewBase
		<	t_nOffset
		,	BitSize
			(	Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ConstView
		)	(	ID<t_rpName...>
					i_vName
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			BitView::Move
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
				BitOffset
				<	BitView::BitOffset
				,	tTransformed
				>{	BitView::ByteOffset
				};
			}
			else
			{	return
				BitOffset
				<	BitView::BitOffset
				,	::std::remove_cvref_t
					<	tTransformed
					>
				>{	BitView::ByteOffset
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
		BitView
		<	t_nOffset
		,	Mutable<t_tEntity>
		,	t_rpName
			...
		>
	:	BitViewBase
		<	t_nOffset
		,	BitSize
			(	Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ConstView
		)	(	ID<t_rpName...>
					i_vName
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			BitView::View
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
				BitOffset
				<	BitView::BitOffset
				,	tTransformed
				>{	BitView::ByteOffset
				};
			}
			else
			{	return
				BitOffset
				<	BitView::BitOffset
				,	::std::remove_cvref_t
					<	tTransformed
					>
				>{	BitView::ByteOffset
				};
			}
		}
	};
}
