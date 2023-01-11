export module Meta.Bit.Field.Set;

import Meta.Bit.Index;
import Meta.Bit.Index.Set;
import Meta.Bit.Field;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	Set
	)	(	Field<t_nWidth>
			&	i_rField
		,	typename Field<t_nWidth>::IndexType
				i_nIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		=	Set
			(	i_rField
			.	get()
			,	i_nIndex
			)
		);
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	Set
	)	(	Field<t_nWidth>
			&&	i_rField
		,	typename Field<t_nWidth>::IndexType
				i_nIndex
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Set
		(	i_rField
		,	i_nIndex
		);
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	Unset
	)	(	Field<t_nWidth>
			&	i_rField
		,	typename Field<t_nWidth>::IndexType
				i_nIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		=	Unset
			(	i_rField
			.	get()
			,	i_nIndex
			)
		);
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	Unset
	)	(	Field<t_nWidth>
			&&	i_rField
		,	typename Field<t_nWidth>::IndexType
				i_nIndex
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Unset
		(	i_rField
		,	i_nIndex
		);
	}
}
