export module ATR.Member.Contains;

import ATR.Member.Info;
import ATR.Member.View;

import Meta.ID.StringView;

import Std;

using ::Meta::StringView;

export namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr
	(	Contains
	)	(	DataView
				i_vView
		,	StringView
				i_vName
		)
		noexcept
	->	bool
	{	return
		::std::any_of
		(	i_vView.begin()
		,	i_vView.end()
		,	[	i_vName
			]	(	Info const
					&	i_rInfo
				)
			{	return
					i_rInfo.Name
				==	i_vName
				;
			}
		);
	}

	[[nodiscard]]
	auto constexpr
	(	ContainsDynamic
	)	(	DataView
				i_vView
		,	StringView
				i_vName
		)
		noexcept
	->	bool
	{	return
		Contains
		(	DynamicView
			(	i_vView
			)
		,	i_vName
		);
	}

	[[nodiscard]]
	auto constexpr
	(	ContainsStatic
	)	(	DataView
				i_vView
		,	StringView
				i_vName
		)
		noexcept
	->	bool
	{	return
		Contains
		(	StaticView
			(	i_vView
			)
		,	i_vName
		);
	}

	[[nodiscard]]
	auto constexpr
	(	Contains
	)	(	AliasView
				i_vView
		,	StringView
				i_vName
		)
		noexcept
	->	bool
	{
		auto const
			aAliasEnd
		=	i_vView.AliasInfos.end()
		;
		auto const
			aAliasPosition
		=	::std::ranges::lower_bound
			(	i_vView.AliasInfos
			,	i_vName
			,	{}
			,	&AliasInfo::Name
			)
		;

		return
			(	(	aAliasPosition
				!=	aAliasEnd
				)
			and	(	aAliasPosition->Name
				==	i_vName
				)
			)
		or	Contains
			(	i_vView.DataInfos
			,	i_vName
			)
		;
	}

	[[nodiscard]]
	auto constexpr
	(	ContainsDynamic
	)	(	AliasView
				i_vView
		,	StringView
				i_vName
		)
		noexcept
	->	bool
	{	return
		Contains
		(	DynamicView
			(	i_vView
			)
		,	i_vName
		);
	}

	[[nodiscard]]
	auto constexpr
	(	ContainsStatic
	)	(	AliasView
				i_vView
		,	StringView
				i_vName
		)
		noexcept
	->	bool
	{	return
		Contains
		(	StaticView
			(	i_vView
			)
		,	i_vName
		);
	}
}
