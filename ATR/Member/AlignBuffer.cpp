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
				[	MaxAlign
					.	Value
				-	i_vAlignment
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
				[	MaxAlign
					.	Value
				-	i_vAlignment
					.	Value
				]
			;
		}

		[[nodiscard]]
		auto constexpr
		(	Offset
		)	(	Alignment
					i_vAlignment
			)	const
			noexcept
		->	USize
		{
			if	(	i_vAlignment
				==	MaxAlign
				)
			{
				return
					0uz
				;
			}

			++	i_vAlignment
				.	Value
			;

			auto const
				vCounter
			=	Counter
				(	i_vAlignment
				)
			;
			return
				vCounter
			+	Offset
				(	i_vAlignment
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	Alignment
					i_vAlignment
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			::std::span
			{	(	Buffer
				+	Offset
					(	i_vAlignment
					)
				)
			,	Counter
				(	i_vAlignment
				)
			};
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	&
			noexcept
		{	return
			::std::begin
			(	Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const&
			noexcept
		{	return
			::std::begin
			(	Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	&
			noexcept
		{	return
				begin
				()
			+	Offset
				(	0_align
				)
			+	Counter
				(	0_align
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const&
			noexcept
		{	return
				begin
				()
			+	Offset
				(	0_align
				)
			+	Counter
				(	0_align
				)
			;
		}
	};
}
