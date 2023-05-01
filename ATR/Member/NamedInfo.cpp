export module ATR.Member.NamedInfo;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.Info;
import ATR.Member.Name;

import Std;

export namespace
	ATR::Member
{
	struct
		NamedInfo
	{
		::ATR::Member::Name
			Name
		{};

		Info
			Info
		{};

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
		)	(	NamedInfo const
				&
			,	NamedInfo const
				&
			)
			noexcept
		=	default;
	};

	using
		NamedInfoBuffer
	=	CountedBuffer
		<	NamedInfo
		,	NameBufferSize
		>
	;
}
