export module ATR.Layout.Bit.MemberOffset;

import ATR.Layout.Bit.Array;
import ATR.Layout.Bit.Reference;
import ATR.Layout.Layout;

import Meta.Size;
import Meta.Memory.Size;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Bit.Index;
import Meta.Trait.BitSize;
import Meta.Lex.CV;
import Meta.Lex.Reference;
import Meta.Lex.Array;
import Meta.Token.Type;

import Std;

using ::Meta::Type;
using ::Meta::USize;
using ::Meta::Lex::MatchCV;
using ::Meta::Lex::MatchCVArray;
using ::Meta::Lex::MatchLRef;
using ::Meta::ByteSize;
using ::Meta::BitSize_Of;

using namespace ::Meta::Literals;

using BitOffset = ::Meta::Bit::Index<1_byte>;

export namespace
	ATR::Bit
{
	template
		<	BitOffset
		,	typename
		>
	struct
		MemberOffset
	;

	template
		<	BitOffset
				t_nBitOffset
		,	typename
				t_tData
		>
	struct
		MemberOffset
		<	t_nBitOffset
		,	MatchCV
			<	t_tData
			>
		>
	{
		using
			ResultType
		=	t_tData
		;

		ByteSize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	ResultType
		{
			auto constexpr
				vBitSize
			=	BitSize_Of
				(	MatchCV
					<	t_tData
					>{}
				)
			;
			return
			static_cast<ResultType>
			(	Reference
				<	vBitSize
				,	t_nBitOffset
				>
			::	Read
				(	i_aObject
				+	Offset
				)
			);
		}
	};

	template
		<	BitOffset
				t_nBitOffset
		,	typename
				t_tElement
		,	USize
				t_nExtent
		>
	struct
		MemberOffset
		<	t_nBitOffset
		,	MatchCVArray
			<	t_tElement
			,	t_nExtent
			>
		>
	{
		using
			ResultType
		=	ArrayValue
			<	BitSize_Of
				(	t_tElement{}
				)
			,	t_nExtent
			>
		;

		ByteSize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	ResultType
		{
			auto constexpr
				vElementBitSize
			=	BitSize_Of
				(	t_tElement{}
				)
			;
			return
			CopyArray
			(	ArrayConstReference
				<	vElementBitSize
				,	t_nExtent
				,	t_nBitOffset
				>{	i_aObject
				+	Offset
				}
			);
		}
	};

	template
		<	BitOffset
				t_nBitOffset
		,	typename
				t_tData
		>
	struct
		MemberOffset
		<	t_nBitOffset
		,	MatchLRef
			<	MatchCV
				<	t_tData
				>
			>
		>
	{
		using
			ResultType
		=	Reference
			<	BitSize_Of
				(	MatchCV
					<	t_tData
					>{}
				)
			,	t_nBitOffset
			>
		;

		ByteSize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	ResultType
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
					+	Offset
					)
				)
			;

			return
			{	aBuffer
			};
		}
	};

	template
		<	BitOffset
				t_nBitOffset
		,	typename
				t_tElement
		,	USize
				t_nExtent
		>
	struct
		MemberOffset
		<	t_nBitOffset
		,	MatchLRef
			<	MatchCVArray
				<	t_tElement
				,	t_nExtent
				>
			>
		>
	{
		using
			ResultType
		=	ArrayReference
			<	BitSize_Of
				(	t_tElement{}
				)
			,	t_nExtent
			,	t_nBitOffset
			>
		;

		ByteSize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	ResultType
		{	auto* const
				aBuffer
			=	// the underlying byte array is defined mutable
				// if the offset points to that array this is well defined
				// if not all bets are off regardless
				::std::launder
				(	const_cast
					<	::std::byte*
					>(	i_aObject
					+	Offset
					)
				)
			;
			return
			{	aBuffer
			};
		}
	};

	/// immitates syntax of pointer to member dereference
	template
		<	BitOffset
				t_nBitOffset
		,	typename
				t_tEntity
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			*	i_aObject
		,	MemberOffset<t_nBitOffset, t_tEntity>
				i_vBitOffset
		)
		noexcept
	->	decltype(auto)
	{	return
		i_vBitOffset
		(	i_aObject
		);
	}

	/// immitates syntax of pointer to member dereference
	template
		<	typename
				t_tLayout
		,	BitOffset
				t_nBitOffset
		,	typename
				t_tEntity
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	t_tLayout const
			*	i_aObject
		,	MemberOffset<t_nBitOffset, t_tEntity>
				i_vBitOffset
		)
		noexcept
	->	typename MemberOffset<t_nBitOffset, t_tEntity>::ResultType
	{
		if	constexpr
			(	requires
				{	i_aObject->Buffer;
				}
			)
		{	return
			i_vBitOffset
			(	+i_aObject->Buffer
			);
		}
		else
		{	static_assert
			(	ValidateOffsets
				<	t_tLayout
				>()
			,	"Misconfigured layout offsets!"
			);

			return
				&i_aObject->SouthArea
			->*	MemberOffset<t_nBitOffset, t_tEntity>
				{	i_vBitOffset.Offset
				-	ByteSize_Of
					(	Type
						<	typename
								t_tLayout
							::	NorthType
						>
					)
				}
			;
		}
	}
}
