export module Meta.Bit.Field.Set;

import Meta.Bit.Index;
import Meta.Bit.Index.Set;
import Meta.Bit.Field;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	Set
	)	(	Field<t_vWidth>
			&	i_rField
		,	typename Field<t_vWidth>::IndexType
				i_vIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		=	Set
			(	i_rField
			.	get()
			,	i_vIndex
			)
		);
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	Set
	)	(	Field<t_vWidth>
			&&	i_rField
		,	typename Field<t_vWidth>::IndexType
				i_vIndex
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		Set
		(	i_rField
		,	i_vIndex
		);
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	Unset
	)	(	Field<t_vWidth>
			&	i_rField
		,	typename Field<t_vWidth>::IndexType
				i_vIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		=	Unset
			(	i_rField
			.	get()
			,	i_vIndex
			)
		);
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	Unset
	)	(	Field<t_vWidth>
			&&	i_rField
		,	typename Field<t_vWidth>::IndexType
				i_vIndex
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		Unset
		(	i_rField
		,	i_vIndex
		);
	}
}
