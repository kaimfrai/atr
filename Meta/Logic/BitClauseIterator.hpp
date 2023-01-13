export module Meta.Logic:BitClauseIterator;

export import :BitClause;

import Meta.Bit.Field.Arithmetic;
import Meta.Bit.Field.Compare;
import Meta.Bit.Field.LowestOne;

import Std;

export namespace
	Meta::Logic
{
	[[nodiscard]]
	auto constexpr
	(	FirstLiteral
	)	(	BitClause
				i_vClause
		)
		noexcept
	->	BitClause
	{
		auto const
			vMask
		=	LowestOne
			(	i_vClause.Positive
			bitor
				i_vClause.Negative
			)
		;

		(	i_vClause.Positive
		&=	vMask
		);

		(	i_vClause.Negative
		&=	vMask
		);

		return
			i_vClause
		;
	}

	auto constexpr
	(	EraseFirstLiteral
	)	(	BitClause
			&	i_rClause
		)
		noexcept
	->	BitClause&
	{
		auto const
			nCombined
		=	i_rClause.Positive
		bitor
			i_rClause.Negative
		;
		UnsetLowestOne
		(	i_rClause.Positive
		,	nCombined
		);
		UnsetLowestOne
		(	i_rClause.Negative
		,	nCombined
		);

		return
			i_rClause
		;
	}

	struct
		BitClauseSentinel
	{};

	struct
		BitClauseIterator final
	{
		using
			difference_type
		=	int
		;
		using
			value_type
		=	BitClause
		;

		value_type
			m_vClause
		;

		[[nodiscard]]
		auto constexpr
		(	operator *
		)	()	const
			noexcept
		->	value_type
		{	return
			FirstLiteral
			(	m_vClause
			);
		}

		auto constexpr
		(	operator ++
		)	()	&
			noexcept
		->	BitClauseIterator&
		{
			EraseFirstLiteral
			(	m_vClause
			);
			return
				*this
			;
		}

		[[nodiscard("Use preincrement when discarding the value!")]]
		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	BitClauseIterator
		{	return
			::std::exchange
			(	*this
			,	::std::next
				(	*this
				)
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	BitClauseIterator
			,	BitClauseIterator
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	BitClauseIterator
					i_vIterator
			,	BitClauseSentinel
			)
			noexcept
		->	bool
		{	return
				i_vIterator.m_vClause.Positive
			==	i_vIterator.m_vClause.Negative
			;
		}
	};

	[[nodiscard]]
	auto constexpr
	(	begin
	)	(	BitClause
				i_vClause
		)
		noexcept
	->	BitClauseIterator
	{	return
		{	i_vClause
		};
	}

	[[nodiscard]]
	auto constexpr
	(	end
	)	(	BitClause
		)
		noexcept
	->	BitClauseSentinel
	{	return
		{};
	}
}
