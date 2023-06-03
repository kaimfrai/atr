export module ATR.Layout.ValidateOffsets;

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
	)	(	t_tLayout const
			&	i_rLayout
		)
		noexcept
	->	t_tLayout
	{
		if	constexpr
			(	requires
				{	i_rLayout
					.	NorthArea
					;
					i_rLayout
					.	SouthArea
					;
				}
			)
		{
			ValidateOffsets
			(	i_rLayout
				.	NorthArea
			);

			ValidateOffsets
			(	i_rLayout
				.	SouthArea
			);

			union
			{	alignas(t_tLayout)
				::std::byte
					Buffer
					[	sizeof(t_tLayout)
					]
				{};
				t_tLayout
					Layout
				;
			}	constexpr vUnion
			{};

			static_assert
			(	(	static_cast<void const*>
					(	::std::addressof
						(	vUnion
							.	Layout
							.	NorthArea
						)
					)
				==	static_cast<void const*>
					(	::std::addressof
						(	vUnion
							.	Buffer
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
						(	vUnion
							.	Layout
							.	SouthArea
						)
					)
				==	static_cast<void const*>
					(	::std::addressof
						(	vUnion
							.	Buffer
								[	sizeof
									(	t_tLayout
										::	NorthArea
									)
								]
						)
					)
				)
			,	"Unexpected offset in SouthArea!"
			);
		}

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

		return
			i_rLayout
		;
	}
}
