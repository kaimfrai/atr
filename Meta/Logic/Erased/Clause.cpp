export module Meta.Logic.Erased.Clause;

import Meta.Logic.Bit.Clause;
import Meta.Logic.Erased.Literal;
import Meta.Size;
import Meta.Token.TypeID;

export namespace
	Meta::Logic::Erased
{
	struct
		Clause final
	{
		using
			IndexType
		=	typename
				Bit
			::	Clause
			::	IndexType
		;
		using
			size_type
		=	USize
		;

		Bit::Clause const
			BitClause
		;
		TypeID const
			Literals
			[	Bit::LiteralLimit
				.	get
					()
			]
		{};

		[[nodiscard]]
		auto constexpr
		(	IsIdentity
		)	()	const
			noexcept
		->	bool
		{	return
				BitClause
			.	IsIdentity
				()
			;
		}

		[[nodiscard]]
		auto constexpr
		(	Positive
		)	(	size_type
					i_nIndex
			)	const
			noexcept
		->	bool
		{	return
				BitClause
			.	Positive
				[	IndexType
					{	static_cast<IndexType::IndexType>
						(	i_nIndex
						)
					}
				]
			;
		}

		[[nodiscard]]
		auto constexpr
		(	Negative
		)	(	size_type
					i_nIndex
			)	const
			noexcept
		->	bool
		{	return
				BitClause
			.	Negative
				[	IndexType
					{	static_cast<IndexType::IndexType>
						(	i_nIndex
						)
					}
				]
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	size_type
					i_nIndex
			)	const
			noexcept
		->	Literal
		{	if	(IsIdentity())
				return Contradiction;

			if	(Positive(i_nIndex))
				return
				{	Literals
					[	i_nIndex
					]
				,	true
				};

			if	(Negative(i_nIndex))
				return
				{	Literals
					[	i_nIndex
					]
				,	false
				};

			return Tautology;
		}
	};
}
