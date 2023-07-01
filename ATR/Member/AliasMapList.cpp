export module ATR.Member.AliasMapList;

import ATR.Member.Constants;

import Meta.String.Chain;
import Meta.Size;

import Std;

using ::Meta::SSize;
using ::Meta::String::Chain;

export namespace
	ATR::Member
{
	struct
		AliasMapList
	{
		Chain
			Names
			[	NameBufferSize
			]
		{};

		Chain
			Targets
			[	NameBufferSize
			]
		{};

		SSize
			Count
		{};

		[[nodiscard]]
		auto constexpr inline
		(	HasAlias
		)	(	Chain
					i_rMemberName
			)	const
			noexcept
		->	bool
		{
			auto const
				aAliasNamesBegin
			=	Names
			;

			auto const
				aAliasNamesEnd
			=	aAliasNamesBegin
			+	Count
			;

			auto const
				aMemberPosition
			=	::std::lower_bound
				(	aAliasNamesBegin
				,	aAliasNamesEnd
				,	i_rMemberName
				)
			;

			return
			(	(	aMemberPosition
				!=	aAliasNamesEnd
				)
			and	(	*	aMemberPosition
				==	i_rMemberName
				)
			);
		}

		auto constexpr inline
		(	AddAliasMap
		)	(	Chain
					i_rMemberName
			,	Chain
					i_rTarget
			)
			noexcept
		{
			auto const
				aAliasNamesBegin
			=	Names
			;

			auto const
				aAliasNamesEnd
			=	aAliasNamesBegin
			+	Count
			;

			auto const
				aAliasNameInsert
			=	::std::lower_bound
				(	aAliasNamesBegin
				,	aAliasNamesEnd
				,	i_rMemberName
				)
			;

			::std::move_backward
			(	aAliasNameInsert
			,	aAliasNamesEnd
			,	(	aAliasNamesEnd
				+	1z
				)
			);

			*	aAliasNameInsert
			=	i_rMemberName
			;

			auto const
				aAliasTargetsBegin
			=	Targets
			;

			auto const
				aAliasTargetsEnd
			=	aAliasTargetsBegin
			+	Count
			;

			auto const
				aAliasTargetInsert
			=	aAliasTargetsBegin
			+	(	aAliasNameInsert
				-	aAliasNamesBegin
				)
			;

			::std::move_backward
			(	aAliasTargetInsert
			,	aAliasTargetsEnd
			,	(	aAliasTargetsEnd
				+	1z
				)
			);

			*	aAliasTargetInsert
			=	i_rTarget
			;

			++	Count
			;
		}
	};
}
