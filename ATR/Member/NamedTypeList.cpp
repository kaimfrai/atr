export module ATR.Member.NamedTypeList;

import ATR.Member.Constants;

import Meta.Generic.LowerBound;
import Meta.Size;
import Meta.String.Chain;
import Meta.Token.TypeID;

import Std;

using ::Meta::Generic::LowerBoundIndex;
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
				aNamesEnd
			=	Names
			+	Count
			;

			auto const
				vInsertIndex
			=	LowerBoundIndex
				(	Names
				,	Count
				,	i_rMemberName
				)
			;

			::std::move_backward
			(	(	Names
				+	vInsertIndex
				)
			,	aNamesEnd
			,	(	aNamesEnd
				+	1z
				)
			);
			::std::move_backward
			(	(	Types
				+	vInsertIndex
				)
			,	(	Types
				+	Count
				)
			,	(	Types
				+	Count
				+	1z
				)
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
