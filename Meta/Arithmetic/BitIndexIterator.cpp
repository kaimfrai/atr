export module Meta.Arithmetic.BitIndexIterator;

import Meta.Bit.Count;
import Meta.Arithmetic.BitField;
import Meta.Arithmetic.BitIndex;
import Meta.Size;

import Std;

export namespace
	Meta::Arithmetic
{
	struct
		BitIndexSentinel
	{};

	template
		<	Bits
				t_nWidth
		>
	struct
		BitIndexIterator
	{
		using difference_type = SSize;
		using value_type = BitIndex<t_nWidth>;

		BitField<t_nWidth>
			Field
		;

		[[nodiscard]]
		auto constexpr
		(	operator *
		)	()	const
			noexcept
		->	value_type
		{	return
			IndexLowestOne
			(	Field
			);
		}

		auto constexpr
		(	operator ++
		)	()	&
			noexcept
		->	BitIndexIterator&
		{	Field.UnsetLowestOne();
			return *this;
		}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	BitIndexIterator
		{	return
			::std::exchange
			(	*this
			,	::std::next
				(	*this
				)
			);
		}

		friend auto constexpr
		(	operator ==
		)	(	BitIndexIterator
			,	BitIndexIterator
			)
			noexcept
		->	bool
		=	default;

		friend auto constexpr
		(	operator ==
		)	(	BitIndexIterator
					i_vIterator
			,	BitIndexSentinel
			)
			noexcept
		->	bool
		{	return
				i_vIterator
			==	BitIndexIterator{}
			;
		}
	};

	template
		<	Bits
				t_nWidth
		>
	(	BitIndexIterator
	)	(	BitField<t_nWidth>
		)
	->	BitIndexIterator
		<	t_nWidth
		>
	;
}
