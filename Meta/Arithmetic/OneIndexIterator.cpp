export module Meta.Arithmetic.OneIndexIterator;

import Meta.Bit.Size;
import Meta.Arithmetic.BitField;
import Meta.Arithmetic.BitIndex;
import Meta.Size;

import Std;

export namespace
	Meta::Arithmetic
{
	struct
		OneIndexSentinel
	{};

	template
		<	BitSize
				t_nWidth
		>
	struct
		OneIndexIterator
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
		->	OneIndexIterator&
		{	Field.UnsetLowestOne();
			return *this;
		}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	OneIndexIterator
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
		)	(	OneIndexIterator
			,	OneIndexIterator
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	OneIndexIterator
					i_vIterator
			,	OneIndexSentinel
			)
			noexcept
		->	bool
		{	return
				i_vIterator
			==	OneIndexIterator{}
			;
		}
	};

	template
		<	auto
				t_nWidth
		>
	(	OneIndexIterator
	)	(	BitField<t_nWidth>
		)
	->	OneIndexIterator
		<	t_nWidth
		>
	;
}
