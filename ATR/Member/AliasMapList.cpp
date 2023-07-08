export module ATR.Member.AliasMapList;

import ATR.Member.Constants;

import Meta.Generic.LowerBound;
import Meta.Generic.MoveBackward;
import Meta.Size;
import Meta.String.Chain;

using ::Meta::Generic::LowerBoundIndex;
using ::Meta::Generic::MoveBackwardIndex;
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
				vMemberIndex
			=	LowerBoundIndex
				(	Names
				,	Count
				,	i_rMemberName
				)
			;

			return
			(	(	vMemberIndex
				!=	Count
				)
			and	(	Names
						[	vMemberIndex
						]
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
				vInsertIndex
			=	LowerBoundIndex
				(	Names
				,	Count
				,	i_rMemberName
				)
			;

			MoveBackwardIndex
			(	Names
			,	vInsertIndex
			,	Count
			);
			MoveBackwardIndex
			(	Targets
			,	vInsertIndex
			,	Count
			);

			Names
				[	vInsertIndex
				]
			=	i_rMemberName
			;
			Targets
				[	vInsertIndex
				]
			=	i_rTarget
			;

			++	Count
			;
		}
	};
}
