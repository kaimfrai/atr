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
		// can't use mutable here
		struct
			FakeLayout
		{
			alignas(decltype(t_tLayout::NorthArea))
			::std::byte NorthArea
				[sizeof(t_tLayout::NorthArea)]
			;
			alignas(decltype(t_tLayout::SouthArea))
			::std::byte SouthArea
				[sizeof(t_tLayout::SouthArea)]
			;
		};
		static_assert(sizeof(FakeLayout) == sizeof(t_tLayout));
		static_assert(alignof(FakeLayout) == alignof(t_tLayout));
		union
		{	alignas(t_tLayout) ::std::byte vBuffer[sizeof(t_tLayout)];
			FakeLayout vLayout;
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
