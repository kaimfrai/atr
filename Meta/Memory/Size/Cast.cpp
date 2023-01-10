export module Meta.Memory.Size.Cast;

import Meta.Bit.Index;
import Meta.Memory.Size;
import Meta.Math.Divide;

export namespace
	Meta::Memory
{
	template
		<	typename
				t_tSize
		>
	struct
		[[nodiscard]]
		SizeCastResult
	{
		t_tSize
			Quotient
		;
		using
			RemainderType
		=	Bit::Index
			<	t_tSize
				{	1z
				}
			>
		;
		RemainderType
			Remainder
		;

		explicit(true) constexpr
		(	SizeCastResult
		)	(	BitSize
					i_nBitSize
			)
		:	Quotient
			{	Math::Divide
				(	i_nBitSize
				.	get()
				,	t_tSize::Width
				)
			.	Floor
				()
			}
		,	Remainder
			{	i_nBitSize
			-	Quotient
			}
		{}
	};

	///	ADL-enabled
	template
		<	typename
				t_tSize
		>
	[[nodiscard]]
	auto constexpr
	(	SizeCast
	)	(	BitSize
				i_nBitSize
		)
		noexcept
	->	SizeCastResult<t_tSize>
	{	return
		SizeCastResult<t_tSize>
		{	i_nBitSize
		};
	}
}
