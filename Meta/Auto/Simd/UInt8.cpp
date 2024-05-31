export module Meta.Auto.Simd.UInt8;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Simd.UInt32;

import Std;

export namespace
	Meta::Auto
{
	template
		<>
	struct
		Var
		<	::std::uint8_t
				[	8uz
				]
		,	SimdTag
		>
	{
		::std::uint64_t
			m_vRaw
		;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator%
		)	(	Var
					i_vLeft
			,	::std::uint8_t
					i_vRight
			)
			noexcept
		->	Var
		{
			auto
				vArray
			=	::std::bit_cast<::std::array<::std::uint8_t, 8uz>>
				(	i_vLeft
				)
			;
			for	(	auto
					&	rElement
				:	vArray
				)
			{		rElement
				%=	i_vRight
				;
			}
			return
			::std::bit_cast<Var>
			(	vArray
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	::std::uint8_t const
				*	i_aData
			)
			noexcept
		->	Var
		{
			::std::uint8_t
				vValue
				[	8uz
				]
			{};
			auto const
				aData
			=	::std::assume_aligned<8uz>
				(	i_aData
				)
			;
			::std::copy
			(	aData
			,		aData
				+	8uz
			,	vValue
			);

			return
			{	.	m_vRaw
				=	::std::bit_cast<::std::uint64_t>
					(	vValue
					)
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	LoadUnaligned
		)	(	::std::uint8_t const
				*	i_aData
			)
			noexcept
		->	Var
		{
			::std::uint8_t
				vValue
				[	8uz
				]
			{};
			::std::copy
			(	i_aData
			,		i_aData
				+	8uz
			,	vValue
			);

			return
			{	.	m_vRaw
				=	::std::bit_cast<::std::uint64_t>
					(	vValue
					)
			};
		}

		auto constexpr inline
		(	StoreAligned
		)	(	::std::uint8_t
				*	o_aData
			)	const
			noexcept
		->	void
		{
			auto const
				vValue
			=	::std::bit_cast<::std::array<::std::uint8_t, 8uz>>
				(	m_vRaw
				)
			;
			::std::copy
			(	vValue
				.	begin
					()
			,	vValue
				.	end
					()
			,	::std::assume_aligned<8uz>
				(	o_aData
				)
			);
		}
	};

	template
		<>
	struct
		Var
		<	::std::uint8_t
			(&)	[	8uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	::std::uint8_t
					[	8uz
					]
			>
		;

		::std::uint8_t
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			::std::uint8_t
				vValue
				[	8uz
				]
			;
			auto const
				aData
			=	::std::assume_aligned
				<	8uz
				>(	m_aData
				)
			;
			::std::copy
			(	aData
			,		aData
				+	8uz
			,	vValue
			);
			return
			::std::bit_cast<value_type>
			(	vValue
			);
		}

		auto inline
		(	operator=
		)	(	value_type
					i_vValue
			)	const&
			noexcept
		->	Var const&
		{
			auto const
				vValue
			=	::std::bit_cast<::std::array<::std::uint8_t, 8uz>>
				(	i_vValue
				)
			;
			auto const
				aData
			=	::std::assume_aligned
				<	8uz
				>(	m_aData
				)
			;
			::std::copy
			(	vValue
				.	begin
					()
			,	vValue
				.	end
					()
			,	aData
			);

			return
			*	this
			;
		}
	};

	template
		<>
	struct
		Var
		<	::std::uint8_t const
			(&)	[	8uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	::std::uint8_t
					[	8uz
					]
			>
		;

		::std::uint8_t const
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			::std::uint8_t
				vValue
				[	8uz
				]
			;
			auto const
				aData
			=	::std::assume_aligned
				<	8uz
				>(	m_aData
				)
			;
			::std::copy
			(	aData
			,		aData
				+	8uz
			,	vValue
			);
			return
			::std::bit_cast<value_type>
			(	vValue
			);
		}
	};

	template
		<>
	struct
		Var
		<	::std::uint8_t
				[	16uz
				]
		,	SimdTag
		>
	{
		__m128i
			m_vRaw
		;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator%
		)	(	Var
					i_vLeft
			,	::std::uint8_t
					i_vRight
			)
			noexcept
		->	Var
		{
			auto
				vArray
			=	::std::bit_cast<::std::array<::std::uint8_t, 16uz>>
				(	i_vLeft
				)
			;
			for	(	auto
					&	rElement
				:	vArray
				)
			{		rElement
				%=	i_vRight
				;
			}
			return
			::std::bit_cast<Var>
			(	vArray
			);
		}
	};

	template
		<>
	struct
		Var
		<	::std::uint8_t
			(&)	[	16uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	::std::uint8_t
					[	16uz
					]
			>
		;

		::std::uint8_t
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			::std::uint8_t
				vValue
				[	16uz
				]
			;
			auto const
				aData
			=	::std::assume_aligned
				<	16uz
				>(	m_aData
				)
			;
			::std::copy
			(	aData
			,		aData
				+	16uz
			,	vValue
			);
			return
			::std::bit_cast<value_type>
			(	vValue
			);
		}

		auto inline
		(	operator=
		)	(	value_type
					i_vValue
			)	const&
			noexcept
		->	Var const&
		{
			auto const
				vValue
			=	::std::bit_cast<::std::array<::std::uint8_t, 16uz>>
				(	i_vValue
				)
			;
			auto const
				aData
			=	::std::assume_aligned
				<	16uz
				>(	m_aData
				)
			;
			::std::copy
			(	vValue
				.	begin
					()
			,	vValue
				.	end
					()
			,	aData
			);

			return
			*	this
			;
		}
	};

	template
		<>
	struct
		Var
		<	::std::uint8_t const
			(&)	[	16uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	::std::uint8_t
					[	16uz
					]
			>
		;

		::std::uint8_t const
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			::std::uint8_t
				vValue
				[	16uz
				]
			;
			auto const
				aData
			=	::std::assume_aligned
				<	16uz
				>(	m_aData
				)
			;
			::std::copy
			(	aData
			,		aData
				+	16uz
			,	vValue
			);
			return
			::std::bit_cast<value_type>
			(	vValue
			);
		}
	};
}
