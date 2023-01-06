export module Meta.Bit.Iterator;

import Meta.Bit.Field;
import Meta.Bit.LowestOne;
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

		Field
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
		{	Field = UnsetLowestOne(Field);
			return *this;
		}

		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	IndexIterator
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
				i_vIterator
			==	IndexIterator{}
			;
		}
	};
}
