export module ATR.Member.ConfigAffixer;

import ATR.Member.ConfigBuilder;
import ATR.Member.Name;
import ATR.Member.Config;

import Meta.Token.TypeID;

export import Std;

export namespace
	ATR::Member
{
	class
		ConfigAffixer
	{
		NameView
			m_rPrefix
		;

		ConfigBuilder
		*	m_aConfig
		;

		NameView
			m_rSuffix
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
			,	m_rSuffix
			};
		}

	public:
		explicit(true) constexpr
		(	ConfigAffixer
		)	(	NameView
					i_rPrefix
			,	ConfigBuilder
				&	i_rConfig
			,	NameView
					i_rSuffix
				=	""
			)
			noexcept
		:	m_rPrefix
			{	i_rPrefix
			}
		,	m_aConfig
			{	::std::addressof
				(	i_rConfig
				)
			}
		,	m_rSuffix
			{	i_rSuffix
			}
		{}

		explicit(true) constexpr
		(	ConfigAffixer
		)	(	ConfigBuilder
				&	i_rConfig
			,	NameView
					i_rSuffix
			)
			noexcept
		:	ConfigAffixer
			{	""
			,	i_rConfig
			,	i_rSuffix
			}
		{}

		auto constexpr
		(	operator()
		)	(	NameView
					i_rMemberName
			,	NameView
					i_rTarget
			)	&
			noexcept
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

			(*	m_aConfig
			)	(	vInfixMemberName
				,	vInfixTargetName
				)
			;
		}

		auto constexpr
		(	operator()
		)	(	NameView
					i_rMemberName
			,	::Meta::TypeID
					i_vType
			)	&
			noexcept
		{
			auto const
				vInfixMemberName
			=	InfixName
				(	i_rMemberName
				)
			;

			(*	m_aConfig
			)	(	vInfixMemberName
				,	i_vType
				)
			;
		}
	};
}
