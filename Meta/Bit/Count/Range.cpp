export module Meta.Bit.Count.Range;

import Meta.Bit.Index;
import Meta.Bit.Count;
import Meta.Bit.IndexIterator;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	begin
	)	(	Count<t_nWidth>
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
	auto constexpr inline
	(	end
	)	(	Count<t_nWidth>
				i_vRange
		)
		noexcept
	->	IndexSentinel
		<	typename
				Count
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
