export module ATR.Member.NamedInfo;

import ATR.Member.Constants;
import ATR.Member.Name;
import ATR.Member.Alias;
import ATR.Member.Info;

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

		auto constexpr
		(	operator=
		)	(	Alias const
				&	i_rAlias
			)	&
			noexcept
		{
			Name
			=	i_rAlias
				.	Name
			;
			Info
			=	i_rAlias
				.	Info
			;
			return
			*	this
			;
		}
	};

	using
		NamedInfoBuffer
	=	NamedInfo
			[	NamedInfoBufferSize
			]
	;

	struct
		NamedInfoView
	:	::std::span
		<	NamedInfo
		>
	{
		using
			::std::span
			<	NamedInfo
			>
		::	span
		;
	};
}
