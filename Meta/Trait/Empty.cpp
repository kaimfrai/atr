export module Meta.Trait.Empty;

import Meta.Token.TypeID;

export namespace
	Meta::Trait
{
	struct
		Empty
	{
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeID
					i_vType
			)
			noexcept
		->	bool
		{	return
				not
				i_vType
			.	IsStateful
				()
			;
		}
	};
}
