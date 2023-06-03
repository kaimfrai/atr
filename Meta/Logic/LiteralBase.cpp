export module Meta.Logic.LiteralBase;

import Meta.Token.TypeID;

export namespace
	Meta::Trait
{
	struct
		LiteralBase
	{
		[[nodiscard]]
		auto friend constexpr
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
		auto static constexpr
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
