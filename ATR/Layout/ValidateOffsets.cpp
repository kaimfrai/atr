export module ATR.Layout.ValidateOffsets;

import Std;

export namespace
	ATR
{
	template
		<	typename
				t_tLayout
		>
	[[nodiscard]]
	auto consteval
	(	ValidateOffsets
	)	()
		noexcept
	->	bool
	{
		static_assert
		(	::std::is_standard_layout_v
			<	t_tLayout
			>
		);

		union
		{	alignas(t_tLayout)
			::std::array<::std::byte, sizeof(t_tLayout)>
				Buffer
			{};
			t_tLayout
				Layout
			;
		}	vUnion
		{};

		return
			(	static_cast<void*>
				(	::std::addressof
					(	vUnion.Layout.NorthArea
					)
				)
			==	static_cast<void*>
				(	::std::addressof
					(	vUnion.Buffer
						[	0uz
						]
					)
				)
			)
		and	(	static_cast<void*>
				(	::std::addressof
					(	vUnion.Layout.SouthArea
					)
				)
			==	static_cast<void*>
				(	::std::addressof
					(	vUnion.Buffer
						[	sizeof t_tLayout::NorthArea
						]
					)
				)
			)
		;
	}
}
