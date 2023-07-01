export module ATR.Member.NamedTypeList;

import ATR.Member.Constants;

import Meta.Size;
import Meta.String.Chain;
import Meta.Token.TypeID;

import Std;

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
				aNamesBegin
			=	Names
			;
			auto const
				aNamesEnd
			=	aNamesBegin
			+	Count
			;

			auto const
				aNamesInsert
			=	::std::lower_bound
				(	aNamesBegin
				,	aNamesEnd
				,	i_rMemberName
				)
			;

			::std::move_backward
			(	aNamesInsert
			,	aNamesEnd
			,	(	aNamesEnd
				+	1z
				)
			);

			auto const
				aTypesBegin
			=	Types
			;

			auto const
				aTypesEnd
			=	Types
			+	Count
			;

			auto const
				aTypesInsert
			=	aTypesBegin
			+	(	aNamesInsert
				-	aNamesBegin
				)
			;

			::std::move_backward
			(	aTypesInsert
			,	aTypesEnd
			,	(	aTypesEnd
				+	1z
				)
			);

			*	aNamesInsert
			=	i_rMemberName
			;
			*	aTypesInsert
			=	i_vType
			;
			++	Count
			;
		}
	};
}
