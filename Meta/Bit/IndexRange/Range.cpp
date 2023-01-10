export module Meta.Bit.IndexRange.Range;

import Meta.Bit.Index;
import Meta.Bit.IndexRange;
import Meta.Bit.IndexIterator;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	begin
	)	(	IndexRange<t_nWidth>
		)
		noexcept
	->	IndexIterator
		<	Index
			<	t_nWidth
			>
		>
	{	return
		{};
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	end
	)	(	IndexRange<t_nWidth>
				i_vRange
		)
		noexcept
	->	IndexSentinel
		<	typename
				IndexRange
				<	t_nWidth
				>
			::	CountType
		>
	{	return
		{	i_vRange
		.	get()
		};
	}
}
