export module ATR.Member.AlignBuffer;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.CountedType;

import Meta.Memory.Alignment;
import Meta.Size;
import Meta.Token.TypeID;

using ::Meta::Memory::Alignment;
using ::Meta::SSize;
using ::Meta::TypeID;

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

	[[nodiscard]]
	auto constexpr inline
	(	AddType
	)	(	AlignBuffer<CountedType, TypeBufferSize>
			&	i_rAlignBuffer
		,	TypeID
				i_vType
		,	SSize
				i_vCount
			=	1z
		)
		noexcept
	->	SSize
	{
		auto const
			vAlign
		=	i_vType
			.	GetAlign
				()
		;

		auto
		&	rAlignedTypeCounts
		=	i_rAlignBuffer
				[	vAlign
				]
		;

		for	(	auto
				&	[	rType
					,	rCount
					]
			:	rAlignedTypeCounts
			)
		{
			if	(	rType
				==	i_vType
				)
			{
				auto const
					vPreviousCount
				=	rCount
				;
				rCount
				+=	i_vCount
				;
				return
					vPreviousCount
				;
			}
		}

		rAlignedTypeCounts
		.	push_back
			(	CountedType
				{	i_vType
				,	i_vCount
				}
			)
		;

		return
			0z
		;
	}
}
