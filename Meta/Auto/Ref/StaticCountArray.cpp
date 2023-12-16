export module Meta.Auto.Ref.StaticCountArray;

import Meta.Auto.CPO.Data;
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
		)	(	ProtoOwnerContainer_Of_AtLeast<t_tElement, t_vCount> auto
				&	i_rContainer
			)
			noexcept
		:	ArrayView<t_tElement>
			{	::Meta::CPO::Data
				(	i_rContainer
				)
			}
		{}

		explicit(true) constexpr inline
		(	StaticCountArray
		)	(	ProtoBorrowContainer_Of_AtLeast<t_tElement, t_vCount> auto
					i_rContainer
			)
			noexcept
		:	ArrayView<t_tElement>
			{	::Meta::CPO::Data
				(	i_rContainer
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
