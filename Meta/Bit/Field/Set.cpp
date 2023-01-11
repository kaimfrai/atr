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
	{
		auto
			nValue
		=	i_rField
		.	get()
		;
		return
		(	i_rField
		=	Set
			(	nValue
			,	i_nIndex
			)
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
	{
		auto
			nValue
		=	i_rField
		.	get()
		;
		return
		(	i_rField
		=	Unset
			(	nValue
			,	i_nIndex
			)
		);
	}
}
