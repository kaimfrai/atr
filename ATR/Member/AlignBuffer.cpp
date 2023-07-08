export module ATR.Member.AlignBuffer;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.CountedType;

import Meta.Generic.Insert;
import Meta.Memory.Alignment;
import Meta.Size;
import Meta.Token.TypeID;

using ::Meta::Generic::StructureOfArrays::InsertByIndex;
using ::Meta::Memory::Alignment;
using ::Meta::SSize;
using ::Meta::TypeID;

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
		using
			BufferType
		=	CountedBuffer
			<	t_tElement
			,	TypeBufferSize
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
		)	(	Alignment
					i_vAlignment
			)	&
			noexcept
		->	BufferType&
		{	return
				Buffer
				[	AlignmentToIndex
					(	i_vAlignment
					)
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	Alignment
					i_vAlignment
			)	const&
			noexcept
		->	BufferType const&
		{	return
				Buffer
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

	auto constexpr inline
	(	AddType
	)	(	AlignBuffer<CountedType>
			&	i_rAlignBuffer
		,	TypeID
				i_vType
		)
		noexcept
	{
		auto const
			vAlign
		=	i_vType
			.	GetAlign
				()
		;

		auto
		&	[	rBuffer
			,	rCount
			]
		=	i_rAlignBuffer
				[	vAlign
				]
		;

		auto
			vInsertIndex
		=	0z
		;

		for	(;	(	vInsertIndex
				!=	rCount
				)
			;	++	vInsertIndex
			)
		{
			auto
			&	rTypeCount
			=	rBuffer
					[	vInsertIndex
					]
			;

			if	(	rTypeCount
					.	Type
				==	i_vType
				)
			{
				++	rTypeCount
					.	Count
				;
				return
				;
			}
		}

		InsertByIndex<CountedType>
		(	rCount
		,	vInsertIndex
		,	{	rBuffer
			,	{	i_vType
				,	1z
				}
			}
		);
	}
}
