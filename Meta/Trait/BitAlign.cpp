export module Meta.Trait.BitAlign;

import Meta.Token.TypeID;
import Meta.Memory.Alignment;

export namespace
	Meta::Trait
{
	struct
		BitAlign_Of
	{
		[[nodiscard]]
		auto static constexpr
		(	operator
			()
		)	(	TypeID
					i_aType
			)
			noexcept
		->	Memory::Alignment
		{	return
				i_aType
			->	Align
			;
		}
	};
}

export namespace
	Meta
{
	Trait::BitAlign_Of const extern
		BitAlign_Of
	;
}
