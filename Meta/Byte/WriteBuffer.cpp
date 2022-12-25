export module Meta.Byte.WriteBuffer;

import Meta.Byte.Count;
import Meta.Byte.Copy;
import Meta.Byte.Buffer;
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
		<	Bytes
				t_nObjectBytes
		,	Bytes
				t_nValueBytes
			=	t_nObjectBytes
		>
	auto constexpr
	(	WriteBuffer
	)	(	Copy<t_nObjectBytes> const
			&	i_rObject
		,	::std::byte
			*	o_aBytes
		,	Bytes
				i_nActiveValueBytes
			=	t_nValueBytes
		)
		noexcept
	->	::std::byte*
	{
		static_assert(t_nValueBytes <= t_nObjectBytes);

		if (i_nActiveValueBytes > t_nValueBytes)
			::std::unreachable();

		return
		::std::copy
		(	begin(i_rObject)
		,	begin(i_rObject) + i_nActiveValueBytes
		,	o_aBytes
		);
	}

	template
		<	Bytes
				t_nValueBytes
		,	Bytes
				t_nObjectBytes
		>
	auto constexpr
	(	WriteBuffer
	)	(	Copy<t_nObjectBytes> const
			&	i_rObject
		,	Bytes
				i_nActiveValueBytes
			=	t_nValueBytes
		)
		noexcept
	->	Buffer<t_nValueBytes>
	{
		Buffer<t_nValueBytes>
			vBuffer
		;
		WriteBuffer
		(	i_rObject
		,	vBuffer.begin()
		,	i_nActiveValueBytes
		);
		return
			vBuffer
		;
	}
}
