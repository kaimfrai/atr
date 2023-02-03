export module ATR.Layout.AliasLayout;

import ATR.Layout.Concept;

import Meta.ID.StringView;
import Meta.ID.Alias;
import Meta.ID.Concept;

import Std;

using ::Meta::ProtoID;
using ::Meta::ID_Of;

export namespace
	ATR
{
	template
		<	typename
				t_tLayout
		,	typename
			...	t_tpAlias
		>
	struct
		AliasLayout
	:	t_tLayout
	{
		[[nodiscard]]
		static auto constexpr
		(	ResolveAlias
		)	(	Meta::StringView
					i_vName
			)
			noexcept
		->	decltype(auto)
		{
			::std::array constexpr
				vTargets
			{	t_tpAlias::Target
				...
			};
			::std::array constexpr
				vNames
			{	t_tpAlias::Name
				...
			};

			for(;;)
			{
				auto
					vEntry
				=	::std::lower_bound
					(	vNames.begin()
					,	vNames.end()
					,	i_vName
					)
				;
				if	(	(	vEntry
						!=	vNames.end()
						)
					and (	*
							vEntry
						==	i_vName
						)
					)
				{
					(	i_vName
					=	*
						::std::next
						(	vTargets.begin()
						,	::std::distance
							(	vNames.begin()
							,	vEntry
							)
						)
					);
				}
				else
				{	return
						i_vName
					;
				}
			}
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMember
			)	&
			noexcept
		->	decltype(auto)
			requires
				ProtoMemberID
				<	ID_Of
					<	ResolveAlias
						(	i_vMember.StringView
						)
					>
				,	t_tLayout
				>
		{	return
			static_cast<t_tLayout&>(*this)
			[	ID_Of
				<	ResolveAlias
					(	i_vMember.StringView
					)
				>{}
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMember
			)	const&
			noexcept
		->	decltype(auto)
			requires
				ProtoMemberID
				<	ID_Of
					<	ResolveAlias
						(	i_vMember.StringView
						)
					>
				,	t_tLayout
				>
		{	return
			static_cast<t_tLayout const&>(*this)
			[	ID_Of
				<	ResolveAlias
					(	i_vMember.StringView
					)
				>{}
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMember
			)	&&
			noexcept
		->	decltype(auto)
			requires
				ProtoMemberID
				<	ID_Of
					<	ResolveAlias
						(	i_vMember.StringView
						)
					>
				,	t_tLayout
				>
		{	return
			static_cast<t_tLayout&&>(*this)
			[	ID_Of
				<	ResolveAlias
					(	i_vMember.StringView
					)
				>{}
			];
		}
	};
}
