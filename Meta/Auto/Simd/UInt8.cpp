export module Meta.Auto.Simd.UInt8;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Simd.UInt32;
import Meta.IndexPack;

import std;
import Std;

using ::Meta::IndexPack;

export namespace
	Meta::Auto
{
	template
		<	::std::size_t
				t_vSize
		>
	struct
		Var
		<	::std::uint8_t
				[	t_vSize
				]
		,	SimdTag
		>
	{
		vec<::std::uint8_t, t_vSize>
			m_vRaw
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::size_t
					i_vIndex
			)	const
			noexcept
		->	::std::uint8_t
		{	auto
				vArray
			=	::std::bit_cast<::std::array<::std::uint8_t, t_vSize>>
				(	m_vRaw
				)
			;
			return
				vArray
				[	i_vIndex
				]
			;
		}

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
			&	[	...
					rpElements
				]
			=	i_vLeft
				.	m_vRaw
			;
			(	...
			,	(	rpElements
				%= i_vRight
				)
			);
			return
			Var
			{	.	m_vRaw
				{	rpElements
					...
				}
			};
		}

		template
			<	int
					t_vShift
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	ByteShiftRight
		)	(	Var
					i_vValue
			)
			noexcept
		->	Var
		{
			auto const
			&	[	...
					rpElement
				]
			=	i_vValue
				.	m_vRaw
			;
			auto const
			&	[	...
					rpBackIndex
				]
			=	IndexPack
				<	sizeof(m_vRaw)
				-	t_vShift
				>
			;
			return
			{	.	m_vRaw
				{	rpElement
				...	[	rpBackIndex
					+	t_vShift
					]
					...
				}
			};
		}

		template
			<	::std::size_t
					t_vBatch
			>
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
				[	t_vSize
				]
			{};
			auto const
				aData
			=	::std::assume_aligned<t_vSize>
				(	i_aData
				)
			;
			::std::copy
			(	aData
			,		aData
				+	t_vSize
			,	vValue
			);

			return
			{	.	m_vRaw
				=	::std::bit_cast<decltype(m_vRaw)>
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
				[	t_vSize
				]
			{};
			::std::copy
			(	i_aData
			,		i_aData
				+	t_vSize
			,	vValue
			);

			return
			{	.	m_vRaw
				=	::std::bit_cast<decltype(m_vRaw)>
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
			=	::std::bit_cast<::std::array<::std::uint8_t, t_vSize>>
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
			,	::std::assume_aligned<t_vSize>
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
