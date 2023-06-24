export module ATR.Member.LayoutList;

import ATR.Member.AlignBuffer;
import ATR.Member.CountedType;

import Meta.Memory.Constraint;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.Token.TypeID;

using ::Meta::BitSize;
using ::Meta::Memory::ByteAlign;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		LayoutList
	{
		AlignBuffer<CountedType>
			AlignTypeCounts
		{};

		BitSize
			BitCounts
			[	ByteAlign
				.	Value
			-	1
			]
		{};

		auto constexpr inline
		(	AddType
		)	(	TypeID
					i_vType
			)
			noexcept
		{
			if	(	not
					i_vType
					.	IsAligned
						()
				)
			{	return
				;
			}

			auto const
				vAlign
			=	i_vType
				.	GetAlign
					()
			;

			if	(	vAlign
				<	ByteAlign
				)
			{	BitCounts
					[	ByteAlign
						.	Value
					-	vAlign
						.	Value
					-	1
					]
				+=	i_vType
					.	GetSize
						()
				;
			}
			else
			{	::ATR::Member::AddType
					(	AlignTypeCounts
					,	i_vType
					)
				;
			}
		}
	};
}
