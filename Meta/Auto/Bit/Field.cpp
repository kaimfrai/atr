export module Meta.Auto.Bit.Field;

export import Meta.Auto.Var;

import Meta.Auto.Bit.Bool;
import Meta.Auto.Bit.RBool;

import Std;

static_assert
(	::std::endian::native
==	::std::endian::little
,	"Big endian not supported!"
);

export namespace
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

		[[nodiscard]]
		auto static constexpr inline
		(	FromInteger
		)	(	::std::integral auto
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
		->	bool
		{	return
			static_cast<bool>
			(	(	ToInteger
					(	i_rThis
						.	m_vRaw
					)
				>>	i_vIndex
				)
			bitand
				1
			);
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
				ToInteger
				(	i_vThis
					.	m_vRaw
				)
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	int
					i_vShift
			)
			noexcept
		->	Var
		{	return
			FromInteger
			(	ToInteger
				(	i_vLeft
					.	m_vRaw
				)
			<<	i_vShift
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
			(	ToInteger
				(	i_vLeft
					.	m_vRaw
				)
			bitor
				ToInteger
				(	i_vRight
					.	m_vRaw
				)
			);
		}

		auto constexpr inline
		(	operator|=
		)	(	Var
					i_vRight
			)	&
			noexcept
		->	Var&
		{	return
			*	this
			=	*	this
			bitor
				i_vRight
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
			(	ToInteger
				(	i_vArray
					.	m_vRaw
				)
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
}
