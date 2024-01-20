export module Meta.Bit.OneIndexRange;

import Meta.Bit.Field;
import Meta.Bit.OneIndexIterator;
import Meta.Memory.Size;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_vWidth
		>
	struct
		OneIndexRange
	{
		Field<t_vWidth>
			m_vField
		;

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const
			noexcept
		->	OneIndexIterator<t_vWidth>
		{	return
			{	m_vField
			.	get()
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const
			noexcept
		->	OneIndexSentinel
		{	return {};	}
	};

	template
		<	auto
				t_vWidth
		>
	(	OneIndexRange
	)	(	Field<t_vWidth>
		)
	->	OneIndexRange
		<	t_vWidth
		>
	;
}
