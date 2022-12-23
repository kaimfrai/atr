export module Meta.Bit.Iterator;

import Meta.Bit.IndexLowestOne;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	struct
		Sentinel
	{};

	struct
		IndexIterator
	{
		using difference_type = SSize;
		using value_type = USize;

		USize
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
		->	IndexIterator&
		{	Field &= Field - 1uz;
			return *this;
		}

		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	IndexIterator
		{	return
			std::exchange
			(	*this
			,	std::ranges::next
				(	*this
				)
			);
		}

		friend auto constexpr
		(	operator ==
		)	(	IndexIterator
			,	IndexIterator
			)
			noexcept
		->	bool
		=	default;

		friend auto constexpr
		(	operator ==
		)	(	IndexIterator
					i_vIterator
			,	Sentinel
			)
			noexcept
		->	bool
		{	return
				i_vIterator.Field
			==	0uz
			;
		}
	};
}
