export module Meta.Byte.ReadBuffer;

import Meta.Size;
import Meta.Byte.Buffer;
import Meta.Byte.AsObject;
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
		<	typename
				t_tObject
		,	USize
				t_nValueBytes
			=	sizeof(t_tObject)
		>
	[[nodiscard]]
	auto constexpr
	(	ReadBuffer
	)	(	::std::byte const
			*	i_aBytes
		,	USize
				i_nActiveValueBytes
			=	t_nValueBytes
		)
		noexcept
	->	t_tObject
	{
		auto constexpr nObjectSize = sizeof(t_tObject);
		static_assert(t_nValueBytes <= nObjectSize);

		if (i_nActiveValueBytes > t_nValueBytes)
			::std::unreachable();

		Buffer<nObjectSize>
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
		AsObject<t_tObject>
		(	vObject
		);
	}
}
