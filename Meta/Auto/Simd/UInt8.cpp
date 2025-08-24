export module Meta.Auto.Simd.UInt8;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Simd.UInt32;
import Meta.IndexPack;
import Meta.Size;

import std;

using ::Meta::IndexPack;

export namespace
	Meta::Auto
{
	template
		<	USize
				t_vSize
		>
	struct
		Var
		<	unsigned char
				[	t_vSize
				]
		,	SimdTag
		>
	{
		vec<unsigned char, t_vSize>
			m_vRaw
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	USize
					i_vIndex
			)	const
			noexcept
		->	unsigned char
		{	auto
				vArray
			=	::std::bit_cast<::std::array<unsigned char, t_vSize>>
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
			,	unsigned char
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
			<	USize
					t_vBatch
			>
		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	unsigned char const
				*	i_aData
			)
			noexcept
		->	Var
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	t_vSize
				>
			;
			return
			{	.	m_vRaw
				{	::std::assume_aligned<t_vBatch * alignof(unsigned char)>
					(	i_aData
					)[	rpIndex
					]
					...
				}
			};
		}

		template
			<	USize
					t_vBatch
			>
		auto constexpr inline
		(	StoreAligned
		)	(	unsigned char
				*	o_aData
			)	const
			noexcept
		->	void
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	t_vSize
				>
			;
			(	...
			,	(	::std::assume_aligned<t_vBatch * alignof(unsigned char)>
					(	o_aData
					)[	rpIndex
					]
				=	m_vRaw
					[	rpIndex
					]
				)
			);
		}
	};

	template
		<>
	struct
		Var
		<	unsigned char
			(&)	[	8uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	unsigned char
					[	8uz
					]
			>
		;

		unsigned char
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			unsigned char
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
			=	::std::bit_cast<::std::array<unsigned char, 8uz>>
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
		<	unsigned char const
			(&)	[	8uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	unsigned char
					[	8uz
					]
			>
		;

		unsigned char const
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			unsigned char
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
		<	unsigned char
			(&)	[	16uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	unsigned char
					[	16uz
					]
			>
		;

		unsigned char
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			unsigned char
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
			=	::std::bit_cast<::std::array<unsigned char, 16uz>>
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
		<	unsigned char const
			(&)	[	16uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	unsigned char
					[	16uz
					]
			>
		;

		unsigned char const
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			unsigned char
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
