export module ATR.Layout.Data;

import ATR.Layout.Concept;

import Meta.ID.StringView;

import Std;

export namespace
	ATR
{
	template
		<	typename
				t_tStatic
		,	typename
				t_tDynamic
		>
	struct
		Data
	{
		using StaticLayout = t_tStatic;
		using DynamicLayout = t_tDynamic;

		static t_tStatic constexpr
			Static
		{};

		t_tDynamic
			Dynamic
		;

		static auto constexpr
		(	ResolveAlias
		)	(	::Meta::StringView
					i_vName
			)
		->	decltype(i_vName)
		{	return i_vName;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			Dynamic
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			Dynamic
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			::std::move(Dynamic)
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<t_tStatic> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(Static[i_vMemberID])
		{	return
			Static
			[	i_vMemberID
			];
		}
	};
}
