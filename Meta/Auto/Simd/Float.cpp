export module Meta.Auto.Simd.Float;

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
}
