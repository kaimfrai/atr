export module Meta.Byte.WriteBuffer;

import Meta.Size;
import Meta.Byte.AsBuffer;
import Std;

static_assert
(	::std::endian::native
==	::std::endian::little
,	"Big Endian not yet supported for Meta::Byte::WriteBuffer!"
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
	auto constexpr
	(	WriteBuffer
	)	(	t_tObject const
			&	i_rObject
		,	::std::byte
			*	o_aBytes
		,	USize
				i_nActiveValueBytes
			=	t_nValueBytes
		)
	->	::std::byte*
	{
		auto constexpr nObjectSize = sizeof(t_tObject);
		static_assert(t_nValueBytes <= nObjectSize);

		if (i_nActiveValueBytes > t_nValueBytes)
			::std::unreachable();

		auto const
			vBuffer
		=	AsBuffer
			(	i_rObject
			)
		;

		return
		::std::copy
		(	begin(vBuffer)
		,	begin(vBuffer) + i_nActiveValueBytes
		,	o_aBytes
		);
	}
}
