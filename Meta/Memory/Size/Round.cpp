export module Meta.Memory.Size.Round;

import Meta.Memory.Size;
import Meta.Math.Sign;

import Std;

export namespace
	Meta::Memory
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	CeilPower2
	)	(	Size<t_nWidth>
				i_nSize
		)
		noexcept
	->	Size<t_nWidth>
	{
		using
			tSize
		=	Size
			<	t_nWidth
			>
		;
		using
			tSizeType
		=	typename
				tSize
			::	SizeType
		;

		auto const
			nValue
		=	i_nSize
		.	get()
		;

		if	(nValue < 0z)
		{
			return
			tSize
			{	-
				static_cast<tSizeType>
				(	::std::bit_floor
					(	Math::Unsigned
						(	-nValue
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
						(	nValue
						)
					)
				)
			};
		}
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	FloorPower2
	)	(	Size<t_nWidth>
				i_nSize
		)
		noexcept
	->	Size<t_nWidth>
	{
		using
			tSize
		=	Size
			<	t_nWidth
			>
		;
		using
			tSizeType
		=	typename
				tSize
			::	SizeType
		;
		auto const
			nValue
		=	i_nSize
		.	get()
		;

		if	(nValue < 0z)
		{	return
			tSize
			{	-
				static_cast<tSizeType>
				(	::std::bit_ceil
					(	Math::Unsigned
						(	-nValue
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
						(	nValue
						)
					)
				)
			};
		}
	}
}
