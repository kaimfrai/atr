export module Meta.Logic.LiteralBase;

import Meta.Token.Type;;

export namespace
	Meta::Trait
{
	struct
		LiteralBase
	{
		[[nodiscard]]
		friend auto constexpr
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
		static auto constexpr
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
