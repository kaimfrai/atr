export module ATR:Layout.Bit.MemberOffset;

import :Layout.Bit.Access;
import :Layout.Bit.Reference;

import Meta.Arithmetic;
import Meta.Token;

import Std;

using ::Meta::BitSize;
using ::Meta::Type;
using ::Meta::USize;

export namespace
	ATR::Bit
{
	template
		<	EOffset
				t_nBitOffset
		,	typename
				t_tMember
		>
	struct
		MemberOffset
	{
		using
			BitAccess
		=	::ATR::Bit::Access
			<	static_cast<ESize>
				(	BitSize
					(	Type<t_tMember>
					)
				)
			,	t_nBitOffset
			>
		;

		USize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	typename BitAccess::FieldType
		{	return
				BitAccess
			::	ReadField(i_aObject + Offset)
			;
		}

		/// immitates syntax of pointer to member dereference
		[[nodiscard]]
		friend auto constexpr
		(	operator->*
		)	(	::std::byte
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
		)	(	USize
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

	template
		<	EOffset
				t_nBitOffset
		,	typename
				t_tMember
		>
	struct
		MemberOffset
		<	t_nBitOffset
		,	t_tMember&
		>
	{
		using
			BitReference
		=	::ATR::Bit::Reference
			<	static_cast<ESize>
				(	BitSize
					(	Type<t_tMember>
					)
				)
			,	t_nBitOffset
			>
		;

		USize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	BitReference
		{	return
			{	// the underlying byte array is defined mutable
				// if the offset points to that array this is well defined
				// if not all bets are off regardless
				::std::launder
				(	const_cast
					<	::std::byte*
					>(	i_aObject
					+	Offset
					)
				)
			};
		}

		/// immitates syntax of pointer to member dereference
		[[nodiscard]]
		friend auto constexpr
		(	operator->*
		)	(	::std::byte
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
		)	(	USize
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
