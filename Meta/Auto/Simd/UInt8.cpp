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
		{	return
				m_vRaw
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
			auto const
				aAlignedData
			=	::std::assume_aligned
				<	t_vBatch
				*	alignof(unsigned char)
				>(	i_aData
				)
			;
			return
			{	.	m_vRaw
				{	aAlignedData
					[	rpIndex
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
			auto const
				aAlignedData
			=	::std::assume_aligned
				<	t_vBatch
				*	alignof(unsigned char)
				>(	o_aData
				)
			;
			(	...
			,	(	aAlignedData
					[	rpIndex
					]
				=	m_vRaw
					[	rpIndex
					]
				)
			);
		}
	};

	template
		<	USize
				t_vSize
		>
	struct
		Var
		<	unsigned char
			(&)	[	t_vSize
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	unsigned char
					[	t_vSize
					]
			>
		;

		unsigned char
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	t_vSize
				>
			;
			auto const
				aData
			=	::std::assume_aligned
				<	t_vSize
				>(	m_aData
				)
			;
			return
			{	.	m_vRaw
				{	aData
					[	rpIndex
					]
					...
				}
			};
		}

		auto constexpr inline
		(	operator=
		)	(	value_type
					i_vValue
			)	const&
			noexcept
		->	Var const&
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	t_vSize
				>
			;
			auto const
				aData
			=	::std::assume_aligned
				<	t_vSize
				>(	m_aData
				)
			;
			(	...
			,	(	aData
					[	rpIndex
					]
				=	i_vValue
					[	rpIndex
					]
				)
			);
			return
			*	this
			;
		}
	};

	template
		<	USize
				t_vSize
		>
	struct
		Var
		<	unsigned char const
			(&)	[	t_vSize
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	unsigned char
					[	t_vSize
					]
			>
		;

		unsigned char const
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	t_vSize
				>
			;
			auto const
				aData
			=	::std::assume_aligned
				<	t_vSize
				>(	m_aData
				)
			;
			return
			{	.	m_vRaw
				{	aData
					[	rpIndex
					]
					...
				}
			};
		}
	};
}
