export module Meta.Token.TypeID;

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
		(	GetAlign
		)	()	const
			noexcept
		{	return
				Constraint
			->	Align
			;
		}

		[[nodiscard]]
		auto constexpr
		(	GetSize
		)	()	const
			noexcept
		{	return
				Constraint
			->	Size
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
