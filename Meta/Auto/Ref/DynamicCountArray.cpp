export module Meta.Auto.Ref.DynamicCountArray;

import Meta.Auto.CPO.Data;
import Meta.Auto.CPO.SSize;
import Meta.Auto.Ref.ArrayView;
import Meta.Auto.Ref.DataRange;
import Meta.Size;

import Std;

export namespace
	Meta::Auto
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
		)	(	DynamicCountArray::pointer
					i_aData
			,	SSize
					i_vCount
			)
			noexcept
		:	ArrayView<t_tElement>
			{	i_aData
			}
		,	m_vCount
			{	i_vCount
			}
		{}

		explicit(true) constexpr inline
		(	DynamicCountArray
		)	(	ProtoOwnerContainer_Of<t_tElement> auto
				&	i_rContainer
			)
			noexcept
		:	DynamicCountArray
			{	::Meta::CPO::Data
				(	i_rContainer
				)
			,	::Meta::CPO::SSize
				(	i_rContainer
				)
			}
		{}

		explicit(true) constexpr inline
		(	DynamicCountArray
		)	(	ProtoBorrowContainer_Of<t_tElement> auto
					i_rContainer
			)
			noexcept
		:	DynamicCountArray
			{	::Meta::CPO::Data
				(	i_rContainer
				)
			,	::Meta::CPO::SSize
				(	i_rContainer
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
