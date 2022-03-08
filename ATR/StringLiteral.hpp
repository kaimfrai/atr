export module ATR:StringLiteral;

export import Meta.Data;
export import Meta.Arithmetic;

export import Std;

export namespace
	ATR
{
	struct
		StringView final
	{
		char const*
			Data
		;

		Meta::USize
			Size
		;

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

	template
		<	Meta::USize
				t_nExtent
		>
	struct
		StringLiteral final
	:	Meta::ArrayValue
		<	char
		,	t_nExtent
		>
	{
		constexpr
		(	StringLiteral
		)	()
		=	default;

		constexpr
		(	StringLiteral
		)	(	char const
				*	i_aString
			)
		:	Meta::ArrayValue
			<	char
			,	t_nExtent
			>{	i_aString
			}
		{}
	};

	template
		<	Meta::USize
				t_nExtent
		>
	(	StringLiteral
	)	(	char const
			(&)	[	t_nExtent
				]
		)
	->	StringLiteral
		<	t_nExtent
		-	1uz
		>
	;

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	auto constexpr
	(	operator==
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
	auto constexpr
	(	operator<=>
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
}
