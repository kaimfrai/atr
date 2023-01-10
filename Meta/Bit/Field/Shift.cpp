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
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	operator >>
	)	(	Field<t_nWidth>
				i_vField
		,	typename Field<t_nWidth>::IndexType
				i_nIndex
		)
		noexcept
	->	Field<t_nWidth>
	{	return
		Field<t_nWidth>
		{	i_vField.get()
		>>	i_nIndex
		};
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator >>=
	)	(	Field<t_nWidth>
			&	i_rField
		,	typename Field<t_nWidth>::IndexType
				i_nIndex
		)
		noexcept
	->	Field<t_nWidth>
	{
		auto
			nValue
		=	i_rField
		.	get()
		;
		(	nValue
		>>=	i_nIndex
		);
		return
		(	i_rField
		=	nValue
		);
	}

	template
		<	auto
				t_nWidth
		,	auto
				t_nOffset
		>
	[[nodiscard]]
	auto constexpr
	(	operator <<
	)	(	Field<t_nWidth>
				i_vField
		,	Index<t_nOffset>
				i_nIndex
		)
		noexcept
	->	Field
		<	t_nWidth
		+	i_nIndex
		.	MaximumShift
		>
	{	using
			tLargerField
		=	Field
			<	t_nWidth
			+	i_nIndex
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
		<<	i_nIndex
		};
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator <<=
	)	(	Field<t_nWidth>
			&	i_rField
		,	typename Field<t_nWidth>::IndexType
				i_nIndex
		)
		noexcept
	->	Field<t_nWidth>&
	{
		auto
			nValue
		=	i_rField
		.	get()
		;
		(	nValue
		<<=	i_nIndex
		);
		return
		(	i_rField
		=	nValue
		);
	}
}
