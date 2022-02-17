export module Meta.Type.Array;

export import Meta.Type;
export import Meta.Integer;

export namespace
	Meta::Token
{
	template
		<	USize
				t_nExtent
		>
	struct
		Extent final
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
		Extent<0uz> final
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
}
