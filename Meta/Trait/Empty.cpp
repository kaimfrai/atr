export module Meta.Trait.Empty;

import Meta.Token.TypeID;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;

export namespace
	Meta::Trait
{
	struct
		Empty
	{
		[[nodiscard]]
		auto static constexpr
		(	operator
			()
		)	(	TypeID
					i_vType
			)
			noexcept
		->	bool
		{	return
				i_vType.GetSize
				()
			==	0_bit
			;
		}
	};
}
