export module ATR.Member.ConfigData;

import ATR.Member.AlignBuffer;
import ATR.Member.Info;
import ATR.Member.NamedInfo;
import ATR.Member.Ordered;

import Meta.Memory.Size;
import Meta.Size;
import Meta.String.Chain;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
using ::Meta::SSize;
using ::Meta::String::Chain;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		ConfigData
	{
		BitSize
			Size
		{};

		AlignBuffer<TypeID>
			Layout
		{};

		NamedInfoBuffer
			NamedInfoList
		{};

		[[nodiscard]]
		auto constexpr
		(	FindMemberInfo
		)	(	Chain
					i_rMemberName
			)	const
			noexcept
		->	::std::optional
			<	Info
			>
		{
			auto const
				aNamePosition
			=	::ATR::Member::lower_bound
				(	NamedInfoList
				,	i_rMemberName
				)
			;

			if	(	(	aNamePosition
					==	NamedInfoList
						.	end
							()
					)
				or	(	aNamePosition
						->	Name
					!=	i_rMemberName
					)
				)
			{
				return
					::std::nullopt
				;
			}
			return
				aNamePosition
				->	Info
			;
		}

		[[nodiscard]]
		auto constexpr
		(	GetMemberOffset
		)	(	Chain
					i_rMemberName
			)	const
			noexcept
		->	BitSize
		{
			if	(	auto
						vMemberInfo
					=	FindMemberInfo
						(	i_rMemberName
						)
				;	vMemberInfo
					.	has_value
						()
				)
			{
				return
					vMemberInfo
					.	value
						()
					.	Offset
				;
			}

			::std::unreachable
			();
		}
	};
}
