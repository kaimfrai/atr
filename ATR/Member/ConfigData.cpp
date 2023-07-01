export module ATR.Member.ConfigData;

import ATR.Member.AlignBuffer;
import ATR.Member.Constants;
import ATR.Member.CountedType;
import ATR.Member.Info;
import ATR.Member.NamedInfo;

import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.Size;
import Meta.String.Chain;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
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
				aNameBegin
			=	Names
			;

			auto const
				aNameEnd
			=	aNameBegin
			+	NameCount
			;

			auto const
				aNamePosition
			=	::std::lower_bound
				(	aNameBegin
				,	aNameEnd
				,	i_rMemberName
				)
			;

			if	(	(	aNamePosition
					==	aNameEnd
					)
				or	(	*	aNamePosition
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
				vIndex
			=	aNamePosition
			-	aNameBegin
			;

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
