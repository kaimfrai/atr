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

		Bit::Clause
			BitClause
		;
		TypeID
			Literals
			[	Bit::LiteralLimit
				.	get
					()
			]
		{};

		[[nodiscard]]
		auto constexpr inline
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
		auto constexpr inline
		(	Positive
		)	(	size_type
					i_vIndex
			)	const
			noexcept
		->	bool
		{	return
				BitClause
			.	Positive
				[	IndexType
					{	static_cast<IndexType::IndexType>
						(	i_vIndex
						)
					}
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	Negative
		)	(	size_type
					i_vIndex
			)	const
			noexcept
		->	bool
		{	return
				BitClause
			.	Negative
				[	IndexType
					{	static_cast<IndexType::IndexType>
						(	i_vIndex
						)
					}
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	size_type
					i_vIndex
			)	const
			noexcept
		->	Literal
		{	if	(IsIdentity())
				return Contradiction;

			if	(Positive(i_vIndex))
				return
				{	Literals
					[	i_vIndex
					]
				,	true
				};

			if	(Negative(i_vIndex))
				return
				{	Literals
					[	i_vIndex
					]
				,	false
				};

			return Tautology;
		}
	};
}
