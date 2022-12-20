export module Meta.Logic:BitClauseIterator;

export import :BitClause;

import Meta.Arithmetic.Size;

namespace
	Meta::Logic
{
	export class
		BitClauseIterator final
	{
		BitClause
			m_vClause
		;

		friend auto constexpr
		(	begin
		)	(	BitClause
			)
		->	BitClauseIterator
		;

		friend auto constexpr
		(	end
		)	(	BitClause
			)
		->	BitClauseIterator
		;

		constexpr
		(	BitClauseIterator
		)	(	BitClause
					i_vClause
			)
		:	m_vClause
			{	i_vClause
			}
		{}

	public:
		using difference_type = SSize;
		using value_type = BitClause;

		auto constexpr
		(	operator *
		)	()	const
		->	BitClause
		{	return m_vClause.FirstLiteral(); }

		auto constexpr
		(	operator ++
		)	()	&
		->	BitClauseIterator&
		{
			(	m_vClause
			=	Difference
				(	m_vClause
				,	m_vClause.FirstLiteral()
				)
			);
			return *this;
		}

		auto constexpr
		(	operator ++
		)	(int)	&
		->	BitClauseIterator
		{
			auto const
				vCopy
			=	*this;
			operator++();
			return vCopy;
		}

		friend auto constexpr
		(	operator ==
		)	(	BitClauseIterator
			,	BitClauseIterator
			)
		->	bool
		=	default;

	};

	export auto constexpr
	(	begin
	)	(	BitClause
				i_vClause
		)
	->	BitClauseIterator
	{	return { i_vClause };	}

	export auto constexpr
	(	end
	)	(	BitClause
		)
	->	BitClauseIterator
	{	return { BitClause::Absorbing() };	};
}
