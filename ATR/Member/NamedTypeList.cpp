export module ATR.Member.NamedTypeList;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.NamedType;

import Meta.Generic.MoveBackward;
import Meta.String.Chain;
import Meta.Token.TypeID;

using ::Meta::Generic::MoveBackward_Until;
using ::Meta::String::Chain;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		NamedTypeList
	{
		CountedBuffer<NamedType, NameBufferSize>
			List
		{};

		auto constexpr inline
		(	AddNamedType
		)	(	Chain
					i_rMemberName
			,	TypeID
					i_vType
			)
			noexcept
		{
			auto const
				aInsert
			=	MoveBackward_Until
				(	List
					.	begin
						()
				,	List
					.	end
						()
				,	[	i_rMemberName
					]	(	NamedType const
							&	i_rElement
						)
					{	return
							i_rElement
							.	Name
						<=	i_rMemberName
						;
					}
				)
			;

			aInsert
			->	Name
			=	i_rMemberName
			;
			aInsert
			->	Type
			=	i_vType
			;

			++	List
				.	Count
			;
		}
	};
}
