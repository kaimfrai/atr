export module ATR:Layout.BitView;

import :ID;
import :Layout.BitReference;
import :Layout.BitOffset;

import Meta.Arithmetic;

import Std;

using ::Meta::BitsPerByte;
using ::Meta::USize;

export namespace
	ATR
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
		BitViewBase
	{
		static auto constexpr
			BitSize
		=	t_nSize
		;
		using
			reference
		=	BitReference
			<	t_nOffset % BitsPerByte
			,	BitSize
			>
		;

		static auto constexpr
		(	View
		)	(	::ATR::ID<t_rpName...>
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	reference
		{	return
			{	i_aBuffer + t_nOffset / BitsPerByte
			};
		}

		static auto constexpr
		(	MoveView
		)	(	::ATR::ID<t_rpName...>
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	typename reference::FieldType
		{	return
				reference
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
		,	::Meta::BitSize
			(	::Meta::Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ConstView
		)	(	::ATR::ID<t_rpName...>
					i_vName
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			BitView::MoveView
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
		)	(	::ATR::ID<t_rpName...>
			,	::Meta::Lex::Transform<t_tpTransform...>
					i_vTransform
			)
		{
			using
				tTransformed
			=	Meta::TypeEntity
				<	i_vTransform
					(	Meta::Type<t_tEntity>
					)
				>
			;

			auto constexpr
				nByteOffset
			=	t_nOffset / ::Meta::BitsPerByte
			;
			auto constexpr
				nBitOffset
			=	t_nOffset - nByteOffset
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
				<	nBitOffset
				,	tTransformed
				>{	nByteOffset
				};
			}
			else
			{	return
				BitOffset
				<	nBitOffset
				,	::std::remove_cvref_t
					<	tTransformed
					>
				>{	nByteOffset
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
		,	::Meta::Specifier::Mutable<t_tEntity>
		,	t_rpName
			...
		>
	:	BitViewBase
		<	t_nOffset
		,	::Meta::BitSize
			(	::Meta::Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ConstView
		)	(	::ATR::ID<t_rpName...>
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
		)	(	::ATR::ID<t_rpName...>
			,	::Meta::Lex::Transform<t_tpTransform...>
					i_vTransform
			)
		{
			using
				tTransformed
			=	Meta::TypeEntity
				<	i_vTransform
					(	Meta::Type<t_tEntity>
					)
				>
			;

			auto constexpr
				nByteOffset
			=	t_nOffset / ::Meta::BitsPerByte
			;
			auto constexpr
				nBitOffset
			=	t_nOffset - nByteOffset
			;

			//	for mutable, opt into using BitReference for T const& and T&
			if	constexpr
				(	::std::is_lvalue_reference_v<tTransformed>
				)
			{	return
				BitOffset
				<	nBitOffset
				,	tTransformed
				>{	nByteOffset
				};
			}
			else
			{	return
				BitOffset
				<	nBitOffset
				,	::std::remove_cvref_t
					<	tTransformed
					>
				>{	nByteOffset
				};
			}
		}
	};
}
