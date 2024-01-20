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
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	front
	)	(	Count<t_vWidth>
				i_vRange
		)
		noexcept
	->	Index<t_vWidth>
	{
		if	(not i_vRange.get())
			::std::unreachable();

		return
		Index
		<	t_vWidth
		>{};
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	back
	)	(	Count<t_vWidth>
				i_vRange
		)
		noexcept
	->	Index<t_vWidth>
	{
		auto const
			vValue
		=	i_vRange
		.	get()
		;
		if	(not vValue)
			::std::unreachable();

		using
			tIndexType
		=	Index
			<	t_vWidth
			>
		;
		return
		tIndexType
		{	static_cast<tIndexType::IndexType>
			(	Prev
				(	vValue
				)
			)
		};
	}
}
