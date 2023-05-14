export module ATR.Member.ConfigPrefixer;

import ATR.Member.ConfigBuilder;
import ATR.Member.Name;

import Meta.ID.Concept;
import Meta.Token.TypeID;

import Std;

using ::Meta::ProtoID;

export namespace
	ATR::Member
{
	class
		ConfigPrefixer
	{
		NameView
			m_rPrefix
		;

		ConfigBuilder
		*	m_aConfig
		;

		[[nodiscard]]
		auto constexpr
		(	InfixName
		)	(	NameView
					i_rName
			)	const
			noexcept
		->	Name
		{	return
			Name
			{	m_rPrefix
			,	i_rName
			};
		}

	public:
		explicit(true) constexpr
		(	ConfigPrefixer
		)	(	NameView
					i_rPrefix
			,	ConfigBuilder
				&	i_rConfig
			)
			noexcept
		:	m_rPrefix
			{	i_rPrefix
			}
		,	m_aConfig
			{	&i_rConfig
			}
		{}

		[[nodiscard]]
		explicit(true) constexpr
		(	operator
			ConfigBuilder
		)	()	&&
			noexcept
		{	return
			static_cast<ConfigBuilder&&>
			(	*	m_aConfig
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
		->	ConfigPrefixer&&
		{
			auto const
				vInfixMemberName
			=	InfixName
				(	i_rMemberName
				)
			;

			auto const
				vInfixTargetName
			=	InfixName
				(	i_rTarget
				)
			;

			(void)
			(*	m_aConfig
			)	(	vInfixMemberName
				,	vInfixTargetName
				)
			;

			return
			static_cast<ConfigPrefixer&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	NameView
					i_rMemberName
			,	::Meta::TypeID
					i_vType
			)
			noexcept
		->	ConfigPrefixer&&
		{
			auto const
				vInfixMemberName
			=	InfixName
				(	i_rMemberName
				)
			;

			(void)
			(*	m_aConfig
			)	(	vInfixMemberName
				,	i_vType
				)
			;
			return
			static_cast<ConfigPrefixer&&>
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
		->	ConfigPrefixer&&
		{	return
			Configure
			(	i_vBaseID
			,	static_cast<ConfigPrefixer&&>
				(	*this
				)
			);
		}
	};
}
