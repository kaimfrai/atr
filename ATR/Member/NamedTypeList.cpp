export module ATR.Member.NamedTypeList;

import ATR.Member.Constants;

import Meta.Generic.LowerBound;
import Meta.Generic.MoveBackward;
import Meta.Size;
import Meta.String.Chain;
import Meta.Token.TypeID;

using ::Meta::Generic::LowerBoundIndex;
using ::Meta::Generic::MoveBackwardIndex;
using ::Meta::SSize;
using ::Meta::String::Chain;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		NamedTypeList
	{
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
			Count
		{};

		auto constexpr inline
		(	AddNamedType
		)	(	Chain
					i_rMemberName
			,	TypeID
					i_vType
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
			(	Types
			,	vInsertIndex
			,	Count
			);

			Names
				[	vInsertIndex
				]
			=	i_rMemberName
			;
			Types
				[	vInsertIndex
				]
			=	i_vType
			;
			++	Count
			;
		}
	};
}
