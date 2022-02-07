export module ATR.StringLiteral;

export import Std;
export import Meta.Integer;
export import Meta.Value;

export namespace
	ATR
{
	struct
		StringView final
	:	Meta::Value<char const[]>
	{
		using Meta::Value<char const[]>::Value;
	};

	template
		<	Meta::USize
				t_nExtent
		>
	requires
		(	t_nExtent
		>=	2uz
		)
	struct
		StringLiteral final
	:	Meta::Value
		<	char
				[	t_nExtent
				-	1uz
				]
		>
	{
		constexpr
		(	StringLiteral
		)	(	char const
				*	i_aString
			)
		:	Meta::Value<char[t_nExtent - 1uz]>
			{	+i_aString
			}
		{}

		constexpr
		(	StringLiteral
		)	(	Meta::Value<char> const
				*	i_aString
			)
		:	Meta::Value<char[t_nExtent - 1uz]>
			{	+i_aString
			}
		{}

		constexpr
		(	operator auto
		)	()	const
		{	return
			StringView
			{	this->Object
			,	t_nExtent - 1uz
			};
		}
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
		>
	;

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	auto constexpr
	(	operator==
	)	(	StringView const
			&	i_rLeft
		,	StringView const
			&	i_rRight
		)
	->	bool
	{	return
		(	static_cast
			<	Meta::Value<char const[]> const&
			>(	i_rLeft
			)
		==	static_cast
			<	Meta::Value<char const[]> const&
			>(	i_rRight
			)
		);
	}

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	auto constexpr
	(	operator<=>
	)	(	StringView const
			&	i_rLeft
		,	StringView const
			&	i_rRight
		)
	->	::std::strong_ordering
	{	return
		(	static_cast
			<	Meta::Value<char const[]> const&
			>(	i_rLeft
			)
		<=>	static_cast
			<	Meta::Value<char const[]> const&
			>(	i_rRight
			)
		);
	}

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	auto constexpr
	(	starts_with
	)	(	StringView
				i_vLeft
		,	StringView
				i_vRight
		)
	->	bool
	{	return
		Meta::starts_with
		(	i_vLeft
		,	i_vRight
		);
	}

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	auto constexpr
	(	ends_with
	)	(	StringView
				i_vLeft
		,	StringView
				i_vRight
		)
	->	bool
	{	return
		Meta::ends_with
		(	i_vLeft
		,	i_vRight
		);
	}
}
