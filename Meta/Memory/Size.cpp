export module Meta.Memory.Size;

import Meta.Memory.Count;
import Meta.Math.Divide;
import Meta.Size;

import Std;

export namespace
	Meta::Memory
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
	};

	template
		<	typename
				t_tObject
		>
	using
		ByteWidth
	=	Size
		<	::std::numeric_limits
			<	::std::underlying_type_t
				<	::std::byte
				>
			>
		::	digits
		*	sizeof(t_tObject)
		>
	;
}

export namespace
	Meta
{
	using
		BitSize
	=	Memory::Size
		<	1uz
		>
	;

	using
		ByteSize
	=	Memory::ByteWidth
		<	::std::byte
		>
	;
}

export namespace
	Meta::Memory
{
	template
		<	typename
				t_tObject
		>
	ByteSize constexpr inline
		SizeOf
	{	sizeof(t_tObject)
	};
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
		noexcept
	->	BitSize
	{	return
		{	static_cast<BitSize::SizeType>
			(	i_nBits
			)
		};
	}

	[[nodiscard]]
	auto constexpr
	(	operator""_byte
	)	(	unsigned long long
				i_nBytes
		)
		noexcept
	->	ByteSize
	{	return
		{	static_cast<ByteSize::SizeType>
			(	i_nBytes
			)
		};
	}
}
