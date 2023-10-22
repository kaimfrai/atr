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
		=	0x4000'0000'0000'0001
		;

		::std::uint64_t
			Value
		{};

		::std::uint64_t
			Multiplier
		{};

		explicit(false) constexpr inline
		(	Hash
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
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
		auto friend constexpr inline
		(	operator bitand
		)	(	Hash
					i_vHash
			,	::std::uint64_t
					i_vMask
			)
			noexcept
		->	::std::uint64_t
		{	return
				i_vHash
				.	Value
			bitand
				i_vMask
			;
		}
	};

	struct
		ImplicitHash final
	:	Hash
	{
		explicit(false) constexpr inline
		(	ImplicitHash
		)	()
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	ImplicitHash
		)	(	char const
				*	i_aString
			)
			noexcept
		:	Hash
			{	i_aString
			}
		{}

		explicit(false) constexpr inline
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
