export module ATR.Member.ConfigData;

import ATR.Member.Constants;
import ATR.Member.Info;
import ATR.Member.LayoutList;

import Meta.Generic.LowerBound;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.Size;
import Meta.String.Chain;
import Meta.Token.Type;
import Meta.Token.TypeID;

using ::Meta::Generic::LowerBoundIndex;
using ::Meta::SSize;
using ::Meta::String::Chain;
using ::Meta::Type;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	struct
		ConfigData
	{
		LayoutList
			Layout
		{};

		Chain
			Names
			[	NameBufferSize
			]
		{};

		TypeID
			Types
			[	NameBufferSize
			]
		{};

		SSize
			TypeIndices
			[	NameBufferSize
			]
		{};

		Chain
			AliasTargets
			[	NameBufferSize
			]
		{};

		SSize
			NameCount
		{};

		[[nodiscard]]
		auto constexpr inline
		(	FindMemberInfo
		)	(	Chain
					i_rMemberName
			)	const
			noexcept
		->	Info
		{
			auto const
				vIndex
			=	LowerBoundIndex
				(	Names
				,	NameCount
				,	i_rMemberName
				)
			;

			if	(	(	vIndex
					==	NameCount
					)
				or	(	Names
							[	vIndex
							]
					!=	i_rMemberName
					)
				)
			{	return
				Info
				{	Type<void>
				,	-1_bit
				};
			}

			auto const
				vType
			=	Types
					[	vIndex
					]
			;

			auto const
				vTypeIndex
			=	TypeIndices
					[	vIndex
					]
			;

			auto const
				vOffset
			=	Layout
				.	MemberOffset
					(	vType
					,	vTypeIndex
					)
			;

			return
			Info
			{	vType
			,	vOffset
			};
		}
	};
}
