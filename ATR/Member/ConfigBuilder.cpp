export module ATR.Member.ConfigBuilder;

import ATR.Member.AliasMapList;
import ATR.Member.LayoutList;
import ATR.Member.NamedTypeList;

import Meta.ID;
import Meta.String.Chain;
import Meta.Token.TypeID;

using ::Meta::ProtoID;
using ::Meta::String::Chain;
using ::Meta::String::ImplicitChain;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	template
		<	ProtoID
				t_tTypeName
		,	typename
				t_tConfigTransform
		>
	auto constexpr inline
		BuiltConfig_Of
	=	Configure
		(	t_tTypeName
			{}
		,	t_tConfigTransform
			{}
		)
	;

	struct
		ConfigBuilder
	{
		LayoutList
			Layout
		{};

		NamedTypeList
			NamedTypes
		{};

		AliasMapList
			AliasMaps
		{};

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	ImplicitChain
					i_rMemberName
			,	ImplicitChain
					i_rTarget
			)
			noexcept
		->	ConfigBuilder&&
		{
			AliasMaps
			.	AddAliasMap
				(	i_rMemberName
				,	i_rTarget
				)
			;

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	ImplicitChain
					i_rMemberName
			,	TypeID
					i_vType
			)
			noexcept
		->	ConfigBuilder&&
		{
			if	(	not
					AliasMaps
					.	HasAlias
						(	i_rMemberName
						)
				)
			{
				NamedTypes
				.	AddNamedType
					(	i_rMemberName
					,	i_vType
					)
				;

				Layout
				.	AddType
					(	i_vType
					)
				;
			}

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	char const
				*	i_aPrefix
			,	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	ConfigBuilder&&
		{
			auto const
			&	rMerge
			=	BuiltConfig_Of
				<	decltype(i_vBaseID)
				,	ConfigBuilder
				>
			;

			for	(	auto
						vIndex
					=	0z
				;	(	vIndex
					<	rMerge
						.	NamedTypes
						.	Count
					)
				;	++	vIndex
				)
			{
				(void)
				operator()
				(	(	i_aPrefix
					+	rMerge
						.	NamedTypes
						.	Names
							[	vIndex
							]
					)
				,	rMerge
					.	NamedTypes
					.	Types
						[	vIndex
						]
				);
			}

			for	(	auto const
					&	[	rName
						,	rTarget
						]
				:	rMerge
					.	AliasMaps
					.	List
				)
			{	(void)
				operator()
				(	(	i_aPrefix
					+	rName
					)
				,	(	i_aPrefix
					+	rTarget
					)
				);
			}

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	ConfigBuilder&&
		{
			if	(	(	NamedTypes
						.	Count
					==	0z
					)
				and	(	AliasMaps
						.	List
						.	Count
					==	0z
					)
				)
			{	return
				static_cast<ConfigBuilder&&>
				(	operator=
					(	BuiltConfig_Of
						<	decltype(i_vBaseID)
						,	ConfigBuilder
						>
					)
				);
			}

			return
			operator()
			(	Chain::Empty
			,	i_vBaseID
			);
		}
	};
}
