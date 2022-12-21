export module Meta.Byte.AsObject;

import Meta.Byte.Buffer;
import Std;

export namespace
	Meta::Byte
{
	template
		<	typename
				t_tObject
		>
	auto constexpr
	(	AsObject
	)	(	Buffer
			<	sizeof(t_tObject)
			>	const
			&	i_rBuffer
		)
		noexcept
	->	t_tObject
	{	return
		::std::bit_cast
		<	t_tObject
		>(	i_rBuffer
		);
	}
}
