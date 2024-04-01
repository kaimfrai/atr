export module ATR.District.Info;

import Meta.String.Hash;

using ::Meta::String::ImplicitHash;

export namespace
	ATR::District
{
	struct
		Info
	{
		ImplicitHash
			Name
		;
		ImplicitHash
			Host
		{};
	};
}
