export module Meta.String.Hash;

import Std;

export namespace
	Meta::String
{
	/// FNV-1a implementation which stores the length and is right appendable
	/// Strings are evaluated case-insensitive
	/// Source: http://www.isthe.com/chongo/tech/comp/fnv/index.html
	struct
		Hash
	{
		::std::uint64_t static constexpr inline
			InitialValue
		=	0xcbf2'9ce4'8422'2325
		;

		::std::uint64_t
			Value
		{};

		::std::uint64_t
			Length
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
		{
			*this
			+=	i_aString
			;
		}

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator bool
		)	()	const
			noexcept
		{	return
				Value
			!=	0u
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

		auto constexpr inline
		(	operator+=
		)	(	char const
				*	i_vRight
			)	&
			noexcept
		->	Hash&
		{	return
				*this
			=	*this
			+	i_vRight
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	Hash
					i_vLeft
			,	char const
				*	i_vRight
			)
			noexcept
		->	Hash
		{
			::std::uint64_t static constexpr
				vFNVPrime
			=	0x0000'0100'0000'01b3
			;

			for	(
				;	*	i_vRight
				;	++	i_vRight
				)
			{
				i_vLeft
				.	Value
				^=	static_cast<::std::uint64_t>
					(	*	i_vRight
					)
				bitand
					//	Ensures case insensitivity
					0b0101'1111
				;

				i_vLeft
				.	Value
				*=	vFNVPrime
				;

				++	i_vLeft
					.	Length
				;
			}

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
