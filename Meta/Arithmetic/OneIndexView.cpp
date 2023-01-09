export module Meta.Arithmetic.OneIndexView;

import Meta.Arithmetic.BitField;
import Meta.Arithmetic.OneIndexIterator;
import Meta.Memory.Size;
import Meta.Size;

export namespace
	Meta::Arithmetic
{
	template
		<	BitSize
				t_nWidth
		>
	struct
		OneIndexView
	{
		BitField<t_nWidth>
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
	(	OneIndexView
	)	(	BitField<t_nWidth>
		)
	->	OneIndexView
		<	t_nWidth
		>
	;
}
