export module Meta.Auto.Ref.DynamicCountArray;

import Meta.Auto.Ref.ArrayView;
import Meta.Auto.Ref.DataRange;
import Meta.Size;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tElement
		>
	struct
		DynamicCountArray
	:	ArrayView
		<	t_tElement
		>
	{
		SSize
			m_vCount
		{};

		explicit(false) constexpr inline
		(	DynamicCountArray
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	DynamicCountArray
		)	(	t_tElement
				*	i_aElements
			,	SSize
					i_vCount
			)
			noexcept
		:	ArrayView<t_tElement>
			{	i_aElements
			}
		,	m_vCount
			{	i_vCount
			}
		{}

		explicit(true) constexpr inline
		(	DynamicCountArray
		)	(	ProtoDataRange_Of<t_tElement> auto
				&&	i_rDataRange
			)
			noexcept
		:	DynamicCountArray
			{	::std::data
				(	i_rDataRange
				)
			,	::std::ssize
				(	i_rDataRange
				)
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	ssize
		)	(	this DynamicCountArray
					i_rSpan
			)
			noexcept
		->	SSize
		{	return
				i_rSpan
				.	m_vCount
			;
		}
	};
}
