export module Meta.Auto.Bit.RBool;

export import Meta.Auto.Var;

import Meta.Auto.Bit.Bool;

export namespace
	Meta::Auto
{
	template
		<>
	struct
		Var
		<	bool
			&
		>
	{
		BoolRaw
		*	m_aRaw
		;
		int
			m_vMask
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator bool
		)	(	this Var
					i_vThis
			)
			noexcept
		{	return
				(*	i_vThis
					.	m_aRaw
				bitand
					i_vThis
					.	m_vMask
				)
			!=	0
			;
		}

		auto constexpr inline
		(	operator=
		)	(	bool
					i_vValue
			)	&
			noexcept
		->	Var&
		{
			int
				vRaw
			=	*	m_aRaw
			;
				vRaw
			&=	compl
				m_vMask
			;
				vRaw
			|=	(	i_vValue
				*	m_vMask
				)
			;

			*	m_aRaw
			=	static_cast<BoolRaw>
				(	vRaw
				)
			;

			return
			*	this
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Var
			,	Var
			)
			noexcept
		->	bool
		=	default;
	};
}
