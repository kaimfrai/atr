export module Meta.Memory.Size.Cast;

import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Math.Divide;

export namespace
	Meta::Memory
{
	template
		<	typename
				t_tIndex
		>
	struct
		[[nodiscard]]
		IndexCastResult
	{
		using
			SizeType
		=	typename
				t_tIndex
			::	MemorySizeType
		;
		SizeType
			Quotient
		;
		using
			RemainderType
		=	t_tIndex
		;
		RemainderType
			Remainder
		;

		explicit(true) constexpr
		(	IndexCastResult
		)	(	BitSize
					i_nBitSize
			)
		:	Quotient
			{	Math::Divide
				(	i_nBitSize
				.	get()
				,	SizeType::Width
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
				t_tIndex
		>
	[[nodiscard]]
	auto constexpr
	(	IndexCast
	)	(	BitSize
				i_nBitSize
		)
		noexcept
	->	IndexCastResult<t_tIndex>
	{	return
		IndexCastResult<t_tIndex>
		{	i_nBitSize
		};
	}
}
