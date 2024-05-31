export module Meta.Auto.Bit.Bool;

export import Meta.Auto.Var;

export namespace
	Meta::Auto
{
	using
		BoolRaw
	=	// does not alias
		char8_t
	;

	template
		<>
	struct
		Var
		<	bool
		>
	{
		BoolRaw
			m_vRaw
		;

		// logical operators allow for contextual conversion
		// no explicit definition needed and short circuiting still applies
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator bool
		)	(	this Var
					i_vThis
			)
			noexcept
		{	[[assume(i_vThis.m_vRaw <= 1)]];
			return
			static_cast<bool>
			(	i_vThis
				.	m_vRaw
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator not
		)	(	this Var
					i_vThis
			)
			noexcept
		->	Var
		{	[[assume(i_vThis.m_vRaw <= 1)]];
			return
			Var
			{	not
				static_cast<bool>
				(	i_vThis
				)
			};
		}
	};

	Var<bool> constexpr inline
		True
	{	true
	};

	Var<bool> constexpr inline
		False
	{	false
	};
}
