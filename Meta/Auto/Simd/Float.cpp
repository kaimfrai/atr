export module Meta.Auto.Simd.Float;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Simd.Int32;
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
		<	float
				[	t_vSize
				]
		,	SimdTag
		,	MaskedTag
		>
	{
		vec<float, t_vSize>
			m_vRaw
		;
		SimdMask<t_vSize>
			m_vMask
		;

		template
			<	USize
					t_vBatch
			>
		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
				*	i_aData
			,	SimdMask<t_vSize>
					i_vMask
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
				*	alignof(float)
				>(	i_aData
				)
			;
			return
			{	.	m_vRaw
				{	i_vMask
				?	vec<float, t_vSize>
					{	aAlignedData
						[	rpIndex
						]
						...
					}
				:	vec<float, t_vSize>{}
				}
			,	.	m_vMask
				=	i_vMask
			};
		}
	};

	template
		<	USize
				t_vSize
		>
	struct
		Var
		<	float
				[	t_vSize
				]
		,	SimdTag
		>
	{
		using
			ElementType
		=	float
		;

		using
			MaskedType
		=	MaskedSimd
			<	float
					[	t_vSize
					]
			>
		;

		vec<float, t_vSize>
			m_vRaw
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator=
		)	(	MaskedType
					i_vValue
			)	const&
			noexcept
		->	Var
		{	return
			{	.	m_vRaw
				=	i_vValue
					.	m_vMask
				?	i_vValue
					.	m_vRaw
				:	m_vRaw
			};
		}

		auto constexpr inline
		(	operator=
		)	(	MaskedType
					i_vValue
			)	&
			noexcept
		->	Var&
		{	return
			*	this
			=	(	auto
					(*	this
					)
				=	i_vValue
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SimdMask<t_vSize>
					i_vMask
			)	const
			noexcept
		->	MaskedType
		{	return
			{	.	m_vRaw
				=	m_vRaw
			,	.	m_vMask
				=	i_vMask
			};
		}

		template
			<	USize
					t_vSelectSize
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	Simd<int[t_vSelectSize]>
					i_vIndex
			)	const
			noexcept
		->	Simd<float[t_vSelectSize]>
		{
			auto const
			&	[	...
					rpIndex
				]
			=	i_vIndex
				.	m_vRaw
			;
			return
			{	.	m_vRaw
				{	m_vRaw
					[	rpIndex
					]
					...
				}
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
		{	return
			{	.	m_vRaw
				=	i_vLeft
					.	m_vRaw
				+	i_vRight
					.	m_vRaw
			};
		}

		auto friend constexpr inline
		(	operator+=
		)	(	Var
				&	i_rLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var&
		{	return
				i_rLeft
			=	(	i_rLeft
				+	i_vRight
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator*
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
		{	return
			{	.	m_vRaw
				=	i_vLeft
					.	m_vRaw
				*	i_vRight
					.	m_vRaw
			};
		}

		template
			<	USize
					t_vBatch
			>
		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
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
				*	alignof(float)
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
		)	(	float
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
				*	alignof(float)
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
		<	float
			(&)	[	t_vSize
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Var
			<	float
					[	t_vSize
					]
			,	SimdTag
			>
		;

		float
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{	return
			value_type
			::	LoadAligned<t_vSize>
				(	m_aData
				)
			;
		}

		auto constexpr inline
		(	operator=
		)	(	value_type
					i_vValue
			)	const&
			noexcept
		->	Var const&
		{
			i_vValue
			.	template
				StoreAligned<t_vSize>
				(	m_aData
				)
			;

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
		<	float const
			(&)	[	t_vSize
				]
		,	SimdTag
		,	MaskedTag
		>
	{
		using
			value_type
		=	MaskedSimd
			<	float
					[	t_vSize
					]
			>
		;

		float const
		*	m_aData
		;

		SimdMask<t_vSize>
			m_vMask
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{	return
			value_type
			::	template
				LoadAligned<t_vSize>
				(	m_aData
				,	m_vMask
				)
			;
		}
	};

	template
		<	USize
				t_vSize
		>
	struct
		Var
		<	float const
			(&)	[	t_vSize
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Simd
			<	float
					[	t_vSize
					]
			>
		;

		float const
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{	return
			value_type
			::	template
				LoadAligned<t_vSize>
				(	m_aData
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator=
		)	(	MaskedSimd
				<	float const
					(&)	[	t_vSize
						]
				>	i_rRight
			)	const
			noexcept
		->	value_type
		{	return
				static_cast<value_type>
				(	*	this
				)
			=	static_cast<decltype(i_rRight)::value_type>
				(	i_rRight
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SimdMask<t_vSize>
					i_vMask
			)	const
			noexcept
		->	MaskedSimd<float const(&)[t_vSize]>
		{	return
			{	.	m_aData
				=	m_aData
			,	.	m_vMask
				=	i_vMask
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator*
		)	(	Var
					i_rLeft
			,	value_type
					i_vRight
			)
			noexcept
		->	value_type
		{	return
				static_cast<value_type>
				(	i_rLeft
				)
			*	i_vRight
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator*
		)	(	value_type
					i_vLeft
			,	Var
					i_rRight
			)
			noexcept
		->	value_type
		{	return
				i_vLeft
			*	static_cast<value_type>
				(	i_rRight
				)
			;
		}
	};


	template
		<	typename
				t_tElement
		,	USize
				t_vSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	reduce
	)	(	Simd<t_tElement[t_vSize]>
				i_vArgument
		)
		noexcept
	->	t_tElement
	{
		auto const
		&	[	...
				rpElement
			]
		=	i_vArgument
			.	m_vRaw
		;
		if constexpr
			(	sizeof(i_vArgument)
			<=		2uz
				*	sizeof(USize)
			)
		{	return
			(	...
			+	rpElement
			);
		}
		else
		{
			auto static constexpr
				vHalfSize
			=	t_vSize
			/	2uz
			;
			auto const
			&	[	...
					vpIndex
				]
			=	IndexPack
				<	vHalfSize
				>
			;
			return
			reduce
			(	Simd<t_tElement[vHalfSize]>
				{	{	rpElement
					...	[	vpIndex
						]
					...
					}
				}
			+	Simd<t_tElement[vHalfSize]>
				{	{	rpElement
					...	[	vpIndex
						+	vHalfSize
						]
						...
					}
				}
			);
		}
	}
}
