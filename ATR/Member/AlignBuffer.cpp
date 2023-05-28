export module ATR.Member.AlignBuffer;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;

import Meta.Memory.Alignment;
import Meta.Size;

import Std;

using ::Meta::Memory::Alignment;
using ::Meta::SSize;
using ::Meta::USize;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tElement
		>
	struct
		AlignBuffer
	{
		auto static constexpr
			AlignmentCount
		=	static_cast<USize>
			(	MaxAlign
				.	Value
			)
		+	1uz
		;

		auto static constexpr
			BufferSize
		=	TypeBufferSize
		;

		using
			value_type
		=	t_tElement
		;

		using
			BufferType
		=	value_type
				[	BufferSize
				]
		;

		BufferType
			Buffer
		{};

		::std::uint8_t
			AlignmentCounter
			[	AlignmentCount
			]
		{};

		::std::uint8_t
			TotalCounter
		{};

		[[nodiscard]]
		auto constexpr
		(	Counter
		)	(	Alignment
					i_vAlignment
			)	&
			noexcept
		->	decltype(auto)
		{	return
				AlignmentCounter
				[	i_vAlignment
					.	Value
				]
			;
		}

		[[nodiscard]]
		auto constexpr
		(	Counter
		)	(	Alignment
					i_vAlignment
			)	const&
			noexcept
		->	USize
		{	return
				AlignmentCounter
				[	i_vAlignment
					.	Value
				]
			;
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	&
			noexcept
		{	return
				+
				Buffer
			;
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const&
			noexcept
		{	return
				+
				Buffer
			;
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	&
			noexcept
		{	return
				Buffer
			+	TotalCounter
			;
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const&
			noexcept
		{	return
				Buffer
			+	TotalCounter
			;
		}
	};
}
