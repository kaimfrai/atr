export module Meta.Bit.Index.Arithmetic;

import Meta.Math.Next;
import Meta.Math.Prev;
import Meta.Bit.Index;

import std;

using ::Meta::Math::Next;
using ::Meta::Math::Prev;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_vSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	Index<t_vSize>
				i_vLeft
		,	decltype(i_vLeft)
				i_vRight
		)
		noexcept
	->	Index<t_vSize>
	{	return
		Index<t_vSize>
		{	i_vLeft.get()
		+	i_vRight.get()
		};
	}

	template
		<	auto
				t_vSize
		>
	auto constexpr inline
	(	operator+=
	)	(	Index<t_vSize>
			&	i_rIndex
		,	decltype(auto(i_rIndex))
				i_vOffset
		)
		noexcept
	->	Index<t_vSize>&
	{	return
		(	i_rIndex
		=	i_rIndex
		+	i_vOffset
		);
	}

	template
		<	auto
				t_vSize
		>
	auto constexpr inline
	(	operator++
	)	(	Index<t_vSize>
			&	i_rIndex
		)
		noexcept
	->	Index<t_vSize>&
	{	return
		(	i_rIndex
		=	Index<t_vSize>
			{	Next
				(	i_rIndex
				.	get()
				)
			}
		);
	}

	template
		<	auto
				t_vSize
		>
	[[nodiscard("Use preincrement when discarding the result")]]
	auto constexpr inline
	(	operator++
	)	(	Index<t_vSize>
			&	i_rIndex
		,	int
		)
		noexcept
	->	Index<t_vSize>
	{	return
		::std::exchange
		(	i_rIndex
		,	Next
			(	i_rIndex
			)
		);
	}

	template
		<	auto
				t_vSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator-
	)	(	Index<t_vSize>
				i_vLeft
		,	decltype(i_vLeft)
				i_vRight
		)
		noexcept
	->	Index<t_vSize>
	{	return
		Index<t_vSize>
		{	i_vLeft.get()
		-	i_vRight.get()
		};
	}

	template
		<	auto
				t_vSize
		>
	auto constexpr inline
	(	operator-=
	)	(	Index<t_vSize>
			&	i_rIndex
		,	decltype(auto(i_rIndex))
				i_vOffset
		)
		noexcept
	->	Index<t_vSize>&
	{	return
		(	i_rIndex
		=	i_rIndex
		-	i_vOffset
		);
	}

	template
		<	auto
				t_vSize
		>
	auto constexpr inline
	(	operator--
	)	(	Index<t_vSize>
			&	i_rIndex
		)
		noexcept
	->	Index<t_vSize>&
	{	return
		(	i_rIndex
		=	Index<t_vSize>
			{	Prev
				(	i_rIndex
				.	get()
				)
			}
		);
	}

	template
		<	auto
				t_vSize
		>
	[[nodiscard("Use predecrement when discarding the result")]]
	auto constexpr inline
	(	operator--
	)	(	Index<t_vSize>
			&	i_rIndex
		,	int
		)
		noexcept
	->	Index<t_vSize>
	{	return
		::std::exchange
		(	i_rIndex
		,	Prev
			(	i_rIndex
			)
		);
	}
}
