export module ATR.Member.ConfigData;

import ATR.Member.Info;
import ATR.Member.LayoutBuffer;
import ATR.Member.NamedInfo;
import ATR.Member.Ordered;

import Meta.String.Chain;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Size;

import Std;

using ::Meta::String::Chain;
using ::Meta::BitSize;
using ::Meta::SSize;

export namespace
	ATR::Member
{
	struct
		ConfigData
	{
		BitSize
			Size
		{};

		LayoutBuffer
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

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
		)	(	ConfigData const
				&
			,	ConfigData const
				&
			)
			noexcept
		=	default;
	};
}
