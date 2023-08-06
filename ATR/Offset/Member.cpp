export module ATR.Offset.Member;

import Meta.Memory.Size;

using ::Meta::BitSize;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	struct
		Member
	{};
}
