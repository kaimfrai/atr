export module Meta.Logic.LiteralBase;

import Meta.Token.TypeID;

export namespace
	Meta::Trait
{
	struct
		LiteralBase
	{
		[[nodiscard]]
		auto friend constexpr inline
		(	Evaluate
		)	(	LiteralBase
			,	TypeID
			)
			noexcept
		->	bool
		{	return
				false
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	TypeID
			)
			noexcept
		->	bool
		{	return
				false
			;
		}
	};
}
