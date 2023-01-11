export module Meta.Bit.OneIndexRange;

import Meta.Bit.Field;
import Meta.Bit.OneIndexIterator;
import Meta.Memory.Size;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_nWidth
		>
	struct
		OneIndexRange
	{
		Field<t_nWidth>
			m_vField
		;

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const
			noexcept
		->	OneIndexIterator<t_nWidth>
		{	return
			{	m_vField
			.	get()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const
			noexcept
		->	OneIndexSentinel
		{	return {};	}
	};

	template
		<	auto
				t_nWidth
		>
	(	OneIndexRange
	)	(	Field<t_nWidth>
		)
	->	OneIndexRange
		<	t_nWidth
		>
	;
}
