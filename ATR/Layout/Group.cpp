export module ATR.Layout.Group;

export namespace
	ATR::Layout
{
	template
		<	typename
				t_tNorth
		,	typename
			...	t_tpSouth
		>
	struct
		Group
	{
		using
			NorthType
		=	t_tNorth
		;

		using
			SouthType
		=	Group
			<	t_tpSouth
				...
			>
		;

		NorthType
			NorthArea
		;

		SouthType
			SouthArea
		;
	};

	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		>
	struct
		Group
		<	t_tNorth
		,	t_tSouth
		>
	{
		using
			NorthType
		=	t_tNorth
		;

		using
			SouthType
		=	t_tSouth
		;

		NorthType
			NorthArea
		;

		SouthType
			SouthArea
		;
	};
}
