export module ATR.Base;

export namespace
	ATR
{
	template
		<	typename
				t_tLayout
		>
	struct
		Base
	{
		using
			LayoutType
		=	t_tLayout
		;

		[[no_unique_address]]
		LayoutType
			Layout
		;
	};
}
