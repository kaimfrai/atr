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
		auto static constexpr inline
		(	operator()
		)	(	TypeID
					i_vType
			)
			noexcept
		->	BitSize
		{	return
				i_vType
			.	GetSize
				()
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
