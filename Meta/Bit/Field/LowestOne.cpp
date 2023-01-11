export module Meta.Bit.Field.LowestOne;

import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.LowestOne;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
	(	LowestOne
	)	(	Field<t_nSize>
				i_nField
		)
		noexcept
	->	Field<t_nSize>
	{	return
		Field<t_nSize>
		{	LowestOne
			(	i_nField
			.	get()
			)
		};
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
	(	IndexLowestOne
	)	(	Field<t_nSize>
				i_nField
		)
		noexcept
	->	Index<t_nSize>
	{	return
		Index<t_nSize>
		{	IndexLowestOne
			(	i_nField
			.	get()
			)
		};
	}

	template
		<	auto
				t_nSize
		>
	auto constexpr
	(	UnsetLowestOne
	)	(	Field<t_nSize>
			&	i_rField
		)
	->	Field<t_nSize>&
	{
		auto
			nValue
		=	i_rField
		.	get()
		;
		(	i_rField
		=	UnsetLowestOne
			(	nValue
			)
		);

		return
			i_rField
		;
	}
}
