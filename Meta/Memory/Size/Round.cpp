export module Meta.Memory.Size.Round;

import Meta.Memory.Size;

import Std;

export namespace
	Meta::Memory
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
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
					(	static_cast<::std::make_unsigned_t<tSizeType>>
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
					(	static_cast<::std::make_unsigned_t<tSizeType>>
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
		auto constexpr
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
					(	static_cast<::std::make_unsigned_t<tSizeType>>
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
					(	static_cast<::std::make_unsigned_t<tSizeType>>
						(	nValue
						)
					)
				)
			};
		}
	}
}
