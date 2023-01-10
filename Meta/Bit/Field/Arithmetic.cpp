export module Meta.Bit.Field.Arithmetic;

import Meta.Bit.Field;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	operator bitand
	)	(	Field<t_nWidth>
				i_vLeft
		,	Field<t_nWidth>
				i_vRight
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Field<t_nWidth>
		{	i_vLeft.get()
		bitand
			i_vRight.get()
		};
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator &=
	)	(	Field<t_nWidth>
			&	i_rLeft
		,	Field<t_nWidth>
				i_vRight
		)
		noexcept
	->	Field<t_nWidth>&
	{	return
		(	i_rLeft
		=	i_rLeft
		bitand
			i_vRight
		);
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	operator bitor
	)	(	Field<t_nWidth>
				i_vLeft
		,	Field<t_nWidth>
				i_vRight
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Field<t_nWidth>
		{	i_vLeft.get()
			bitor
				i_vRight.get()
		};
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator |=
	)	(	Field<t_nWidth>
			&	i_rLeft
		,	Field<t_nWidth>
				i_vRight
		)
		noexcept
	->	Field<t_nWidth>&
	{	return
		(	i_rLeft
		=	i_rLeft
		bitor
			i_vRight
		);
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	operator xor
	)	(	Field<t_nWidth>
				i_vLeft
		,	Field<t_nWidth>
				i_vRight
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Field<t_nWidth>
		{	i_vLeft.get()
		xor	i_vRight.get()
		};
	}
	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator ^=
	)	(	Field<t_nWidth>
			&	i_rLeft
		,	Field<t_nWidth>
				i_vRight
		)
		noexcept
	->	Field<t_nWidth>&
	{	return
		(	i_rLeft
		=	i_rLeft
		xor	i_vRight
		);
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
	(	operator compl
	)	(	Field<t_nSize>
				i_vField
		)
		noexcept
	->	Field<t_nSize>
	{	return
		Field<t_nSize>
		{	Field<t_nSize>::Sanitize
			(	static_cast<Field<t_nSize>::FieldType>
				(	compl
					i_vField.get()
				)
			)
		};
	}
}
