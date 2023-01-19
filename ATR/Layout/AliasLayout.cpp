export module ATR.Layout.AliasLayout;

import ATR.Layout.AliasResolver;
import ATR.Layout.Concept;

import Meta.Size;
import Meta.Lex.Transform;

using ::Meta::USize;

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
		static auto constexpr
		(	ResolveAlias
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
					i_vName
			)
		->	decltype(auto)
		{	return
			::ResolveAlias<t_tpAlias...>
			(	i_vName
			);
		}

		template
			<	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
					i_vMember
			,	Meta::Lex::Transform<t_tpTransform...>
					i_vTransform
			)
		->	decltype(auto)
		{	return
				t_tLayout
			::	OffsetOf
				(	ResolveAlias
					(	i_vMember
					)
				,	i_vTransform
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
					i_vMember
			)	&
			noexcept
		->	decltype(auto)
		{	return
			static_cast<t_tLayout&>(*this)
			[	ResolveAlias
				(	i_vMember
				)
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
					i_vMember
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			static_cast<t_tLayout const&>(*this)
			[	ResolveAlias
				(	i_vMember
				)
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
					i_vMember
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			static_cast<t_tLayout&&>(*this)
			[	ResolveAlias
				(	i_vMember
				)
			];
		}
	};
}
