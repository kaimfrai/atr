export module Meta.Auto.Bit.Field;

export import Meta.Auto.Var;

import Meta.Auto.Bit.Bool;
import Meta.Auto.Bit.RBool;
import Meta.Memory.Constraint;

import std;

static_assert
(	::std::endian::native
==	::std::endian::little
,	"Big endian not supported!"
);

namespace
	Meta::Auto
{
	auto constexpr inline
		BitsPerByte
	=	::std::numeric_limits<BoolRaw>
		::	digits
	+	::std::numeric_limits<BoolRaw>
		::	is_signed
	;

	[[nodiscard]]
	auto constexpr inline
	(	ToInteger
	)	(	BoolRaw const
			(&	i_rBytes
			)	[	sizeof(::std::uint8_t)
				]
		)
		noexcept
	->	::std::uint8_t
	{	return
		::std::bit_cast<::std::uint8_t>
		(	i_rBytes
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	ToInteger
	)	(	BoolRaw const
			(&	i_rBytes
			)	[	sizeof(::std::uint16_t)
				]
		)
		noexcept
	->	::std::uint16_t
	{	return
		::std::bit_cast<::std::uint16_t>
		(	i_rBytes
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	ToInteger
	)	(	BoolRaw const
			(&	i_rBytes
			)	[	sizeof(::std::uint32_t)
				]
		)
		noexcept
	->	::std::uint32_t
	{	return
		::std::bit_cast<::std::uint32_t>
		(	i_rBytes
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	ToInteger
	)	(	BoolRaw const
			(&	i_rBytes
			)	[	sizeof(::std::uint64_t)
				]
		)
		noexcept
	->	::std::uint64_t
	{	return
		::std::bit_cast<::std::uint64_t>
		(	i_rBytes
		);
	}
}

export namespace
	Meta::Auto
{
	template
		<	::std::size_t
				t_vExtent
		>
	struct
		Var
		<	bool
				[	t_vExtent
				]
		>
	{
		auto static constexpr inline
			ByteCount
		=	::std::bit_ceil
			(	t_vExtent
			/	BitsPerByte
			)
		;

		BoolRaw
			m_vRaw
			alignas(ByteCount)
			[	ByteCount
			]
		;

		using
			IntegerType
		=	decltype
			(	ToInteger
				(	m_vRaw
				)
			)
		;

		using
			ArithmeticType
		=	decltype
			(	+
				IntegerType
				{}
			)
		;

		[[nodiscard]]
		auto static constexpr inline
		(	FromInteger
		)	(	ArithmeticType
					i_vInteger
			)
			noexcept
		->	Var
		{	return
			::std::bit_cast<Var>
			(	static_cast<IntegerType>
				(	i_vInteger
				)
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	ToInteger
		)	(	this Var
					i_vThis
			)
			noexcept
		->	IntegerType
		{	return
			::Meta::Auto::ToInteger
			(	i_vThis
				.	m_vRaw
			);
		}

		auto constexpr inline
		(	operator=
		)	(	ArithmeticType
					i_vInteger
			)	&
			noexcept
		->	Var&
		{	return
			*	this
			=	FromInteger
				(	i_vInteger
				)
			;
		}

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator bool
		)	(	this Var
					i_vThis
			)
			noexcept
		{	return
				i_vThis
				.	ToInteger
					()
			!=	IntegerType
				{}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	this Var
				&	i_rThis
			,	::std::ptrdiff_t
					i_vIndex
			)
			noexcept
		->	Var<bool&>
		{	return
			{	(	i_rThis
					.	m_vRaw
				+	(	i_vIndex
					/	BitsPerByte
					)
				)
			,	(	1
				<<	(	i_vIndex
					%	BitsPerByte
					)
				)
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	this Var const
				&	i_rThis
			,	::std::ptrdiff_t
					i_vIndex
			)
			noexcept
		->	Var<bool>
		{	return
			{	static_cast<BoolRaw>
				(	(	i_rThis
						.	ToInteger
							()
					>>	i_vIndex
					)
				bitand
					1
				)
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator compl
		)	(	this Var
					i_vThis
			)
			noexcept
		->	Var
		{	return
			FromInteger
			(	compl
				i_vThis
				.	ToInteger
					()
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator bitor
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
		{	return
			FromInteger
			(	i_vLeft
				.	ToInteger
					()
			bitor
				i_vRight
				.	ToInteger
					()
			);
		}

		auto constexpr inline
		(	operator|=
		)	(	this Var
				&	i_rLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var&
		{	return
				i_rLeft
			=	i_rLeft
			bitor
				i_vRight
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator bitand
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
		{	return
			FromInteger
			(	i_vLeft
				.	ToInteger
					()
			bitand
				i_vRight
				.	ToInteger
					()
			);
		}

		auto constexpr inline
		(	operator&=
		)	(	this Var
				&	i_rLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var&
		{	return
				i_rLeft
			=	i_rLeft
			bitand
				i_vRight
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator xor
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
		{	return
			FromInteger
			(	i_vLeft
				.	ToInteger
					()
			xor	i_vRight
				.	ToInteger
					()
			);
		}

		auto constexpr inline
		(	operator^=
		)	(	this Var
				&	i_rLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var&
		{	return
				i_rLeft
			=	i_rLeft
			xor	i_vRight
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	Count
		)	(	Var
					i_vArray
			)
			noexcept
		->	auto
		{	return
			::std::popcount
			(	i_vArray
				.	ToInteger
					()
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	Width
		)	(	Var
					i_vArray
			)
			noexcept
		->	auto
		{	return
			::std::bit_width
			(	i_vArray
				.	ToInteger
					()
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Var
			,	Var
			)
			noexcept
		->	bool
		=	default;
	};

	template
		<	::std::size_t
				t_vExtent
		>
	using
		Field
	=	Var
		<	bool
				[	t_vExtent
				]
		>
	;
}

export namespace
	Meta::Memory
{
	template
		<	::std::size_t
				t_vExtent
		>
	Constraint constexpr inline
		Constraint_Of
		<	::Meta::Auto::Field
			<	t_vExtent
			>
		>
	{	.	Align
		=	{	::std::countr_zero
				(	t_vExtent
				)
			+	1
			}
	,	.	Size
		=	{	t_vExtent
			}
	};
}
