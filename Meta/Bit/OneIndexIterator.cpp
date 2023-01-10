export module Meta.Bit.OneIndexIterator;

import Meta.Memory.Size;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
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
		using value_type = Index<t_nWidth>;

		Field<t_nWidth>
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
	)	(	Field<t_nWidth>
		)
	->	OneIndexIterator
		<	t_nWidth
		>
	;
}
