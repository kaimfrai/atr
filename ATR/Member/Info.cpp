export module ATR.Member.Info;

import Meta.Token.TypeID;
import Meta.Memory.Size;

using ::Meta::BitSize;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		Info
	{
		TypeID
			Type
		;
		BitSize
			Offset
		;
	};
}
