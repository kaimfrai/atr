export module ATR:Layout.BitOffset;

import :Layout.BitAccess;
import :Layout.BitReference;

import Meta.Arithmetic;
import Meta.Token;

import Std;

using ::Meta::BitSize;
using ::Meta::Type;
using ::Meta::USize;

export namespace
	ATR
{
	template
		<	EBitFieldOffset
				t_nBitOffset
		,	typename
				t_tMember
		>
	struct
		BitOffset
	{
		using
			BitAccess
		=	::ATR::BitAccess
			<	static_cast<EBitFieldSize>
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
			,	BitOffset
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
			,	BitOffset
					i_vMember
			)
		->	BitOffset
		{	return
			{	i_nOffset
			+	i_vMember.Offset
			};
		}
	};

	template
		<	EBitFieldOffset
				t_nBitOffset
		,	typename
				t_tMember
		>
	struct
		BitOffset
		<	t_nBitOffset
		,	t_tMember&
		>
	{
		using
			BitReference
		=	::ATR::BitReference
			<	static_cast<EBitFieldSize>
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
			,	BitOffset
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
			,	BitOffset
					i_vMember
			)
		->	BitOffset
		{	return
			{	i_nOffset
			+	i_vMember.Offset
			};
		}
	};
}
