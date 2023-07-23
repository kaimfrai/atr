export module ATR.Member.Info;

import Meta.Memory.Size;
import Meta.Token.TypeID;

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
