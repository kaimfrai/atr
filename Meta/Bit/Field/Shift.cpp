export module Meta.Bit.Field.Shift;

import Meta.Bit.Field;
import Meta.Bit.Index.Shift;
import Meta.Bit.Index;
import Meta.Memory.Size.Arithmetic;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator>>
	)	(	Field<t_vWidth>
				i_vField
		,	typename Field<t_vWidth>::IndexType
				i_vIndex
		)
		noexcept
	->	Field<t_vWidth>
	{	return
		Field<t_vWidth>
		{	i_vField
		.	get()
		>>	i_vIndex
		};
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	operator>>=
	)	(	Field<t_vWidth>
			&	i_rField
		,	typename Field<t_vWidth>::IndexType
				i_vIndex
		)
		noexcept
	->	Field<t_vWidth>
	{
		auto
			vValue
		=	i_rField
		.	get()
		;
		(	vValue
		>>=	i_vIndex
		);
		return
		(	i_rField
		=	vValue
		);
	}

	template
		<	auto
				t_vWidth
		,	auto
				t_vOffset
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator<<
	)	(	Field<t_vWidth>
				i_vField
		,	Index<t_vOffset>
				i_vIndex
		)
		noexcept
	->	Field
		<	t_vWidth
		+	i_vIndex
		.	MaximumShift
		>
	{	using
			tLargerField
		=	Field
			<	t_vWidth
			+	i_vIndex
			.	MaximumShift
			>
		;

		return
		tLargerField
		{	static_cast
			<	tLargerField
			::	FieldType
			>(	i_vField
			.	get()
			)
		<<	i_vIndex
		};
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	operator<<=
	)	(	Field<t_vWidth>
			&	i_rField
		,	typename Field<t_vWidth>::IndexType
				i_vIndex
		)
		noexcept
	->	Field<t_vWidth>&
	{
		auto
			vValue
		=	i_rField
		.	get()
		;
		(	vValue
		<<=	i_vIndex
		);
		return
		(	i_rField
		=	vValue
		);
	}
}
