export module Meta.Auto.Ref.StaticCountArray;

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
		,	SSize
				t_vCount
		>
	struct
		StaticCountArray
	:	ArrayView
		<	t_tElement
		>
	{
		explicit(false) constexpr inline
		(	StaticCountArray
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	StaticCountArray
		)	(	ProtoDataRange_Of<t_tElement> auto
				&&	i_rDataRange
			)
			noexcept
		requires
			(	// TODO this works for default initialization of size to 0
				// Ideally this should be using the argument directly via P2280
				// however that is not yet supported in Clang 18 as of Dec 23
				::std::ssize
				(	::std::remove_reference_t
					<	decltype(i_rDataRange)
					>{}
				)
			>=	t_vCount
			)
		:	ArrayView<t_tElement>
			{	::std::data
				(	i_rDataRange
				)
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	ssize
		)	(	this StaticCountArray
			)
			noexcept
		->	SSize
		{	return
				t_vCount
			;
		}
	};
}
