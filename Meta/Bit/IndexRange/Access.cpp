export module Meta.Bit.IndexRange.Access;

import Meta.Bit.IndexRange;
import Meta.Bit.Index;

import Std;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	front
	)	(	IndexRange<t_nWidth>
				i_vRange
		)
		noexcept
	->	Index<t_nWidth>
	{
		if	(not i_vRange.get())
			::std::unreachable();

		return
		Index
		<	t_nWidth
		>{};
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	back
	)	(	IndexRange<t_nWidth>
				i_vRange
		)
		noexcept
	->	Index<t_nWidth>
	{
		auto const
			nValue
		=	i_vRange
		.	get()
		;
		if	(not nValue)
			::std::unreachable();

		using
			tIndexType
		=	Index
			<	t_nWidth
			>
		;
		return
		tIndexType
		{	static_cast<tIndexType::IndexType>
			(	nValue
			-	1u
			)
		};
	}
}
