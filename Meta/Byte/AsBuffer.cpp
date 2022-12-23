export module Meta.Byte.AsBuffer;

import Meta.Byte.Buffer;
import Std;

export namespace
	Meta::Byte
{
	auto constexpr
	(	AsBuffer
	)	(	auto const
			&	i_rObject
		)
		noexcept
	->	BufferFor
		<	decltype(i_rObject)
		>
	{	return
		::std::bit_cast
		<	BufferFor
			<	decltype(i_rObject)
			>
		>(	i_rObject
		);
	}
}
