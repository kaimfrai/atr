export module ATR.Member.Compare.GreaterAlign;

import Meta.Token.TypeID;
import Meta.Memory.Alignment;

using ::Meta::Memory::Alignment;
using ::Meta::TypeID;

export namespace
	ATR::Member::Compare
{
	struct
		GreaterAlign
	{
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeID
					i_vLeft
			,	Alignment
					i_vRight
			)
			noexcept
		->	bool
		{	return
				i_vLeft
				.	GetAlign
					()
			>	i_vRight
			;
		}
	};
}
