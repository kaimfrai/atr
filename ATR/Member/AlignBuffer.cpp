export module ATR.Member.AlignBuffer;

import ATR.Member.AlignBufferIterator;
import ATR.Member.AlignBufferView;
import ATR.Member.Constants;
import ATR.Member.CountedType;

import Meta.Memory.Alignment;
import Meta.Memory.Size;

import std;

using ::Meta::BitSize;
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

	struct
		AlignBuffer
	{
		CountedTypeBuffer
			Buffer
			[	ByteAlignCount
			]
		{};

		short
			ElementCounts
			[	ByteAlignCount
			]
		{};

		BitSize
			Size
		{};

		[[nodiscard]]
		auto constexpr inline
		(	HasAny
		)	()	const
			noexcept
		->	bool
		{	return
			::std::any_of
			(	ElementCounts
			,		ElementCounts
				+	ByteAlignCount
			,	[]	(	short
							i_vCount
					)
				{	return
						i_vCount
					>	0
					;
				}
			);
		}

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
		{	return
				::std::default_sentinel
			;
		}
	};
}
