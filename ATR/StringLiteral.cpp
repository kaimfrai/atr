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
	struct
		StringLiteral final
	:	Meta::DeduceIndexedArray
		<	char
		,	t_nExtent
		>
	{
		using
			IndexedArray
		=	Meta::DeduceIndexedArray
			<	char
			,	t_nExtent
			>
		;

		constexpr
		(	StringLiteral
		)	(	char const
				*	i_aString
			)
		:	IndexedArray
			{	{	+i_aString
				,	t_nExtent
				}
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
		(	i_vLeft.Object
		==	i_vRight.Object
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
	{	return
		(	static_cast
			<	Meta::Value<char const[]> const&
			>(	i_vLeft
			)
		<=>	static_cast
			<	Meta::Value<char const[]> const&
			>(	i_vRight
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
