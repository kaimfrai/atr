export module ATR.Member.AliasMapList;

import ATR.Member.Constants;

import Meta.Generic.Insert;
import Meta.Generic.LowerBound;
import Meta.Size;
import Meta.String.Chain;

using ::Meta::Generic::StructureOfArrays::InsertByKey;
using ::Meta::Generic::LowerBoundIndex;
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
			InsertByKey<Chain, Chain>
			(	Count
			,	{	Names
				,	i_rMemberName
				}
			,	{	Targets
				,	i_rTarget
				}
			);
		}
	};
}
