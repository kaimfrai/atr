export module ATR:Layout.ValidateOffsets;

import Std;

export namespace
	ATR
{
	template
		<	typename
				t_tLayout
		>
	auto constexpr
	(	ValidateOffsets
	)	()
	->	bool
	{
		static_assert(::std::is_standard_layout_v<t_tLayout>);
		union
		{	alignas(t_tLayout) ::std::byte vBuffer[sizeof(t_tLayout)];
			t_tLayout vLayout;
		}	vUnion;

		return
			(	static_cast<void*>(&vUnion.vLayout.NorthArea)
			==	static_cast<void*>(&vUnion.vBuffer[0uz])
			)
		and	(	static_cast<void*>(&vUnion.vLayout.SouthArea)
			==	static_cast<void*>(&vUnion.vBuffer[sizeof(t_tLayout::NorthArea)])
			)
		;
	}
}
