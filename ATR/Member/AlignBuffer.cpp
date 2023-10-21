export module ATR.Member.AlignBuffer;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;

import Meta.Memory.Alignment;
import Meta.Size;

using ::Meta::Memory::Alignment;
using ::Meta::SSize;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tElement
		,	SSize
				t_vBufferSize
		>
	struct
		AlignBuffer
	{
		using
			BufferType
		=	CountedBuffer
			<	t_tElement
			,	t_vBufferSize
			>
		;

		BufferType
			Buffer
			[	AlignmentCount
			]
		{};

		[[nodiscard]]
		auto static constexpr inline
		(	AlignmentToIndex
		)	(	Alignment
					i_vAlignment
			)
			noexcept
		->	SSize
		{	return
				MaxAlign
				.	Value
			-	i_vAlignment
				.	Value
			;
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
		{	return
				i_rThis
				.	Buffer
					[	AlignmentToIndex
						(	i_vAlignment
						)
					]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const&
			noexcept
		->	BufferType const*
		{	return
				Buffer
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const&
			noexcept
		->	BufferType const*
		{	return
				Buffer
			+	AlignmentCount
			;
		}
	};
}
