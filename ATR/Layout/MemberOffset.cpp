export module ATR.Layout.MemberOffset;

import ATR.Erase;

import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Lex.Reference;
import Meta.Lex.CV;
import Meta.Token.Type;

import Std;

using ::Meta::Type;
using ::Meta::TypeEntity;

export namespace
	ATR
{
	template
		<	typename
		>
	struct
		MemberOffset
	;

	template
		<	typename
				t_tData
		>
	struct
		MemberOffset
		<	::Meta::Lex::MatchCV
			<	t_tData
			>
		>
	{
		::Meta::ByteSize
			Offset
		;

		using
			ByteType
		=	::std::byte const
		;
		using
			ValueType
		=	typename
				::Meta::Lex::MatchCV
				<	t_tData
				>
			::	Entity
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	ByteType
				*	i_aObject
			)	const
			noexcept
		->	ValueType
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
	};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	struct
		MemberOffset
		<	::Meta::Lex::MatchLRef
			<	::Meta::Lex::MatchCV
				<	t_tData
				,	t_tpQualifier
					...
				>
			>
		>
	{
		::Meta::ByteSize
			Offset
		;

		using
			ValueType
		=	typename
				::Meta::Lex::MatchCV
				<	t_tData
				,	t_tpQualifier
					...
				>
			::	Entity
		;

		using
			ByteType
		=	//	byte for value&
			//	byte const for value const&
			TypeEntity
			<	(	Type<::std::byte>
				+	...
				+	t_tpQualifier{}
				)
			>
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	ByteType
				*	i_aObject
			)	const
			noexcept
		->	ValueType&
		{	return
			*
			//	we don't know where the byte pointer came from, so we need to launder it
			::std::launder
			(	PointerCast
				<	ValueType
				>(	i_aObject
				+	Offset
				)
			);
		}
	};

	/// immitates syntax of pointer to member dereference
	template
		<	typename
				t_tEntity
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	typename MemberOffset<t_tEntity>::ByteType
			*	i_aObject
		,	MemberOffset<t_tEntity>
				i_vMemberOffset
		)
		noexcept
	->	decltype(auto)
	{	return
		i_vMemberOffset
		(	i_aObject
		);
	}

	template
		<	typename
				t_tEntity
		>
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	::Meta::ByteSize
				i_nOffset
		,	MemberOffset<t_tEntity>
				i_vMemberOffset
		)
		noexcept
	->	MemberOffset<t_tEntity>
	{	return
		{	i_nOffset
		+	i_vMemberOffset.Offset
		};
	}
}
