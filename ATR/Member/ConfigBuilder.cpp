export module ATR.Member.ConfigBuilder;

import ATR.Member.Alias;
import ATR.Member.Name;
import ATR.Member.NamedType;
import ATR.Member.Ordered;

import Meta.ID.Concept;
import Meta.Token.TypeID;

import Std;

using ::Meta::ProtoID;
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
	auto constexpr
		BuiltConfig_Of
	=	Configure
		(	t_tTypeName
			{}
		,	t_tConfigTransform
			{}
		)
	;

	class
		ConfigBuilder
	{
		NamedTypeBuffer
			m_vNamedTypes
		{};

		AliasBuffer
			m_vAliasList
		{};

	public:
		explicit(false) constexpr
		(	ConfigBuilder
		)	()
		=	default;

		[[nodiscard]]
		auto constexpr
		(	NamedTypeView
		)	()	const&
			noexcept
		->	decltype(auto)
		{	return
			(	m_vNamedTypes
			);
		}

		[[nodiscard]]
		auto constexpr
		(	AliasView
		)	()	const&
			noexcept
		->	decltype(auto)
		{	return
			(	m_vAliasList
			);
		}

		[[nodiscard]]
		auto constexpr
		(	HasAlias
		)	(	NameView
					i_rMemberName
			)	const
			noexcept
		->	bool
		{	return
			::ATR::Member::contains
			(	m_vAliasList
			,	i_rMemberName
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	NameView
					i_rMemberName
			,	NameView
					i_rTarget
			)
			noexcept
		->	ConfigBuilder&&
		{
			auto
			&	rAlias
			=	emplace
				(	m_vAliasList
				,	i_rMemberName
				)
			;

			rAlias
			.	Target
			=	i_rTarget
			;

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	NameView
					i_rMemberName
			,	TypeID
					i_vType
			)
			noexcept
		->	ConfigBuilder&&
		{
			if	(	not
					HasAlias
					(	i_rMemberName
					)
				)
			{
				auto
				&	rNamedTypes
				=	m_vNamedTypes
					[	i_vType
						.	GetAlign
							()
					]
				;

				auto
				&	rNamedType
				=	emplace
					(	rNamedTypes
					,	i_rMemberName
					)
				;
				rNamedType
				.	Type
				=	i_vType
				;
			}

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	NameView
					i_rPrefix
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

			for	(	auto const
					&	rAliasGroup
				:	rMerge
					.	m_vNamedTypes
				)
			{
				for	(	auto const
						&	[	rName
							,	rType
							]
					:	rAliasGroup
					)
				{
					(void)
					operator()
					(	Name
						{	::std::initializer_list<NameView>
							{	i_rPrefix
							,	NameView(rName)
							}
						}
					,	rType
					);
				}
			}

			for	(	auto const
					&	[	rName
						,	rTarget
						]
				:	rMerge
					.	m_vAliasList
				)
			{	(void)
				operator()
				(	Name
					{	::std::initializer_list<NameView>
						{	i_rPrefix
						,	NameView(rName)
						}
					}
				,	Name
					{	::std::initializer_list<NameView>
						{	i_rPrefix
						,	NameView(rTarget)
						}
					}
				);
			}

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	ConfigBuilder&&
		{	return
			operator()
			(	""
			,	i_vBaseID
			);
		}
	};
}
