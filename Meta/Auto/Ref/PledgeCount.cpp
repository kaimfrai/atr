export module Meta.Auto.Ref.PledgeCount;

import Meta.Auto.CPO.Data;
import Meta.Auto.Ref.ArrayView;
import Meta.Auto.Ref.DataRange;
import Meta.Size;

import std;

export namespace
	Meta::Auto
{
	template
		<	typename
				t_tElement
		,	SSize
				t_vPledgedCount
		>
	struct
		CountPledge
	:	ArrayView
		<	t_tElement
		>
	{
		explicit(false) constexpr inline
		(	CountPledge
		)	()
			noexcept
		=	default
		;

		explicit(true) constexpr inline
		(	CountPledge
		)	(	CountPledge::pointer
					i_aElement
			)
			noexcept
		:	ArrayView<t_tElement>
			{	i_aElement
			}
		{}

		explicit(true) constexpr inline
		(	CountPledge
		)	(	ProtoOwnerContainer_Of<t_tElement> auto
				&&	i_rContainer
			)
			noexcept
		:	ArrayView<t_tElement>
			{	::Meta::CPO::Data
				(	i_rContainer
				)
			}
		{}

		explicit(true) constexpr inline
		(	CountPledge
		)	(	ProtoBorrowContainer_Of<t_tElement> auto
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
		)	(	this CountPledge
			)
			noexcept
		->	SSize
		{	return
				t_vPledgedCount
			;
		}
	};

	template
		<	SSize
				t_vPledgeCount
		,	typename
				t_tElement
		>
	[[nodiscard]]
	auto constexpr inline
	(	PledgeCount
	)	(	t_tElement
			*	i_aData
		)
		noexcept
	->	CountPledge
		<	t_tElement
			&
		,	t_vPledgeCount
		>
	{	return
		CountPledge
		<	t_tElement
			&
		,	t_vPledgeCount
		>{	i_aData
		};
	}
}
