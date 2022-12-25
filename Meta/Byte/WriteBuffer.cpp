export module Meta.Byte.WriteBuffer;

import Meta.Byte.Count;
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
		,	Bytes
				t_nValueBytes
			=	SizeOf<t_tObject>
		>
	auto constexpr
	(	WriteBuffer
	)	(	t_tObject const
			&	i_rObject
		,	::std::byte
			*	o_aBytes
		,	Bytes
				i_nActiveValueBytes
			=	t_nValueBytes
		)
	->	::std::byte*
	{
		static_assert(t_nValueBytes <= SizeOf<t_tObject>);

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
