export module ATR.Member.AlignBuffer;

import ATR.Member.AlignBufferView;
import ATR.Member.AlignBufferIterator;
import ATR.Member.Constants;

import Meta.Memory.Alignment;

using ::Meta::Memory::Alignment;

export namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr inline
	(	AlignmentToIndex
	)	(	Alignment
				i_vAlignment
		)
		noexcept
	->	int
	{	return
			MaxAlign
			.	Value
		-	i_vAlignment
			.	Value
		;
	}

	template
		<	typename
				t_tElement
		>
	struct
		AlignBuffer
	{
		t_tElement
			Buffer
			[	AlignmentCount
			]
		{};

		short
			ElementCounts
			[	AlignmentCount
			]
		{};

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	this auto
				&&	i_rThis
			,	Alignment
					i_vAlignment
			)
			noexcept
		->	decltype(auto)
		{
			auto const
				vIndex
			=	AlignmentToIndex
					(	i_vAlignment
					)
			;
			return
				AlignBufferView
				{	i_rThis
					.	Buffer
						[	vIndex
						]
					.	Buffer
				,	i_rThis
					.	ElementCounts
						[	vIndex
						]
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	(	this auto
				&&	i_rThis
			)
			noexcept
		->	decltype(auto)
		{	return
				AlignBufferIterator
				{	i_rThis
					.	Buffer
				,	i_rThis
					.	ElementCounts
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	(	this AlignBuffer const
				&
			)
			noexcept
		->	decltype(auto)
		{	return
				AlignBufferSentinel
				{}
			;
		}
	};
}
