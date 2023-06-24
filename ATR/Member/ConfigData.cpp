export module ATR.Member.ConfigData;

import ATR.Member.AlignBuffer;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.CountedType;
import ATR.Member.Info;
import ATR.Member.NamedInfo;

import Meta.Memory.Size;
import Meta.String.Chain;

import Std;

using ::Meta::BitSize;
using ::Meta::String::Chain;

export namespace
	ATR::Member
{
	struct
		ConfigData
	{
		AlignBuffer<CountedType>
			AlignTypeCounts
		{};

		BitSize
			BitCount
		{};

		CountedBuffer<NamedInfo, NameBufferSize>
			NamedInfoList
		{};

		[[nodiscard]]
		auto constexpr inline
		(	FindMemberInfo
		)	(	Chain
					i_rMemberName
			)	const
			noexcept
		->	Info
		{
			auto const
				aNameBegin
			=	NamedInfoList
				.	begin
					()
			;

			auto const
				aNameEnd
			=	NamedInfoList
				.	end
					()
			;

			auto const
				aNamePosition
			=	::std::lower_bound
				(	aNameBegin
				,	aNameEnd
				,	i_rMemberName
				)
			;

			if	(	(	aNamePosition
					==	aNameEnd
					)
				or	(	aNamePosition
						->	Name
					!=	i_rMemberName
					)
				)
			{
				::std::unreachable
				();
			}

			return
				aNamePosition
				->	Info
			;
		}
	};
}
