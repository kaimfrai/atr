export module ATR.Layout.Fork;

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
		Fork
	{
		t_tNorth
			NorthArea
		;

		t_tSouth
			SouthArea
		;
	};
}
