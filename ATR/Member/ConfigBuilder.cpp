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
						vNameIndex
					=	0z
				;	(	vNameIndex
					<	rMerge
						.	NamedTypes
						.	Count
					)
				;	++	vNameIndex
				)
			{
				(void)
				operator()
				(	(	i_aPrefix
					+	rMerge
						.	NamedTypes
						.	Names
							[	vNameIndex
							]
					)
				,	rMerge
					.	NamedTypes
					.	Types
						[	vNameIndex
						]
				);
			}

			for	(	auto
						vAliasIndex
					=	0z
				;	(	vAliasIndex
					<	rMerge
						.	AliasMaps
						.	Count
					)
				;	++	vAliasIndex
				)
			{	(void)
				operator()
				(	(	i_aPrefix
					+	rMerge
						.	AliasMaps
						.	Names
							[	vAliasIndex
							]
					)
				,	(	i_aPrefix
					+	rMerge
						.	AliasMaps
						.	Targets
							[	vAliasIndex
							]
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
