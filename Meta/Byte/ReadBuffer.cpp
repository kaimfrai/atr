export module Meta.Byte.ReadBuffer;

import Meta.Byte.Count;
import Meta.Byte.Copy;
import Std;

static_assert
(	::std::endian::native
==	::std::endian::little
,	"Big Endian not yet supported for Meta::Byte::ReadBuffer!"
);

export namespace
	Meta::Byte
{
	template
		<	Bytes
				t_nObjectBytes
		,	Bytes
				t_nValueBytes
			=	t_nObjectBytes
		>
	[[nodiscard]]
	auto constexpr
	(	ReadBuffer
	)	(	::std::byte const
			*	i_aBytes
		,	Bytes
				i_nActiveValueBytes
			=	t_nValueBytes
		)
		noexcept
	->	Copy<t_nObjectBytes>
	{
		static_assert(t_nValueBytes <= t_nObjectBytes);

		if (i_nActiveValueBytes > t_nValueBytes)
			::std::unreachable();

		Copy<t_nObjectBytes>
			vObject
		;

		::std::copy
		(	i_aBytes
		,	i_aBytes + i_nActiveValueBytes
		,	begin(vObject)
		);
		::std::fill
		(	begin(vObject) + i_nActiveValueBytes
		,	end(vObject)
		,	::std::byte{}
		);

		return
			vObject
		;
	}
}
