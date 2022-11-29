export module Meta.ID:StringView;

export import Meta.Arithmetic;

import Std;

export namespace
	Meta
{
	struct
		StringView final
	{
		char const*
			Data
		;

		USize
			Size
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	USize
					t_nIndex
			)	const
		->	char const&
		{	return Data[t_nIndex];	}

		[[nodiscard]]
		auto constexpr
		(	empty
		)	()	const
			noexcept
		->	bool
		{	return Size == 0uz;	}

		explicit constexpr
		(	operator bool
		)	()	const
			noexcept
		{	return not empty();	}

		auto constexpr
		(	data
		)	()	const
			noexcept
		->	char const*
		{	return Data;	}

		auto constexpr
		(	size
		)	()	const
			noexcept
		->	Meta::USize
		{	return Size;	}

		friend auto constexpr
		(	begin
		)	(	StringView
					i_vView
			)
		->	char const*
		{	return i_vView.Data;	}

		friend auto constexpr
		(	end
		)	(	StringView
					i_vView
			)
		->	char const*
		{	return i_vView.Data + i_vView.Size;	}
	};

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	StringView
				i_vLeft
		,	StringView
				i_vRight
		)
	->	bool
	{	return
		(	i_vLeft.Data
		==	i_vRight.Data
		);
	}

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	[[nodiscard]]
	auto constexpr
	(	operator <=>
	)	(	StringView
				i_vLeft
		,	StringView
				i_vRight
		)
	->	::std::strong_ordering
	{
		//	taken and modified from
		//	https://en.cppreference.com/w/cpp/algorithm/lexicographical_compare_three_way
		auto vLeftPos = begin(i_vLeft);
		auto const vLeftEnd = end(i_vLeft);
		bool bLeftRemaining = (vLeftPos != vLeftEnd);

		auto vRightPos = begin(i_vRight);
		auto const vRightEnd = end(i_vRight);
		bool bRightRemaining = (vRightPos != vRightEnd);

		for	(
			;	(	bLeftRemaining
				and	bRightRemaining
				)
			;		bLeftRemaining
				=	(++vLeftPos != vLeftEnd)
			,		bRightRemaining
				=	(++vRightPos != vRightEnd)
			)
		{
			auto const
				vResult
			=	*vLeftPos
			<=>	*vRightPos
			;
			if	(vResult != 0)
				return vResult;
		}

		if	(bLeftRemaining)
			return ::std::strong_ordering::greater;
		if	(bRightRemaining)
			return ::std::strong_ordering::less;

		return ::std::strong_ordering::equal;
	}

	namespace
		String
	{
		template
			<	char
					t_cChar
			>
		auto constexpr inline
			Char
		=	t_cChar
		;
	}

	template
		<	char
				t_cChar
		>
	StringView constexpr inline
		SingleView
	=	StringView
		{	&String::Char<t_cChar>
		,	1uz
		}
	;
}
