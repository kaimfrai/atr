export module ATR:Layout.Bit.MemberOffset;

import :Layout.Bit.Access;
import :Layout.Bit.Reference;

import Meta.Arithmetic;
import Meta.Predicate;
import Meta.Token;

import Std;

using ::Meta::BitSize;
using ::Meta::LRef;
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
		->	decltype(auto)
		{
			using namespace ATR::Bit;

			auto constexpr
				vBitSize
			=	static_cast<ESize>
				(	BitSize
					(	Type<t_tMember>
					-	LRef
					)
				)
			;

			if	constexpr
				(	::std::is_reference_v
					<	t_tMember
					>
				)
				return
				Reference
				<	vBitSize
				,	t_nBitOffset
				>{	// the underlying byte array is defined mutable
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
			else
				return
					Access
					<	vBitSize
					,	t_nBitOffset
					>
				::	ReadField
					(	i_aObject
					+	Offset
					)
				;
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