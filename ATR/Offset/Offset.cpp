export module ATR.Member.Offset;

import ATR.Offset.Bool;
import ATR.Offset.BoolArray;
import ATR.Offset.Field;
import ATR.Offset.FieldArray;
import ATR.Offset.Layout;
import ATR.Offset.Member;
import ATR.Offset.Object;
import ATR.Member.Info;

import Meta.Memory.Size;
import Meta.Token.Type;

using ::Meta::BitSize;
using ::Meta::RestoreTypeEntity;

export namespace
	ATR::Member
{
	template
		<	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	struct
		Offset
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	auto
				&&	i_rObject
			)
			noexcept
		->	decltype(auto)
		{	return
				static_cast<decltype(i_rObject)>(i_rObject)
			->*	::ATR::Offset::Member
				<	t_vOffset
				,	t_tData
				>{}
			;
		}
	};

	template
		<	Info
				t_vInfo
		>
	using
		Offset_For
	=	Offset
		<	t_vInfo
			.	Offset
		,	RestoreTypeEntity
			<	t_vInfo
				.	Type
			>
		>
	;
}
