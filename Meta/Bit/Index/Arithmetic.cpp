export module Meta.Bit.Index.Arithmetic;

import Meta.Math.Next;
import Meta.Math.Prev;
import Meta.Bit.Index;

import Std;

using ::Meta::Math::Next;
using ::Meta::Math::Prev;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	Index<t_nSize>
				i_nLeft
		,	decltype(i_nLeft)
				i_nRight
		)
		noexcept
	->	Index<t_nSize>
	{	return
		Index<t_nSize>
		{	i_nLeft.get()
		+	i_nRight.get()
		};
	}

	template
		<	auto
				t_nSize
		>
	auto constexpr inline
	(	operator+=
	)	(	Index<t_nSize>
			&	i_rIndex
		,	decltype(auto(i_rIndex))
				i_nOffset
		)
		noexcept
	->	Index<t_nSize>&
	{	return
		(	i_rIndex
		=	i_rIndex
		+	i_nOffset
		);
	}

	template
		<	auto
				t_nSize
		>
	auto constexpr inline
	(	operator++
	)	(	Index<t_nSize>
			&	i_rIndex
		)
		noexcept
	->	Index<t_nSize>&
	{	return
		(	i_rIndex
		=	Index<t_nSize>
			{	Next
				(	i_rIndex
				.	get()
				)
			}
		);
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard("Use preincrement when discarding the result")]]
	auto constexpr inline
	(	operator++
	)	(	Index<t_nSize>
			&	i_rIndex
		,	int
		)
		noexcept
	->	Index<t_nSize>
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
				t_nSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator-
	)	(	Index<t_nSize>
				i_nLeft
		,	decltype(i_nLeft)
				i_nRight
		)
		noexcept
	->	Index<t_nSize>
	{	return
		Index<t_nSize>
		{	i_nLeft.get()
		-	i_nRight.get()
		};
	}

	template
		<	auto
				t_nSize
		>
	auto constexpr inline
	(	operator-=
	)	(	Index<t_nSize>
			&	i_rIndex
		,	decltype(auto(i_rIndex))
				i_nOffset
		)
		noexcept
	->	Index<t_nSize>&
	{	return
		(	i_rIndex
		=	i_rIndex
		-	i_nOffset
		);
	}

	template
		<	auto
				t_nSize
		>
	auto constexpr inline
	(	operator--
	)	(	Index<t_nSize>
			&	i_rIndex
		)
		noexcept
	->	Index<t_nSize>&
	{	return
		(	i_rIndex
		=	Index<t_nSize>
			{	Prev
				(	i_rIndex
				.	get()
				)
			}
		);
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard("Use predecrement when discarding the result")]]
	auto constexpr inline
	(	operator--
	)	(	Index<t_nSize>
			&	i_rIndex
		,	int
		)
		noexcept
	->	Index<t_nSize>
	{	return
		::std::exchange
		(	i_rIndex
		,	Prev
			(	i_rIndex
			)
		);
	}
}
