export module Meta.Bit.Count.Range;

import Meta.Bit.Index;
import Meta.Bit.Count;
import Meta.Bit.IndexIterator;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	begin
	)	(	Count<t_vWidth>
		)
		noexcept
	->	IndexIterator
		<	Index
			<	t_vWidth
			>
		>
	{	return
		{};
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	end
	)	(	Count<t_vWidth>
				i_vRange
		)
		noexcept
	->	IndexSentinel
		<	typename
				Count
				<	t_vWidth
				>
			::	CountType
		>
	{	return
		{	i_vRange
		.	get()
		};
	}
}
