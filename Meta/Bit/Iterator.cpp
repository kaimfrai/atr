export module Meta.Bit.Iterator;

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

		static auto constexpr
		(	ShiftField
		)	(	USize
				&	i_rField
			,	value_type
				&	i_rIndex
			)
			noexcept
		->	void
		{
			i_rField >>= 1uz;
			++i_rIndex;
		}

		[[nodiscard]]
		static auto constexpr
		(	NextIndex
		)	(	USize
				&	i_rField
			,	value_type
					i_nIndex
			)
			noexcept
		->	value_type
		{
			if	(i_rField == 0uz)
				return i_nIndex;

			while
				(	not
					(	i_rField
					bitand
						1uz
					)
				)
			{
				ShiftField(i_rField, i_nIndex);
			}

			return
				i_nIndex
			;
		}

		value_type
			Index
		=	NextIndex
			(	Field
			,	value_type{}
			)
		;

		[[nodiscard]]
		auto constexpr
		(	operator *
		)	()	const
			noexcept
		->	value_type
		{	return Index;	}

		auto constexpr
		(	operator ++
		)	()	&
			noexcept
		->	IndexIterator&
		{
			ShiftField(Field, Index);
			Index = NextIndex(Field, Index);

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
