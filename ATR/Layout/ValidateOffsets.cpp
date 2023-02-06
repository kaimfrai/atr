export module ATR.Layout.ValidateOffsets;

import Std;

export namespace
	ATR
{
	template
		<	typename
				t_tLayout
		>
	auto consteval
	(	ValidateOffsets
	)	()
		noexcept
	->	void
	{
		static_assert
		(	::std::is_standard_layout_v
			<	t_tLayout
			>
		,	"Layouts are required to be standard layout!"
		);
		static_assert
		(	::std::is_trivially_default_constructible_v
			<	t_tLayout
			>
		,	"Layouts are required to be trivially constructible!"
		);
		static_assert
		(	::std::is_trivially_destructible_v
			<	t_tLayout
			>
		,	"Layouts are required to be trivially destructible!"
		);
		static_assert
		(	::std::is_trivially_copy_constructible_v
			<	t_tLayout
			>
		,	"Layouts are required to be trivially constructible!"
		);
		static_assert
		(	::std::is_trivially_move_constructible_v
			<	t_tLayout
			>
		,	"Layouts are required to be trivially constructible!"
		);

		if	constexpr
			(	requires
					(	t_tLayout
							c_vLayout
					)
				{	c_vLayout.NorthArea;
					c_vLayout.SouthArea;
				}
			)
		{
			ValidateOffsets
			<	decltype(t_tLayout::NorthArea)
			>();

			ValidateOffsets
			<	decltype(t_tLayout::SouthArea)
			>();

			union
			{	alignas(t_tLayout)
				::std::array<::std::byte, sizeof(t_tLayout)>
					Buffer
				{};
				t_tLayout
					Layout
				;
			}	constexpr vUnion
			{};

			static_assert
			(	(	static_cast<void const*>
					(	::std::addressof
						(	vUnion.Layout.NorthArea
						)
					)
				==	static_cast<void const*>
					(	::std::addressof
						(	vUnion.Buffer
							[	0uz
							]
						)
					)
				)
			,	"Unexpected offset in NorthArea!"
			);

			static_assert
			(	(	static_cast<void const*>
					(	::std::addressof
						(	vUnion.Layout.SouthArea
						)
					)
				==	static_cast<void const*>
					(	::std::addressof
						(	vUnion.Buffer
							[	sizeof t_tLayout::NorthArea
							]
						)
					)
				)
			,	"Unexpected offset in SouthArea!"
			);
		}
	}
}
