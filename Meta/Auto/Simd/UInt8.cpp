export module Meta.Auto.Simd.UInt8;

export import Meta.Auto.Simd.Tag;
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
