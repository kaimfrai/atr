export module Meta.Bit.Size;

import Meta.Bit.Count;
import Meta.Math.Divide;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	template
		<	SSize
				t_nWidth
		>
	requires
		(	t_nWidth
		>	0z
		)
	struct
		Size
	{
		static auto constexpr
			Width
		=	t_nWidth
		;

		using
			SizeType
		=	decltype(auto(t_nWidth))
		;

		SizeType
			m_nValue
		;

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	&
			noexcept
		->	SizeType&
		{	return m_nValue;	}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	SizeType const&
		{	return m_nValue;	}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	SizeType
		{	return m_nValue;	}

		[[nodiscard]]
		explicit(true) constexpr
		(	operator SizeType
		)	()	const
			noexcept
		{	return get();	}

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(false) constexpr
		(	operator Size<t_nOtherWidth>
		)	()	const
			noexcept
		{	return
			{	Math::Divide
				(	get()
				*	t_nWidth
				,	t_nOtherWidth
				)
			.	Ceil()
			};
		}

		auto constexpr
		(	operator *=
		)	(	SizeType
					i_vScalar
			)	&
			noexcept
		->	Size&
		{		get()
			*=	i_vScalar
			;
			return *this;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator *
		)	(	Size
					i_vSize
			,	SizeType
					i_vScalar
			)
			noexcept
		->	Size
		{	return i_vSize *= i_vScalar;	}

		auto constexpr
		(	operator *=
		)	(	Count<t_nWidth>
					i_vCount
			)	&
			noexcept
		->	Size&
		{		get()
			*=	static_cast<SizeType>
				(	i_vCount.get()
				)
			;
			return *this;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator *
		)	(	Size
					i_vSize
			,	Count<t_nWidth>
					i_vCount
			)
			noexcept
		->	Size
		{	return i_vSize *= i_vCount;	}

		auto constexpr
		(	operator /=
		)	(	SizeType
					i_vScalar
			)	&
			noexcept
		->	Size&
		{		get()
			/=	i_vScalar
			;
			return *this;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator /
		)	(	Size
					i_vSize
			,	SizeType
					i_vScalar
			)
			noexcept
		->	Size
		{	return i_vSize /= i_vScalar;	}

		[[nodiscard]]
		friend auto constexpr
		(	operator /
		)	(	Size
					i_vSize
			,	Count<t_nWidth>
					i_vCount
			)
			noexcept
		->	Size
		{
			(	i_vSize.get()
			=	Math::Divide
				(	i_vSize.get()
				,	static_cast<SSize>(i_vCount.get())
				)
			.	Floor()
			);

			return i_vSize;
		}

		auto constexpr
		(	operator /=
		)	(	Count<t_nWidth>
					i_vCount
			)	&
			noexcept
		->	Size&
		{	return *this = *this / i_vCount;	}

		[[nodiscard]]
		friend auto constexpr
		(	operator /
		)	(	Size
					i_vLeft
			,	Size
					i_vRight
			)
			noexcept
		->	SizeType
		{	return i_vLeft.get() / i_vRight.get();	}

		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	Size
					i_nSize
			)
			noexcept
		->	Size
		{	return
			{	-
				i_nSize
			.	get()
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	CeilPower2
		)	(	Size
					i_nSize
			)
			noexcept
		->	Size
		{
			auto const
				nValue
			=	i_nSize
			.	get()
			;

			if	(nValue < 0z)
			{
				return
				Size
				{	-
					static_cast<SizeType>
					(	::std::bit_floor
						(	static_cast<::std::make_unsigned_t<SizeType>>
							(	-nValue
							)
						)
					)
				};
			}
			else
			{
				return
				Size
				{	static_cast<SizeType>
					(	::std::bit_ceil
						(	static_cast<::std::make_unsigned_t<SizeType>>
							(	nValue
							)
						)
					)
				};
			}
		}

		[[nodiscard]]
		friend auto constexpr
		(	FloorPower2
		)	(	Size
					i_nSize
			)
			noexcept
		->	Size
		{
			auto const
				nValue
			=	i_nSize
			.	get()
			;

			if	(nValue < 0z)
			{	return
				Size
				{	-
					static_cast<SizeType>
					(	::std::bit_ceil
						(	static_cast<::std::make_unsigned_t<SizeType>>
							(	-nValue
							)
						)
					)
				};
			}
			else
			{	return
				Size
				{	static_cast<SizeType>
					(	::std::bit_floor
						(	static_cast<::std::make_unsigned_t<SizeType>>
							(	nValue
							)
						)
					)
				};
			}
		}

		auto constexpr
		(	operator +=
		)	(	Size
					i_vOffset
			)	&
			noexcept
		->	Size&
		{		get()
			+=	i_vOffset.get()
			;
			return *this;
		}

		auto constexpr
		(	operator -=
		)	(	Size
					i_vOffset
			)	&
			noexcept
		->	Size&
		{		get()
			-=	i_vOffset.get()
			;
			return *this;
		}

		auto constexpr
		(	operator ++
		)	()	&
			noexcept
		->	Size&
		{	return *this += Size{1z};	}

		[[nodiscard("Use preincrement if you discard the value")]]
		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	Size
		{	return
			{	get()++
			};
		}

		auto constexpr
		(	operator --
		)	()	&
			noexcept
		->	Size&
		{	return *this -= Size{1z};	}

		[[nodiscard("Use predecrement if you discard the value")]]
		auto constexpr
		(	operator --
		)	(int)	&
			noexcept
		->	Size
		{	return
			{	get()--
			};
		}
	};
}

export namespace
	Meta
{
	using
		BitSize
	=	Bit::Size
		<	1uz
		>
	;
}

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	BitSize
				i_vSize
		,	BitSize
				i_vOffset
		)
		noexcept
	->	BitSize
	{	return i_vSize += i_vOffset;	}

	[[nodiscard]]
	auto constexpr
	(	operator -
	)	(	BitSize
				i_vSize
		,	BitSize
				i_vOffset
		)
		noexcept
	->	BitSize
	{	return i_vSize -= i_vOffset;	}

	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	BitSize
				i_vLeft
		,	BitSize
				i_vRight
		)
		noexcept
	->	bool
	{	return
			i_vLeft.get()
		==	i_vRight.get()
		;
	}

	[[nodiscard]]
	auto constexpr
	(	operator <=>
	)	(	BitSize
				i_vLeft
		,	BitSize
				i_vRight
		)
		noexcept
	->	::std::strong_ordering
	{	return
			i_vLeft.get()
		<=>	i_vRight.get()
		;
	}
}

export namespace
	Meta::inline Literals
{
	[[nodiscard]]
	auto constexpr
	(	operator""_bit
	)	(	unsigned long long
				i_nBits
		)
	->	BitSize
	{	return
		{	static_cast<BitSize::SizeType>
			(	i_nBits
			)
		};
	}
}
