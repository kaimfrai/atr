export module ATR.Member.Finalize;

import ATR.Member.Alias;
import ATR.Member.Layout;
import ATR.Member.NamedInfo;
import ATR.Member.Compare.Name;
import ATR.Member.Compare.GreaterName;

import Meta.Token.TypeID;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;

import Std;

using ::Meta::TypeID;
using ::Meta::BitSize;

namespace
	ATR::Member
{
	auto constexpr
	(	SetLayout
	)	(	NamedInfoView
				i_rMemberView
		,	LayoutView
				i_rLayoutView
		)
		noexcept
	->	void
	{
		::std::transform
		(	i_rMemberView
			.	begin
				()
		,	i_rMemberView
			.	end
				()
		,	i_rLayoutView
			.	begin
				()
		,	[]	(	NamedInfo const
					&	i_rName
				)
			{	return
					i_rName
					.	Info
					.	Type
				;
			}
		);
	}

	auto constexpr
	(	SetOffsets
	)	(	NamedInfoView
				i_rMemberView
		)
		noexcept
	->	void
	{
		BitSize
			vOffset
		{};

		for	(	auto
				&	rMember
			:	i_rMemberView
			)
		{
			rMember
			.	Info
			.	Offset
			=	vOffset
			;

			vOffset
			+=	rMember
				.	Info
				.	Type
				.	GetSize
					()
			;
		}
	}

	auto constexpr
	(	SortMembers
	)	(	NamedInfoView
				i_rMemberView
		)
		noexcept
	->	void
	{
		::std::sort
		(	i_rMemberView
			.	begin
				()
		,	i_rMemberView
			.	end
				()
		,	Compare::Name
			{}
		);
	}

	auto constexpr
	(	ResolveAliases
	)	(	NamedInfoView
				i_rMemberView
		,	AliasView
				i_rAliasView
		)
		noexcept
	->	void
	{
		auto const
			fAssignInfo
		=	[	i_rMemberView
			]	(	Alias
					&	o_rAlias
				)
			{
				auto const
					aMember
				=	::std::lower_bound
					(	i_rMemberView
						.	begin
							()
					,	i_rMemberView
						.	end
							()
					,	o_rAlias
						.	Target
					,	Compare::Name
						{}
					)
				;

				o_rAlias
				.	Info
				=	aMember
					->	Info
				;
			}
		;

		::std::for_each
		(	i_rAliasView
			.	begin
				()
		,	i_rAliasView
			.	end
				()
		,	fAssignInfo
		);
	}

	auto constexpr
	(	MergeMembers
	)	(	NamedInfoView
				i_rMemberView
		,	AliasView
				i_rAliasView
		)
		noexcept
	->	void
	{
		::std::merge
		(	i_rMemberView
			.	rbegin
				()
		,	i_rMemberView
			.	rend
				()
		,	i_rAliasView
			.	rbegin
				()
		,	i_rAliasView
			.	rend
				()
		,	::std::prev
			(	i_rMemberView
				.	rbegin
					()
			,	ssize
				(	i_rAliasView
				)
			)
		,	Compare::GreaterName
			{}
		);
	}

	export auto constexpr
	(	Finalize
	)	(	NamedInfoView
				i_rMemberView
		,	AliasView
				i_rAliasView
		,	LayoutView
				i_rLayoutView
		)
		noexcept
	->	void
	{
		SetLayout
		(	i_rMemberView
		,	i_rLayoutView
		);

		SetOffsets
		(	i_rMemberView
		);

		SortMembers
		(	i_rMemberView
		);

		ResolveAliases
		(	i_rMemberView
		,	i_rAliasView
		);

		MergeMembers
		(	i_rMemberView
		,	i_rAliasView
		);
	}
}
