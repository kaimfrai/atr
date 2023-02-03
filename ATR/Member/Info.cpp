export module ATR.Member.Info;

import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Trait.BitSize;
import Meta.Token.Type;
import Meta.Token.Type.Compare;
import Meta.ID.StringView;
import Meta.Size;

import Std;

using ::Meta::TypeToken;
using ::Meta::BitSize;
using ::Meta::BitSize_Of;
using ::Meta::StringView;
using ::Meta::TypeID;
using ::Meta::USize;

export namespace
	ATR::Member
{
	struct
		TypeInfo
	{
		BitSize Size;
		TypeID Type;

		explicit(false) constexpr
		(	TypeInfo
		)	()
			noexcept
		=	default;

		template
			<	typename
					t_tEntity
			>
		explicit(false) constexpr
		(	TypeInfo
		)	(	TypeToken
				<	t_tEntity
				>	i_vType
			)
		:	Size
			{	BitSize_Of
				(	i_vType
				)
			}
		,	Type
			{	i_vType.operator TypeID()
			}
		{}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator TypeID
		)	()	const
			noexcept
		{	return
				Type
			;
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator =
		)	(	TypeToken
				<	t_tEntity
				>	i_vType
			)	&
			noexcept
		->	TypeInfo&
		{
			Size = BitSize_Of(i_vType);
			Type = i_vType;
			return
				*this
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	TypeInfo const&
			,	TypeInfo const&
			)
			noexcept
		=	default;
	};

	struct
		Info final
	{
		USize SortKey;
		StringView Name;
		TypeInfo Type;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	Info const&
			,	Info const&
			)
			noexcept
		=	default;
	};
}
