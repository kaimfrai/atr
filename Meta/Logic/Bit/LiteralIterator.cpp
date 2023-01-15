export module Meta.Logic.Bit.LiteralIterator;

export import Meta.Logic.Bit.Clause;

import Meta.Bit.Field.Arithmetic;
import Meta.Bit.Field.Compare;
import Meta.Bit.Field.LowestOne;

import Std;

export namespace
	Meta::Logic::Bit
{
	[[nodiscard]]
	auto constexpr
	(	FirstLiteral
	)	(	Clause
				i_vClause
		)
		noexcept
	->	Clause
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
	)	(	Clause
			&	i_rClause
		)
		noexcept
	->	Clause&
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
		LiteralSentinel
	{};

	struct
		LiteralIterator final
	{
		using
			difference_type
		=	int
		;
		using
			value_type
		=	Clause
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
		->	LiteralIterator&
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
		->	LiteralIterator
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
		)	(	LiteralIterator
			,	LiteralIterator
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	LiteralIterator
					i_vIterator
			,	LiteralSentinel
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
	)	(	Clause
				i_vClause
		)
		noexcept
	->	LiteralIterator
	{	return
		{	i_vClause
		};
	}

	[[nodiscard]]
	auto constexpr
	(	end
	)	(	Clause
		)
		noexcept
	->	LiteralSentinel
	{	return
		{};
	}
}