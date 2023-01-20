export module Meta.Math.Power;

import Meta.Memory.Size;

import Std;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr
	(	Power
	)	(	::std::integral auto
				i_nBase
		,	decltype(i_nBase)
				i_nExponent
		)
		noexcept
	->	decltype(i_nBase)
	{
		using
			tInteger
		=	decltype(i_nBase)
		;

		static_assert
		(	::std::is_unsigned_v<tInteger>
		,	"Power of signed integer not yet supported!"
		);

		auto constexpr
			nBitWidth
		=	static_cast<tInteger>
			(	BitSize
				(	Memory::ByteWidth<tInteger>
					{	1z
					}
				)
			.	get()
			)
		;

		if	(	i_nExponent
			>=	nBitWidth
			and	i_nBase
			>=	tInteger{2u}
			)
		{	::std::unreachable
			();
		}

		tInteger constexpr
			nOne
		{	1u
		};

		auto
			nResult
		=	nOne
		;
		auto
			nExponentMask
		=	nBitWidth
		>>	nOne
		;
		do
		{
			bool const
				nBitSet
			=	i_nExponent
			>=	nExponentMask
			;

			(	nResult
			*=	(	nBitSet
				*	i_nBase
				+	not
					nBitSet
				)
			*	nResult
			);

			(	i_nExponent
			&=	compl
				nExponentMask
			);

			(	nExponentMask
			>>=	nOne
			);

		}	while
			(	nExponentMask
			)
		;
		return
			nResult
		;
	}
}
