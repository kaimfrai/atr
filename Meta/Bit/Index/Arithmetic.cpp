export module Meta.Bit.Index.Arithmetic;

import Meta.Bit.Index;

import Std;

using namespace Meta::Literals;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	Index<t_nSize>
				i_nLeft
		,	Index<t_nSize>
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
	auto constexpr
	(	operator +=
	)	(	Index<t_nSize>
			&	i_rIndex
		,	Index<t_nSize>
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
	auto constexpr
	(	operator ++
	)	(	Index<t_nSize>
			&	i_rIndex
		)
		noexcept
	->	Index<t_nSize>&
	{	return
		(	i_rIndex
		=	Index<t_nSize>
			{	i_rIndex
			.	get()
			+	1
			}
		);
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard("Use preincrement when discarding the result")]]
	auto constexpr
	(	operator ++
	)	(	Index<t_nSize>
			&	i_rIndex
		,	int
		)
		noexcept
	->	Index<t_nSize>
	{	return
		::std::exchange
		(	i_rIndex
		,	Index<t_nSize>
			{	i_rIndex
			.	get()
			+	1
			}
		);
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
	(	operator -
	)	(	Index<t_nSize>
				i_nLeft
		,	Index<t_nSize>
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
	auto constexpr
	(	operator -=
	)	(	Index<t_nSize>
			&	i_rIndex
		,	Index<t_nSize>
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
	auto constexpr
	(	operator --
	)	(	Index<t_nSize>
			&	i_rIndex
		)
		noexcept
	->	Index<t_nSize>&
	{	return
		(	i_rIndex
		=	Index<t_nSize>
			{	i_rIndex
			.	get()
			-	1
			}
		);
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard("Use predecrement when discarding the result")]]
	auto constexpr
	(	operator --
	)	(	Index<t_nSize>
			&	i_rIndex
		,	int
		)
		noexcept
	->	Index<t_nSize>
	{	return
		::std::exchange
		(	i_rIndex
		,	Index<t_nSize>
			{	i_rIndex
			.	get()
			-	1
			}
		);
	}
}
