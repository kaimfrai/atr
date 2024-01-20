export module Meta.Bit.Field.LowestOne;

import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.LowestOne;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	LowestOne
	)	(	Field<t_vWidth>
				i_vField
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		Field<t_vWidth>
		{	LowestOne
			(	i_vField
			.	get()
			)
		};
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	IndexLowestOne
	)	(	Field<t_vWidth>
				i_vField
		)
		noexcept
	->	Index<t_vWidth>
	{	return
		ChangeWidth<t_vWidth>
		(	IndexLowestOne
			(	i_vField
			.	get()
			)
		);
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	UnsetLowestOne
	)	(	Field<t_vWidth>
			&	i_rField
		,	decltype(auto(i_rField))
				i_vMask
		)
		noexcept
	->	Field<t_vWidth>&
	{	return
		(	i_rField
		=	UnsetLowestOne
			(	i_rField
			.	get()
			,	i_vMask
			.	get()
			)
		);
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	UnsetLowestOne
	)	(	Field<t_vWidth>
			&	i_rField
		)
		noexcept
	->	Field<t_vWidth>&
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
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	UnsetLowestOne
	)	(	Field<t_vWidth>
			&&	i_rField
		,	decltype(auto(i_rField))
				i_vMask
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		UnsetLowestOne
		(	i_rField
		,	i_vMask
		);
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	UnsetLowestOne
	)	(	Field<t_vWidth>
			&&	i_rField
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		UnsetLowestOne
		(	i_rField
		,	i_rField
		);
	}
}
