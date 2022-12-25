export module Meta.Bit.Count;

import Meta.Math.Divide;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	template
		<	USize
				t_nWidth
		>
	requires
		(	t_nWidth
		>	0uz
		)
	struct
		Count
	{
		USize
			Value
		;

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	&
			noexcept
		->	USize&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	USize const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	USize
		{	return Value;	}

		[[nodiscard]]
		explicit(true) constexpr
		(	operator USize
		)	()	const
			noexcept
		{	return get();	}

		template
			<	USize
					t_nTargetWidth
			>
		[[nodiscard]]
		explicit(false) constexpr
		(	operator Count<t_nTargetWidth>
		)	()	const
			noexcept
		{	return
			{	Math::Divide
				(	Value * t_nWidth
				,	t_nTargetWidth
				)
			.	Ceil()
			};
		}

		auto constexpr
		(	operator +=
		)	(	Count
					i_vOffset
			)	&
			noexcept
		->	Count&
		{		get()
			+=	i_vOffset.get()
			;
			return *this;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	Count
					i_vCount
			,	Count
					i_vOffset
			)
			noexcept
		->	Count
		{	return i_vCount += i_vOffset;	}

		auto constexpr
		(	operator ++
		)	()	&
			noexcept
		->	Count&
		{	return *this += Count{1uz};	}

		[[nodiscard("Use preincrement if you discard the value")]]
		auto constexpr
		(	operator ++
		)	(int)	&
			noexcept
		->	Count
		{	return
			{	Value++
			};
		}

		auto constexpr
		(	operator -=
		)	(	Count
					i_vOffset
			)	&
			noexcept
		->	Count&
		{		get()
			-=	i_vOffset.get()
			;
			return *this;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	Count
					i_vCount
			,	Count
					i_vOffset
			)
			noexcept
		->	Count
		{	return i_vCount -= i_vOffset;	}

		auto constexpr
		(	operator --
		)	()	&
			noexcept
		->	Count&
		{	return *this -= Count{1uz};	}

		[[nodiscard("Use predecrement if you discard the value")]]
		auto constexpr
		(	operator --
		)	(int)	&
			noexcept
		->	Count
		{	return
			{	Value--
			};
		}

		auto constexpr
		(	operator *=
		)	(	USize
					i_vScalar
			)	&
			noexcept
		->	Count&
		{		get()
			*=	i_vScalar
			;
			return *this;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator *
		)	(	Count
					i_vCount
			,	USize
					i_vScalar
			)
			noexcept
		->	Count
		{	return i_vCount *= i_vScalar;	}

		auto constexpr
		(	operator /=
		)	(	USize
					i_vScalar
			)	&
			noexcept
		->	Count&
		{		get()
			/=	i_vScalar
			;
			return *this;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator /
		)	(	Count
					i_vCount
			,	USize
					i_vScalar
			)
			noexcept
		->	Count
		{	return i_vCount /= i_vScalar;	}

		[[nodiscard]]
		friend auto constexpr
		(	operator /
		)	(	Count
					i_vLeft
			,	Count
					i_vRight
			)
			noexcept
		->	USize
		{	return i_vLeft.get() / i_vRight.get();	}

		[[nodiscard]]
		auto constexpr
		(	Ceil
		)	()	const
		->	Count
		{	return
			{	static_cast<USize>
				(	::std::bit_ceil
					(	get()
					)
				)
			};
		}

		[[nodiscard]]
		auto constexpr
		(	Floor
		)	()	const
		->	Count
		{	return
			{	static_cast<USize>
				(	::std::bit_floor
					(	get()
					)
				)
			};
		}
	};
}

export namespace
	Meta
{
	using
		Bits
	=	Bit::Count
		<	1uz
		>
	;
}

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	operator <<
	)	(	std::integral auto
				i_vLeft
		,	Bits
				i_vRight
		)
		noexcept
	->	decltype(i_vLeft)
	{	return
		static_cast<decltype(i_vLeft)>
		(	i_vLeft
		<<	i_vRight.get()
		);
	}

	[[nodiscard]]
	auto constexpr
	(	operator <<=
	)	(	std::integral auto
			&	i_rLeft
		,	Bits
				i_vRight
		)
		noexcept
	->	decltype(i_rLeft)
	{	return i_rLeft = i_rLeft << i_vRight;	}

	[[nodiscard]]
	auto constexpr
	(	operator >>
	)	(	std::integral auto
				i_vLeft
		,	Bits
				i_vRight
		)
		noexcept
	->	decltype(i_vLeft)
	{	return
		static_cast<decltype(i_vLeft)>
		(	i_vLeft
		>>	i_vRight.get()
		);
	}

	[[nodiscard]]
	auto constexpr
	(	operator >>=
	)	(	std::integral auto
			&	i_rLeft
		,	Bits
				i_vRight
		)
		noexcept
	->	decltype(i_rLeft)
	{	return i_rLeft = i_rLeft >> i_vRight;	}

	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	Bits
				i_vLeft
		,	Bits
				i_vRight
		)
		noexcept
	->	bool
	{	return
			i_vLeft.Value
		==	i_vRight.Value
		;
	}

	[[nodiscard]]
	auto constexpr
	(	operator <=>
	)	(	Bits
				i_vLeft
		,	Bits
				i_vRight
		)
		noexcept
	->	::std::strong_ordering
	{	return
			i_vLeft.Value
		<=>	i_vRight.Value
		;
	}
}

export namespace
	Meta::inline Literals
{
	[[nodiscard]]
	auto constexpr
	(	operator""_bits
	)	(	unsigned long long
				i_nBits
		)
	->	Bits
	{	return
		{	static_cast<USize>
			(	i_nBits
			)
		};
	}
}
