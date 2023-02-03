export module ATR.Member.OffsetOf;

import ATR.Member.List;

import ATR.Layout.Static;
import ATR.Layout.Bit.MemberOffset;
import ATR.Layout.MemberOffset;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Cast;
import Meta.ID.StringView;
import Meta.ID.Concept;
import Meta.Token.Type;
import Meta.Token.RRef;
import Meta.Token.Reference;
import Meta.Token.CopyRef;
import Meta.Token.Const;
import Meta.Token.Volatile;
import Meta.Trait.BitAlign;
import Meta.Memory.Size.Compare;
import Meta.Lex.TransformComposer;
import Meta.Lex.Tokenizer;

using ::Meta::StringView;
using ::Meta::ProtoID;
using ::Meta::Const;
using ::Meta::CopyRef;
using ::Meta::RRef;
using ::Meta::Reference;
using ::Meta::Volatile;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	struct
		ErasedOffset
	{
		::Meta::BitSize
			Offset
		;
		::Meta::TypeID
			Type
		;
	};

	template
		<	auto
				t_nCount
		>
	[[nodiscard]]
	auto constexpr
	(	OffsetOf
	)	(	List<t_nCount> const
			&	i_rList
		,	StringView
				i_vName
		)
		noexcept
	->	ErasedOffset
	{
		ErasedOffset
			vOffset
		{};

		for	(	auto const
				&	i_rInfo
			:	i_rList
			)
		{
			if	(i_rInfo.Name == i_vName)
			{
				vOffset.Type = i_rInfo.Type.Type;
				break;
			}
			else
			{
				(	vOffset.Offset
				+=	i_rInfo.Type.Size
				);
			}
		}
		return
			vOffset
		;
	}

	template
		<	typename
				t_tOwner
		>
	[[nodiscard]]
	auto constexpr
	(	OffsetOf
	)	(	ProtoID auto
				i_vName
		,	Meta::TypeToken<t_tOwner>
				i_vOwner
		)
		noexcept
	{
		auto constexpr
			fOwnerTransform
		=	Meta::ComposeTransform
			(	i_vOwner
			)
		;
		auto constexpr
			vErasedOffset
		=	OffsetOf
			(	Meta::TypeEntity<i_vOwner - Reference>
			::	MemberList
			,	Meta::TypeEntity<i_vOwner - Reference>
			::	ResolveAlias
				(	i_vName.StringView
				)
			)
		;

		auto constexpr
			vType
		=	Meta::RestoreTypeToken
			<	vErasedOffset.Type
			>
		;
		auto constexpr
			vBitAlign
		=	Meta::BitAlign_Of
			(	vType
			)
		;

		if	constexpr
			(	vBitAlign
			==	0_bit
			)
		{	return
				StaticMember
				<	Meta::TypeEntity
					<	vType
					>
				>{}
			;
		}
		else
		if	constexpr
			(	vBitAlign
			==	1_bit
			)
		{
			auto constexpr
				vByteSize
			=	SizeCast<::Meta::ByteSize>
				(	vErasedOffset.Offset
				)
			;
			return
			Bit::MemberOffset
			<	vByteSize.Remainder
			,	decltype
				(	::Meta::Tokenize
					(	fOwnerTransform
						(	vType
						)
					//	reference only for &
					//	pure value otherwise
					-	RRef
					-	Const
					-	Volatile
					-	CopyRef
					)
				)
			>{	vByteSize.Quotient
			};
		}
		else
		{	return
			MemberOffset
			<	decltype
				(	Meta::Tokenize
					(	fOwnerTransform
						(	vType
						)
					-	RRef
					-	Const
					-	Volatile
					)
				)
			>{	vErasedOffset.Offset
			};
		}
	}
}
