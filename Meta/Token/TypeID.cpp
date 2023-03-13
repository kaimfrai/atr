export module Meta.Token.TypeID;

import Meta.Memory.Size.Compare;
import Meta.Memory.Constraint;

export namespace
	Meta
{
	struct
		TypeID final
	{
		Memory::Constraint const
		*	Constraint
		;

		[[nodiscard]]
		auto constexpr
		(	operator
			->
		)	()	const
			noexcept
		->	Memory::Constraint const*
		{	return
				Constraint
			;
		}

		[[nodiscard]]
		friend
		auto constexpr
		(	operator
			==
		)	(	TypeID
			,	TypeID
			)
			noexcept
		->	bool
		=	default;
	};
};
