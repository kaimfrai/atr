export module ATR.Member.Compare.Layout;

import ATR.Member.Name;
import ATR.Member.NamedInfo;
import Meta.Memory.Alignment;

import Std;

using ::Meta::Memory::Alignment;

export namespace
	ATR::Member::Compare
{
	struct
		LayoutSortKey
	{
		Alignment
			Align
		;
		NameView
			Name
		;
	};

	struct
		Layout
	{
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	NamedInfo const
				&	i_rElement
			,	LayoutSortKey const
				&	i_rValue
			)
			noexcept
		->	bool
		{
			if	(	auto const
						vCompare
					=	i_rElement
						.	Info
						.	Type
						.	GetAlign
							()
					<=>	i_rValue
						.	Align
				;	not
					::std::is_eq
					(	vCompare
					)
				)
			{	return
				::std::is_gt
				(	vCompare
				);
			}

			return
				NameView
				{	i_rElement
					.	Name
				}
			<	i_rValue
				.	Name
			;
		}
	};
}
