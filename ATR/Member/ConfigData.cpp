export module ATR.Member.ConfigData;

import ATR.Member.Info;
import ATR.Member.LayoutBuffer;
import ATR.Member.NamedInfo;
import ATR.Member.Ordered;

import Meta.String.StringChain;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Size;

import Std;

using ::Meta::StringChain;
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
		(	MemberCount
		)	()	const
			noexcept
		->	SSize
		{	return
			::std::accumulate
			(	Layout
				.	begin
					()
			,	Layout
				.	end
					()
			,	0z
			,	[]	(	SSize
							i_vCurrent
					,	auto const
						&	i_rBuffer
					)
				{	return
						i_vCurrent
					+	i_rBuffer
						.	Count
					;
				}
			);
		}

		[[nodiscard]]
		auto constexpr
		(	NameCount
		)	()	const
			noexcept
		->	SSize
		{	return
			NamedInfoList
			.	Count
			;
		}

		[[nodiscard]]
		auto constexpr
		(	AliasCount
		)	()	const
			noexcept
		->	SSize
		{	return
				NameCount
				()
			-	MemberCount
				()
			;
		}

		[[nodiscard]]
		auto constexpr
		(	NamedInfoView
		)	()	const&
			noexcept
		->	decltype(auto)
		{	return
			(	NamedInfoList
			);
		}

		[[nodiscard]]
		auto constexpr
		(	FindMemberInfo
		)	(	StringChain
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
		)	(	StringChain
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
