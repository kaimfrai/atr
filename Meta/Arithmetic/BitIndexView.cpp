export module Meta.Arithmetic.BitIndexView;

import Meta.Arithmetic.BitField;
import Meta.Arithmetic.BitIndexIterator;
import Meta.Bit.Count;
import Meta.Size;

export namespace
	Meta::Arithmetic
{
	template
		<	Bits
				t_nWidth
		>
	struct
		BitIndexView
	{
		BitField<t_nWidth>
			Field
		;

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const
			noexcept
		->	BitIndexIterator<t_nWidth>
		{	return { Field };	}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const
			noexcept
		->	BitIndexSentinel
		{	return {};	}
	};

	template
		<	Bits
				t_nWidth
		>
	(	BitIndexView
	)	(	BitField<t_nWidth>
		)
	->	BitIndexView
		<	t_nWidth
		>
	;
}
