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
		auto constexpr inline
		(	GetAlign
		)	()	const
			noexcept
		{	return
				Constraint
			->	Align
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	IsAligned
		)	()	const
			noexcept
		{	return
				Constraint
			->	IsAligned
				()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetSize
		)	()	const
			noexcept
		{	return
				Constraint
			->	Size
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	IsStateful
		)	()	const
			noexcept
		->	bool
		{	return
				Constraint
			->	IsStateful
				()
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
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
