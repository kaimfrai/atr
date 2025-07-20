export module Meta.Logic.Bit.LiteralIterator;

import Meta.Logic.Bit.Clause;
import Meta.Bit.Field.Arithmetic;
import Meta.Bit.Field.Compare;
import Meta.Bit.Field.LowestOne;

import std;

export namespace
	Meta::Logic::Bit
{
	[[nodiscard]]
	auto constexpr inline
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

	auto constexpr inline
	(	EraseFirstLiteral
	)	(	Clause
			&	i_rClause
		)
		noexcept
	->	Clause&
	{
		auto const
			vCombined
		=	i_rClause.Positive
		bitor
			i_rClause.Negative
		;
		UnsetLowestOne
		(	i_rClause.Positive
		,	vCombined
		);
		UnsetLowestOne
		(	i_rClause.Negative
		,	vCombined
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
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	value_type
		{	return
			FirstLiteral
			(	m_vClause
			);
		}

		auto constexpr inline
		(	operator++
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
		auto constexpr inline
		(	operator++
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
		auto friend constexpr inline
		(	operator==
		)	(	LiteralIterator
			,	LiteralIterator
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
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
	auto constexpr inline
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
	auto constexpr inline
	(	end
	)	(	Clause
		)
		noexcept
	->	LiteralSentinel
	{	return
		{};
	}
}
