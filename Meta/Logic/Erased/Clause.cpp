export module Meta.Logic.Erased.Clause;

export import Meta.Token;

import Meta.Logic.Erased.Literal;
import Meta.Logic.Bit.Clause;

import Std;

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
			LiteralBufferType
		=	::std::array
			<	EraseTypeToken
			,	Bit::LiteralLimit.get()
			>
		;
		using
			size_type
		=	typename
				LiteralBufferType
			::	size_type
		;

		Bit::Clause const
			BitClause
		;
		LiteralBufferType const
			Literals
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
