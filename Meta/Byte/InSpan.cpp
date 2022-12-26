export module Meta.Byte.InSpan;

import Meta.Byte.Count;
import Std;

export namespace
	Meta::Byte
{
	struct
		InSpan
	:	::std::span<::std::byte const>
	{
		using
			::std::span<::std::byte const>
		::	span
		;

		explicit(false) constexpr
		(	InSpan
		)	(	::std::byte const*
					i_aBegin
			,	Bytes
					i_nCount
			)
		:	InSpan
			{	i_aBegin
			,	i_nCount.get()
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	size
		)	()	const
			noexcept
		->	Bytes
		{	return
			{	::std::span<::std::byte const>
			::	size()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	subspan
		)	(	Bytes
					i_nOffset
			,	Bytes
					i_nCount
			)	const
			noexcept
		->	InSpan
		{	auto const
				vSubSpan
			=	::std::span<::std::byte const>
			::	subspan
				(	i_nOffset.get()
				,	i_nCount.get()
				)
			;
			return
			{	vSubSpan.begin()
			,	vSubSpan.end()
			};
		}
	};
}
