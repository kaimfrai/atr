export module ATR:Layout.MemberOffset;

export import :Erase;

export import Meta.Arithmetic;
export import Meta.Predicate;

import std;

using ::Meta::Const;
using ::Meta::LRef;
using ::Meta::Type;
using ::Meta::TypeEntity;
using ::Meta::USize;

export namespace
	ATR
{
	template
		<	typename
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

		using
			ValueType
		=	::std::remove_reference_t
			<	t_tMember
			>
		;
		//	byte const for values
		//	byte for value&
		//	byte const for value const&
		using
			ByteType
		=	TypeEntity
			<	Type<::std::byte>
			+	Const
			-	LRef
			>
		;

		USize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	ByteType
				*	i_aObject
			)	const
			noexcept
		->	t_tMember
		{	return
			*
			//	we don't know where the byte pointer came from, so we need to launder it
			::std::launder
			(	PointerCast<ValueType>
				(	i_aObject
				+	Offset
				)
			);
		}

		/// immitates syntax of pointer to member dereference
		[[nodiscard]]
		friend auto constexpr
		(	operator->*
		)	(	ByteType
				*	i_aObject
			,	MemberOffset
					i_vMemberOffset
			)
			noexcept
		->	t_tMember
		{	return
			i_vMemberOffset
			(	i_aObject
			);
		}

		friend auto constexpr
		(	operator +
		)	(	USize
					i_nOffset
			,	MemberOffset
					i_vMemberOffset
			)
		->	MemberOffset
		{	return
			{	i_nOffset
			+	i_vMemberOffset.Offset
			};
		}
	};
}
