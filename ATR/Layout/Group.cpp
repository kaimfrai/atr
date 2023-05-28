export module ATR.Layout.Group;

export namespace
	ATR::Layout
{
	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
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
