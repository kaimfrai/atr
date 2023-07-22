export module Meta.String.Hash;

import Std;

export namespace
	Meta::String
{
	struct
		Hash
	{
		::std::uint64_t static constexpr inline
			InitialValue
		=	0x4000'0000'0000'0000
		;

		::std::uint64_t
			Value
		{};

		::std::uint64_t
			Multiplier
		{};

		explicit(false) constexpr
		(	Hash
		)	()
			noexcept
		=	default;

		explicit(true) constexpr
		(	Hash
		)	(	char const
				*	i_aString
			)
			noexcept
		:	Value
			{	InitialValue
			}
		,	Multiplier
			{	1u
			}
		{
			::std::uint64_t static constexpr
				vPerCharMultiplier
			=	//	Value found by trial and error
				//	Produces the best distribution for common chars
				0x2102'C408'1020'4005
			;

			for	(
				;	*	i_aString
				;	++	i_aString
				)
			{
				Value
				*=	vPerCharMultiplier
				;

				Value
				+=	static_cast<::std::uint64_t>
					(	*	i_aString
					)
				bitand
					//	Ensures case insensitivity
					0b0101'1111
				;

				Multiplier
				*=	vPerCharMultiplier
				;
			}
		}

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator bool
		)	()	const
			noexcept
		{	return
				Multiplier
			>	0u
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator not
		)	(	Hash
					i_vHash
			)
			noexcept
		->	bool
		{	return
				not
				static_cast<bool>
				(	i_vHash
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	Hash
					i_vLeft
			,	Hash
					i_vRight
			)
			noexcept
		->	Hash
		{
			i_vLeft
			.	Value
			*=	i_vRight
				.	Multiplier
			;
			i_vRight
			.	Value
			-=	InitialValue
			*	i_vRight
				.	Multiplier
			;
			i_vLeft
			.	Value
			+=	i_vRight
				.	Value
			;
			i_vLeft
			.	Multiplier
			*=	i_vRight
				.	Multiplier
			;
			return
				i_vLeft
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Hash
			,	Hash
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto constexpr inline
		(	Fold64
		)	()	const
			noexcept
		->	::std::uint64_t
		{	return
				Value
			xor	Multiplier
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	Fold32
		)	()	const
			noexcept
		->	::std::uint32_t
		{
			::std::uint64_t static constexpr
				vBitMask
			=	0xFFFF'FFFF
			;

			::std::uint64_t const
				vFold64
			=	Fold64
				()
			;

			auto const
				vLowerBits
			=		vFold64
				bitand
					vBitMask
			;
			auto const
				vUpperBits
			=	(	vFold64
				bitand
					compl
					vBitMask
				)
			>>	32u
			;
			return
				static_cast<::std::uint32_t>
				(	vLowerBits
				xor	vUpperBits
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	Fold16
		)	()	const
			noexcept
		->	::std::uint16_t
		{
			::std::uint32_t static constexpr
				vBitMask
			=	0xFFFF
			;

			::std::uint32_t const
				vFold32
			=	Fold32
				()
			;

			auto const
				vLowerBits
			=		vFold32
				bitand
					vBitMask
			;
			auto const
				vUpperBits
			=	(	vFold32
				bitand
					compl
					vBitMask
				)
			>>	16u
			;
			return
				static_cast<::std::uint16_t>
				(	vLowerBits
				xor	vUpperBits
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	Fold8
		)	()	const
			noexcept
		->	::std::uint8_t
		{
			::std::uint16_t static constexpr
				vBitMask
			=	0xFF
			;

			::std::uint16_t const
				vFold16
			=	Fold16
				()
			;

			auto const
				vLowerBits
			=		vFold16
				bitand
					vBitMask
			;
			auto const
				vUpperBits
			=	(	vFold16
				bitand
					compl
					vBitMask
				)
			>>	8u
			;
			return
				static_cast<::std::uint8_t>
				(	vLowerBits
				xor	vUpperBits
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	Fold4
		)	()	const
			noexcept
		->	::std::uint8_t
		{
			::std::uint8_t static constexpr
				vBitMask
			=	0x0F
			;

			::std::uint8_t const
				vFold8
			=	Fold8
				()
			;

			auto const
				vLowerBits
			=		vFold8
				bitand
					vBitMask
			;
			auto const
				vUpperBits
			=	(	vFold8
				bitand
					compl
					vBitMask
				)
			>>	4u
			;
			return
				static_cast<::std::uint8_t>
				(	vLowerBits
				xor	vUpperBits
				)
			;
		}
	};

	struct
		ImplicitHash final
	:	Hash
	{
		explicit(false) constexpr
		(	ImplicitHash
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	ImplicitHash
		)	(	char const
				*	i_aString
			)
			noexcept
		:	Hash
			{	i_aString
			}
		{}

		explicit(false) constexpr
		(	ImplicitHash
		)	(	Hash
					i_vHash
			)
			noexcept
		:	Hash
			{	i_vHash
			}
		{}
	};
}
