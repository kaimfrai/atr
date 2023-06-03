export module ATR.Member.ConfigData;

import ATR.Member.AlignBuffer;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.Info;
import ATR.Member.NamedInfo;

import Meta.Memory.Size;
import Meta.Size;
import Meta.String.Chain;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
using ::Meta::SSize;
using ::Meta::String::Chain;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		ConfigData
	{
		AlignBuffer<TypeID>
			Layout
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
