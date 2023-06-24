export module ATR.Member.AliasMapList;

import ATR.Member.Alias;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;

import Meta.Generic.MoveBackward;
import Meta.String.Chain;

import Std;

using ::Meta::Generic::MoveBackward_Until;
using ::Meta::String::Chain;

export namespace
	ATR::Member
{
	struct
		AliasMapList
	{
		CountedBuffer<Alias, NameBufferSize>
			List
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
				aAliasBegin
			=	List
				.	begin
					()
			;

			auto const
				aAliasEnd
			=	List
				.	end
					()
			;

			auto const
				aPosition
			=	::std::lower_bound
				(	aAliasBegin
				,	aAliasEnd
				,	i_rMemberName
				)
			;

			return
			(	(	aPosition
				!=	aAliasEnd
				)
			and	(	aPosition
					->	Name
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
				aInsert
			=	MoveBackward_Until
				(	List
					.	begin
						()
				,	List
					.	end
						()
				,	[	i_rMemberName
					]	(	Alias const
							&	i_rAlias
						)
					{	return
							i_rAlias
							.	Name
						<=	i_rMemberName
						;
					}
				)
			;

			aInsert
			->	Name
			=	i_rMemberName
			;
			aInsert
			->	Target
			=	i_rTarget
			;

			++	List
				.	Count
			;
		}
	};
}
