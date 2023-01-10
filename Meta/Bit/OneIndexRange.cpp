export module Meta.Bit.OneIndexRange;

import Meta.Bit.Field;
import Meta.Bit.OneIndexIterator;
import Meta.Memory.Size;
import Meta.Size;

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
			Field
		;

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const
			noexcept
		->	OneIndexIterator<t_nWidth>
		{	return { Field };	}

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
