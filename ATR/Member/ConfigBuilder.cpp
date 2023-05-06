export module ATR.Member.ConfigBuilder;

import ATR.Member.Name;
import ATR.Member.Layout;
import ATR.Member.ConfigData;
import ATR.Member.NamedInfo;
import ATR.Member.Compare.Layout;
import ATR.Member.Compare.Name;
import ATR.Member.Alias;

import Meta.Memory.Size;
import Meta.Token.TypeID;

import Std;

using namespace ::Meta::Literals;

using ::Meta::TypeID;
using ::Meta::BitSize;

export namespace
	ATR::Member
{
	class
		ConfigBuilder
	{
		ConfigData
		*	m_aConfig
		;

		AliasBuffer
			m_vAliasList
		{};
	public:
		explicit(true) constexpr
		(	ConfigBuilder
		)	(	ConfigData
				&	i_rConfig
			)
		:	m_aConfig
			{	::std::addressof
				(	i_rConfig
				)
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	GetTypeView
		)	()	&
			noexcept
		->	LayoutView
		{	return
			{	begin
				(	m_aConfig
					->	LayoutList
				)
			,	m_aConfig
				->	MemberCount
			};
		}

		[[nodiscard]]
		auto constexpr
		(	GetMemberNameView
		)	()	&
			noexcept
		->	NamedInfoView
		{	return
			{	::std::begin
				(	m_aConfig
					->	NamedInfoList
				)
			,	m_aConfig
				->	MemberCount
			};
		}

		[[nodiscard]]
		auto constexpr
		(	GetAliasView
		)	()	&
			noexcept
		->	AliasView
		{	return
			{	::std::begin
				(	m_vAliasList
				)
			,	m_aConfig
				->	AliasCount
			};
		}

		[[nodiscard]]
		auto constexpr
		(	GetAliasView
		)	()	const&
			noexcept
		->	ConstAliasView
		{	return
			{	::std::begin
				(	m_vAliasList
				)
			,	m_aConfig
				->	AliasCount
			};
		}

		[[nodiscard]]
		auto constexpr
		(	HasAlias
		)	(	NameView
					i_rMemberName
			)	const
			noexcept
		->	bool
		{
			auto const
				rAliasView
			=	GetAliasView
				()
			;

			auto const
				aPosition
			=	::std::lower_bound
				(	rAliasView
					.	begin
						()
				,	rAliasView
					.	end
						()
				,	i_rMemberName
				,	Compare::Name
					{}
				)
			;

			return
			(	(	aPosition
				!=	rAliasView
					.	end
						()
				)
			and	(	aPosition
					->	Name
				==	i_rMemberName
				)
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
			auto const
				rAliasView
			=	GetAliasView
				()
			;

			auto const
				aInsertPosition
			=	::std::lower_bound
				(	rAliasView
					.	begin
						()
				,	rAliasView
					.	end
						()
				,	i_rMemberName
				,	Compare::Name
					{}
				)
			;

			::std::move_backward
			(	aInsertPosition
			,	rAliasView
				.	end
					()
			,	::std::next
				(	rAliasView
					.	end
						()
				)
			);

			aInsertPosition
			->	Name
			=	i_rMemberName
			;

			aInsertPosition
			->	Target
			=	i_rTarget
			;

			++	m_aConfig
				->	AliasCount
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

			auto const
				rMemberView
			=	GetMemberNameView
				()
			;

			auto const
				aMemberEnd
			=	rMemberView
				.	end
					()
			;

			auto const
				aInsertPosition
			=	::std::lower_bound
				(	rMemberView
					.	begin
						()
				,	aMemberEnd
				,	Compare::LayoutSortKey
					{	i_vType
						.	GetAlign
							()
					,	i_rMemberName
					}
				,	Compare::Layout
					{}
				)
			;
			::std::move_backward
			(	aInsertPosition
			,	aMemberEnd
			,	::std::next
				(	aMemberEnd
				)
			);

			aInsertPosition
			->	Name
			=	i_rMemberName
			;

			aInsertPosition
			->	Info
			.	Type
			=	i_vType
			;

			++	m_aConfig
				->	MemberCount
			;
		}
	};
}
