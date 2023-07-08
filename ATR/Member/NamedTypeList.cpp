export module ATR.Member.NamedTypeList;

import ATR.Member.Constants;

import Meta.Generic.Insert;
import Meta.Generic.LowerBound;
import Meta.Size;
import Meta.String.Chain;
import Meta.Token.TypeID;

using ::Meta::Generic::StructureOfArrays::InsertByKey;
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
			InsertByKey<Chain, TypeID>
			(	Count
			,	{	Names
				,	i_rMemberName
				}
			,	{	Types
				,	i_vType
				}
			);
		}
	};
}
