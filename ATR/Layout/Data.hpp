export module ATR:Layout.Data;

import :Layout.Concept;

import Meta.Arithmetic;

using ::Meta::USize;

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
		)	(	ProtoMemberID<t_tStatic> auto
					i_vName
			)
		->	decltype(i_vName)
		{	return i_vName;	}

		static auto constexpr
		(	ResolveAlias
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vName
			)
		->	decltype(i_vName)
		{	return i_vName;	}

		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vMemberID
			)
		->	Meta::USize
		{	return
				t_tDynamic
			::	OffsetOf
				(	i_vMemberID
				)
			;
		}

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
		static auto constexpr
		(	OffsetOf
		)	(	ProtoMemberID<t_tStatic> auto
					i_vMemberID
			)
		->	USize
		{	return
				t_tStatic
			::	OffsetOf
				(	i_vMemberID
				)
			;
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
