export module Meta.Token:Array;

export import :Type;

export import Meta.Arithmetic;

export namespace
	Meta::Token
{
	template
		<	USize
				t_nExtent
		>
	struct
		Extent
	{
		template
			<	typename
					t_tElement
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tElement>
			,	Extent
			)
		->	TypeToken<t_tElement[t_nExtent]>
		{	return {};	}

		template
			<	typename
					t_tElement
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tElement[t_nExtent]>
			,	Extent
			)
		->	TypeToken<t_tElement>
		{	return {};	}
	};

	template
		<>
	struct
		Extent<0uz>
	{
		template
			<	typename
					t_tElement
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tElement>
			,	Extent
			)
		->	TypeToken<t_tElement[]>
		{	return {};	}

		template
			<	typename
					t_tElement
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tElement[]>
			,	Extent
			)
		->	TypeToken<t_tElement>
		{	return {};	}
	};
}

export namespace
	Meta
{
	template
		<	USize
				t_nExtent
		>
	Token::Extent<t_nExtent> constexpr inline
		Extent
	{};

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	TypeToken<t_tElement[t_nExtent]> constexpr
		ArrayType
	{};

	template
		<	typename
				t_tElement
		>
	TypeToken<t_tElement[]> constexpr
		ArrayType
		<	t_tElement
		,	0uz
		>
	{};
}
