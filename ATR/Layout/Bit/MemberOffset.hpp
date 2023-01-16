export module ATR:Layout.Bit.MemberOffset;

import :Layout.Bit.Access;
import :Layout.Bit.Array;
import :Layout.Bit.Reference;

import Meta.Size;
import Meta.Predicate;
import Meta.Token.Query;
import Meta.Memory.Size;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Bit.Index;
import Meta.Token.Reference;
import Meta.Token.Type;
import Meta.Token.Specifier;

import Std;

using ::Meta::LRef;
using ::Meta::Type;
using ::Meta::USize;

using namespace ::Meta::Literals;

export namespace
	ATR::Bit
{
	template
		<	::Meta::Bit::Index<1_byte>
				t_nBitOffset
		,	typename
				t_tMember
		>
	struct
		MemberOffset
	{
		static_assert
		(	not
			::std::is_const_v<t_tMember>
		,	"Prefer pure value types to const value types!"
		);

		static_assert
		(	not
			::std::is_volatile_v<t_tMember>
		,	"Prefer pure value types to volatile value types!"
		);

		static_assert
		(	requires{	sizeof(t_tMember);	}
		,	"Types without size not supported!"
		);

		static_assert
		(	not
			::Meta::IsTypePack_Of<::Meta::Specifier::Mut>
			(	Type<t_tMember>
			)
		,	"Prefer pure value types to mutable value types!"
		);

		static_assert
		(	not
			::std::is_rvalue_reference_v<t_tMember>
		,	"Prefer pure value types to rvalue references!"
		);

		static_assert
		(	not
			::std::is_const_v
			<	::std::remove_reference_t<t_tMember>
			>
		,	"Prefer pure value types to const lvalue references!"
		);

		::Meta::ByteSize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	decltype(auto)
		{
				i_aObject
			+=	Offset
			;

			using namespace ATR::Bit;

			auto constexpr
				vBitSize
			=	::Meta::BitSize_Of
				(	Type<t_tMember>
				-	LRef
				)
			;

			if	constexpr
				(	::std::is_reference_v
					<	t_tMember
					>
				)
			{
				auto* const
					aBuffer
				=	// the underlying byte array is defined mutable
					// if the offset points to that array this is well defined
					// if not all bets are off regardless
					::std::launder
					(	const_cast
						<	::std::byte*
						>(	i_aObject
						)
					)
				;

				if	constexpr
					(	using
							tArray
						=	::std::remove_reference_t
							<	t_tMember
							>
					;	::std::is_bounded_array_v
						<	tArray
						>
					)
				{
					auto constexpr nExtent = ::std::extent_v<tArray>;
					auto constexpr vElementBitSize = vBitSize / nExtent;
					return
					ArrayReference
					<	vElementBitSize
					,	nExtent
					,	t_nBitOffset
					>{	aBuffer
					};
				}
				else
				{	return
					Reference
					<	vBitSize
					,	t_nBitOffset
					>{	aBuffer
					};
				}
			}
			else
			if	constexpr
				(	::std::is_bounded_array_v
					<	t_tMember
					>
				)
			{
				auto constexpr nExtent = ::std::extent_v<t_tMember>;
				auto constexpr vElementBitSize = vBitSize / nExtent;
				return
				CopyArray
				(	ArrayConstReference
					<	vElementBitSize
					,	nExtent
					,	t_nBitOffset
					>{	i_aObject
					}
				);
			}
			else
			{	return
					Reference
					<	vBitSize
					,	t_nBitOffset
					>
				::	Read
					(	i_aObject
					)
				;
			}
		}

		/// immitates syntax of pointer to member dereference
		[[nodiscard]]
		friend auto constexpr
		(	operator->*
		)	(	::std::byte const
				*	i_aObject
			,	MemberOffset
					i_vBitOffset
			)
			noexcept
		->	decltype(auto)
		{	return
			i_vBitOffset
			(	i_aObject
			);
		}


		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	::Meta::ByteSize
					i_nOffset
			,	MemberOffset
					i_vMember
			)
		->	MemberOffset
		{	return
			{	i_nOffset
			+	i_vMember.Offset
			};
		}
	};
}
