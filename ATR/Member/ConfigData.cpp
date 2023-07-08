export module ATR.Member.ConfigData;

import ATR.Member.AlignBuffer;
import ATR.Member.Constants;
import ATR.Member.CountedType;
import ATR.Member.Info;
import ATR.Member.NamedInfo;

import Meta.Generic.LowerBound;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.Size;
import Meta.String.Chain;
import Meta.Token.Type;
import Meta.Token.TypeID;

using ::Meta::BitSize;
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
		AlignBuffer<CountedType>
			AlignTypeCounts
		{};

		BitSize
			BitCount
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

		BitSize
			Offsets
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

			return
			Info
			{	Types
					[	vIndex
					]
			,	Offsets
					[	vIndex
					]
			};
		}
	};
}
