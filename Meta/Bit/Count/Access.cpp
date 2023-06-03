export module Meta.Bit.Count.Access;

import Meta.Bit.Count;
import Meta.Bit.Index;
import Meta.Math.Prev;

import Std;

using ::Meta::Math::Prev;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	front
	)	(	Count<t_nWidth>
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
	auto constexpr inline
	(	back
	)	(	Count<t_nWidth>
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
			(	Prev
				(	nValue
				)
			)
		};
	}
}
