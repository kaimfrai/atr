export module Meta.Bit.Field.Arithmetic;

import Meta.Bit.Field;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator bitand
	)	(	Field<t_vWidth>
				i_vLeft
		,	decltype(i_vLeft)
				i_vRight
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		Field<t_vWidth>
		{	static_cast<Field<t_vWidth>::FieldType>
			(	i_vLeft.get()
			bitand
				i_vRight.get()
			)
		};
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	operator&=
	)	(	Field<t_vWidth>
			&	i_rLeft
		,	decltype(auto(i_rLeft))
				i_vRight
		)
		noexcept
	->	Field<t_vWidth>&
	{	return
		(	i_rLeft
		=	i_rLeft
		bitand
			i_vRight
		);
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator bitor
	)	(	Field<t_vWidth>
				i_vLeft
		,	decltype(i_vLeft)
				i_vRight
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		Field<t_vWidth>
		{	static_cast<Field<t_vWidth>::FieldType>
			(	i_vLeft.get()
			bitor
				i_vRight.get()
			)
		};
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	operator|=
	)	(	Field<t_vWidth>
			&	i_rLeft
		,	decltype(auto(i_rLeft))
				i_vRight
		)
		noexcept
	->	Field<t_vWidth>&
	{	return
		(	i_rLeft
		=	i_rLeft
		bitor
			i_vRight
		);
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator xor
	)	(	Field<t_vWidth>
				i_vLeft
		,	decltype(i_vLeft)
				i_vRight
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		Field<t_vWidth>
		{	static_cast<Field<t_vWidth>::FieldType>
			(	i_vLeft.get()
			xor	i_vRight.get()
			)
		};
	}
	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	operator^=
	)	(	Field<t_vWidth>
			&	i_rLeft
		,	decltype(auto(i_rLeft))
				i_vRight
		)
		noexcept
	->	Field<t_vWidth>&
	{	return
		(	i_rLeft
		=	i_rLeft
		xor	i_vRight
		);
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator compl
	)	(	Field<t_vWidth>
				i_vField
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		Field<t_vWidth>
		{	Field<t_vWidth>::Sanitize
			(	static_cast<Field<t_vWidth>::FieldType>
				(	compl
					i_vField.get()
				)
			)
		};
	}
}
