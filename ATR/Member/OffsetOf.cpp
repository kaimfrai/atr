export module ATR.Member.OffsetOf;

import ATR.Member.Info;
import ATR.Member.View;
import ATR.Layout.Static;
import ATR.Layout.Bit.MemberOffset;
import ATR.Layout.MemberOffset;

import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Cast;
import Meta.ID.StringView;
import Meta.ID.Concept;
import Meta.Token.Type;
import Meta.Token.LRef;
import Meta.Token.CV;
import Meta.Token.Reference;
import Meta.Token.CopyRef;
import Meta.Trait.BitAlign;
import Meta.Memory.Size.Compare;
import Meta.Lex.Tokenizer;

import Std;

using ::Meta::StringView;
using ::Meta::ProtoID;
using ::Meta::CopyRef;
using ::Meta::LRef;
using ::Meta::CV;
using ::Meta::Reference;

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

	[[nodiscard]]
	auto constexpr
	(	ComputeErasedOffset
	)	(	DataView
				i_vView
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
			:	i_vView
			)
		{
			if	(	i_rInfo.Name
				==	i_vName
				)
			{	(	vOffset.Type
				=	i_rInfo.Type.Type
				);
				return
					vOffset
				;
			}
			else
			{	(	vOffset.Offset
				+=	i_rInfo.Type.Size
				);
			}
		}

		::std::unreachable();
	}

	[[nodiscard]]
	auto constexpr
	(	ComputeErasedOffset
	)	(	AliasView
				i_vView
		,	StringView
				i_vName
		)
	->	ErasedOffset
	{
		auto const
			aEntry
		=	::std::ranges::lower_bound
			(	i_vView.AliasInfos
			,	i_vName
			,	{}
			,	&AliasInfo::Name
			)
		;
		if	(	(	aEntry
				!=	i_vView.AliasInfos.end()
				)
			and (	aEntry->Name
				==	i_vName
				)
			)
		{
			return
			ComputeErasedOffset
			(	i_vView
			,	aEntry->Target
			);
		}
		else
		{	return
			ComputeErasedOffset
			(	i_vView.DataInfos
			,	i_vName
			);
		}
	}

	template
		<	::Meta::BitSize
				t_vOffset
		,	typename
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
	(	ComputeMemberOffset
	)	(	::Meta::TypeToken<t_tMember>
				i_vMemberType
		)
		noexcept
	{
		auto constexpr
			vBitAlign
		=	Meta::BitAlign_Of
			(	i_vMemberType
			-	Reference
			)
		;
		if	constexpr
			(	vBitAlign
			==	0_bit
			)
		{	return
			StaticMember
			<	Meta::TypeEntity
				<	i_vMemberType
				-	Reference
				-	CV
				>
			>{};
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
				(	t_vOffset
				)
			;
			return
			Bit::MemberOffset
			<	vByteSize.Remainder
			,	decltype
				(	::Meta::Tokenize
					(	i_vMemberType
					//	reference only for &
					//	pure value otherwise
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
					(	i_vMemberType
					)
				)
			>{	t_vOffset
			};
		}
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
		,	auto
			...	t_vpQualifer
		)
		noexcept
	{
		auto constexpr
			vErasedOffset
		=	ComputeErasedOffset
			(	t_tOwner
			::	MemberList
			,	i_vName.StringView
			)
		;
		return
		ComputeMemberOffset<vErasedOffset.Offset>
		(	(	Meta::RestoreTypeToken
				<	vErasedOffset.Type
				>
			+	...
			+	t_vpQualifer
			)
		-	CV
		);
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
		,	Meta::TypeToken<t_tOwner&>
		)
		noexcept
	{	return
		OffsetOf
		(	i_vName
		,	Meta::Type<t_tOwner>
		,	LRef
		);
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
		,	Meta::TypeToken<t_tOwner const&>
		)
		noexcept
	{	return
		OffsetOf
		(	i_vName
		,	Meta::Type<t_tOwner>
		,	CopyRef
		);
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
		,	Meta::TypeToken<t_tOwner&&>
		)
		noexcept
	{	return
		OffsetOf
		(	i_vName
		,	Meta::Type<t_tOwner>
		);
	}
}
