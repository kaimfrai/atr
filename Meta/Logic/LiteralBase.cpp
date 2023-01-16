export module Meta.Logic.LiteralBase;

export import Meta.Token;

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
			,	EraseTypeToken
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
		)	(	EraseTypeToken
			)
			noexcept
		->	bool
		{	return
				false
			;
		}
	};
}
