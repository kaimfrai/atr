export module ATR.Member.ConfigData;

import ATR.Member.Info;
import ATR.Member.Name;
import ATR.Member.Layout;
import ATR.Member.NamedInfo;
import ATR.Member.Compare.GreaterAlign;
import ATR.Member.Compare.Name;

import Meta.Token.TypeID;
import Meta.Memory.Size;
import Meta.Memory.Alignment;
import Meta.Size;

import Std;

using namespace ::Meta::Literals;

using ::Meta::BitSize;
using ::Meta::TypeID;
using ::Meta::USize;

export namespace
	ATR::Member
{
	struct
		ConfigData
	{
		LayoutBuffer
			LayoutList
		{};

		NamedInfoBuffer
			NamedInfoList
		{};

		USize
			MemberCount
		;

		USize
			AliasCount
		;

		[[nodiscard]]
		auto constexpr
		(	GetTypeView
		)	()	const&
			noexcept
		->	::std::span
			<	TypeID const
			>
		{	return
			{	begin
				(	LayoutList
				)
			,	MemberCount
			};
		}

		[[nodiscard]]
		auto constexpr
		(	GetNameView
		)	()	const&
			noexcept
		->	::std::span
			<	NamedInfo const
			>
		{	return
			{	::std::begin
				(	NamedInfoList
				)
			,	(	MemberCount
				+	AliasCount
				)
			};
		}

		[[nodiscard]]
		auto constexpr
		(	GetDynamicCount
		)	()	const
			noexcept
		->	USize
		{
			auto const
				rTypeView
			=	GetTypeView
				()
			;

			auto const
				aFirstStatic
			=	::std::lower_bound
				(	rTypeView
					.	begin
						()
				,	rTypeView
					.	end
						()
				,	0_align
				,	Compare::GreaterAlign
					{}
				)
			;
			return
			static_cast<USize>
			(	::std::distance
				(	rTypeView
					.	begin
						()
				,	aFirstStatic
				)
			);
		}

		[[nodiscard]]
		auto constexpr
		(	FindMemberInfo
		)	(	NameView
					i_rMemberName
			)	const
			noexcept
		->	::std::optional
			<	Info
			>
		{
			auto const
				rNameView
			=	GetNameView
				()
			;
			auto const
				aNamePosition
			=	::std::lower_bound
				(	rNameView
					.	begin
						()
				,	rNameView
					.	end
						()
				,	i_rMemberName
				,	Compare::Name
					{}
				)
			;
			if	(	(	aNamePosition
					==	rNameView
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
		)	(	NameView
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
