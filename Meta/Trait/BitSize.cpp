export module Meta.Trait.BitSize;

import Meta.Token.TypeID;
import Meta.Memory.Size;

export namespace
	Meta::Trait
{
	struct
		BitSize_Of
	{
		[[nodiscard]]
		auto static constexpr
		(	operator
			()
		)	(	TypeID
					i_aType
			)
			noexcept
		->	BitSize
		{	return
				i_aType
			->	Size
			;
		}
	};
}

export namespace
	Meta
{
	Trait::BitSize_Of const extern
		BitSize_Of
	;
}
