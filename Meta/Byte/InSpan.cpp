export module Meta.Byte.InSpan;

import Meta.Memory.Size;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Count;

import std;

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

		explicit(false) constexpr inline
		(	InSpan
		)	(	::std::byte const
				*	i_aBegin
			,	ByteSize
					i_vSize
			)
			noexcept
		:	InSpan
			{	i_aBegin
			,	i_aBegin
			+	i_vSize
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	size
		)	()	const
			noexcept
		->	Bytes
		{	return
			{	static_cast<Bytes::CountType>
				(	::std::span<::std::byte const>
				::	size()
				)
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	subspan
		)	(	ByteSize
					i_vOffset
			,	Bytes
					i_vCount
			)	const
			noexcept
		->	InSpan
		{	auto const
				vSubSpan
			=	::std::span<::std::byte const>
			::	subspan
				(	static_cast<::std::size_t>(i_vOffset.get())
				,	static_cast<::std::size_t>(i_vCount.get())
				)
			;
			return
			{	vSubSpan.begin()
			,	vSubSpan.end()
			};
		}
	};
}
