export module ATR.Member.LayoutList;

import ATR.Member.AlignBufferView;
import ATR.Member.CountedType;

import Meta.Size;
import Meta.Token.TypeID;

using ::Meta::SSize;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr inline
	(	AddByteType
	)	(	TypeID
				i_vType
		,	AlignBufferView<CountedType>
				o_rCountedBuffer
		,	SSize
				i_vCount
		)
		noexcept
	->	short
	{
		short
			vTypeIndex
		{};

		for	(
			;	(	vTypeIndex
				<	o_rCountedBuffer
					.	ElementCount
				)
			;	++	vTypeIndex
			)
		{
			auto
			&	[	rType
				,	rCount
				]
			=	o_rCountedBuffer
				.	Elements
					[	vTypeIndex
					]
			;

			if	(	rType
				==	i_vType
				)
			{
				rCount
				+=	i_vCount
				;
				return
					vTypeIndex
				;
			}
		}

		o_rCountedBuffer
		.	emplace_back
			(	i_vType
			,	i_vCount
			)
		;

		return
			vTypeIndex
		;
	}
}
