export module Meta.Bit.Field.LowestOne;

import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.LowestOne;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	LowestOne
	)	(	Field<t_nWidth>
				i_nField
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Field<t_nWidth>
		{	LowestOne
			(	i_nField
			.	get()
			)
		};
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	IndexLowestOne
	)	(	Field<t_nWidth>
				i_nField
		)
		noexcept
	->	Index<t_nWidth>
	{	return
		ChangeWidth<t_nWidth>
		(	IndexLowestOne
			(	i_nField
			.	get()
			)
		);
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	UnsetLowestOne
	)	(	Field<t_nWidth>
			&	i_rField
		,	decltype(auto(i_rField))
				i_nMask
		)
		noexcept
	->	Field<t_nWidth>&
	{	return
		(	i_rField
		=	UnsetLowestOne
			(	i_rField
			.	get()
			,	i_nMask
			.	get()
			)
		);
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	UnsetLowestOne
	)	(	Field<t_nWidth>
			&	i_rField
		)
		noexcept
	->	Field<t_nWidth>&
	{	return
		(	i_rField
		=	UnsetLowestOne
			(	i_rField
			.	get()
			,	i_rField
			.	get()
			)
		);
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	UnsetLowestOne
	)	(	Field<t_nWidth>
			&&	i_rField
		,	decltype(auto(i_rField))
				i_nMask
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		UnsetLowestOne
		(	i_rField
		,	i_nMask
		);
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	UnsetLowestOne
	)	(	Field<t_nWidth>
			&&	i_rField
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		UnsetLowestOne
		(	i_rField
		,	i_rField
		);
	}
}
