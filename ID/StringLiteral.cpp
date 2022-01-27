export module ID.StringLiteral;

export import Meta.Integer;
export import Meta.Value;

export import Std;
export import Std.Concepts;

export namespace
	ID
{
	struct
		StringView final
	:	Meta::Value<Meta::Value<char> const[]>
	{
		using Meta::Value<Meta::Value<char> const[]>::Value;
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
		(	operator auto
		)	()	const
		{	return
			StringView
			{	this->m_vValue
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
			<	Meta::Value<Meta::Value<char> const[]> const&
			>(	i_rLeft
			)
		==	static_cast
			<	Meta::Value<Meta::Value<char> const[]> const&
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
			<	Meta::Value<Meta::Value<char> const[]> const&
			>(	i_rLeft
			)
		<=>	static_cast
			<	Meta::Value<Meta::Value<char> const[]> const&
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

	template
		<	typename
				t_tStringLiteral
		>
	concept
		StringLiteralInstance
	=	Std::ValuePackInstanceOf
		<	t_tStringLiteral
		,	StringLiteral
		>
	;

	template
		<	typename
				t_tStringLiteral
		>
	concept
		PseudoStringLiteral
	=	StringLiteralInstance
		<	t_tStringLiteral
		>
	or	Std::ConvertibleToValuePackInstance
		<	t_tStringLiteral
		,	StringLiteral
		>
	;

}

static_assert
(	ID::StringLiteralInstance
	<	ID::StringLiteral
		<	5
		>
	>
and	not
	ID::StringLiteralInstance
	<	char const(&)[5]
	>
);

static_assert
(	ID::PseudoStringLiteral
	<	ID::StringLiteral
		<	5
		>
	>
and	ID::PseudoStringLiteral
	<	char const(&)[5]
	>
);
