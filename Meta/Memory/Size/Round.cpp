export module Meta.Memory.Size.Round;

import Meta.Memory.Size;
import Meta.Math.Sign;

import Std;

export namespace
	Meta::Memory
{
	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	CeilPower2
	)	(	Size<t_vWidth>
				i_vSize
		)
		noexcept
	->	Size<t_vWidth>
	{
		using
			tSize
		=	Size
			<	t_vWidth
			>
		;
		using
			tSizeType
		=	typename
				tSize
			::	SizeType
		;

		auto const
			vValue
		=	i_vSize
		.	get()
		;

		if	(vValue < 0z)
		{
			return
			tSize
			{	-
				static_cast<tSizeType>
				(	::std::bit_floor
					(	Math::Unsigned
						(	-vValue
						)
					)
				)
			};
		}
		else
		{
			return
			tSize
			{	static_cast<tSizeType>
				(	::std::bit_ceil
					(	Math::Unsigned
						(	vValue
						)
					)
				)
			};
		}
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	FloorPower2
	)	(	Size<t_vWidth>
				i_vSize
		)
		noexcept
	->	Size<t_vWidth>
	{
		using
			tSize
		=	Size
			<	t_vWidth
			>
		;
		using
			tSizeType
		=	typename
				tSize
			::	SizeType
		;
		auto const
			vValue
		=	i_vSize
		.	get()
		;

		if	(vValue < 0z)
		{	return
			tSize
			{	-
				static_cast<tSizeType>
				(	::std::bit_ceil
					(	Math::Unsigned
						(	-vValue
						)
					)
				)
			};
		}
		else
		{	return
			tSize
			{	static_cast<tSizeType>
				(	::std::bit_floor
					(	Math::Unsigned
						(	vValue
						)
					)
				)
			};
		}
	}
}
