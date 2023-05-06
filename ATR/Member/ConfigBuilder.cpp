export module ATR.Member.ConfigBuilder;

import ATR.Member.Alias;
import ATR.Member.Name;
import ATR.Member.NamedType;
import ATR.Member.Ordered;

import Meta.Token.TypeID;

using ::Meta::TypeID;

export namespace
	ATR::Member
{
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

		auto constexpr
		(	operator()
		)	(	NameView
					i_rMemberName
			,	NameView
					i_rTarget
			)	&
			noexcept
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
		}

		auto constexpr
		(	operator()
		)	(	NameView
					i_rMemberName
			,	TypeID
					i_vType
			)	&
			noexcept
		{
			if	(	HasAlias
					(	i_rMemberName
					)
				)
			{	return
				;
			}

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
	};
}
