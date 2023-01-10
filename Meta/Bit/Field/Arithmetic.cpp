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
				i_nLeft
		,	decltype(i_nLeft)
				i_nRight
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Field<t_nWidth>
		{	i_nLeft.get()
		bitand
			i_nRight.get()
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
		,	decltype(auto(i_rLeft))
				i_nRight
		)
		noexcept
	->	Field<t_nWidth>&
	{	return
		(	i_rLeft
		=	i_rLeft
		bitand
			i_nRight
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
				i_nLeft
		,	decltype(i_nLeft)
				i_nRight
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Field<t_nWidth>
		{	i_nLeft.get()
			bitor
				i_nRight.get()
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
		,	decltype(auto(i_rLeft))
				i_nRight
		)
		noexcept
	->	Field<t_nWidth>&
	{	return
		(	i_rLeft
		=	i_rLeft
		bitor
			i_nRight
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
				i_nLeft
		,	decltype(i_nLeft)
				i_nRight
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Field<t_nWidth>
		{	i_nLeft.get()
		xor	i_nRight.get()
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
		,	decltype(auto(i_rLeft))
				i_nRight
		)
		noexcept
	->	Field<t_nWidth>&
	{	return
		(	i_rLeft
		=	i_rLeft
		xor	i_nRight
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
				i_nField
		)
		noexcept
	->	Field<t_nSize>
	{	return
		Field<t_nSize>
		{	Field<t_nSize>::Sanitize
			(	static_cast<Field<t_nSize>::FieldType>
				(	compl
					i_nField.get()
				)
			)
		};
	}
}
