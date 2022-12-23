export module Meta.Buffer.Proto;

import Meta.Size;

import Std;

export namespace
	Meta::Buffer
{
	template
		<	typename
				t_tBuffer
		>
	concept
		Proto
	=	std::ranges::contiguous_range
		<	t_tBuffer
		>
	and	requires
			(	t_tBuffer
					c_vBuffer
			)
		{
			typename
				t_tBuffer
			::	value_type
			;

			typename
				t_tBuffer
			::	pointer
			;
			typename
				t_tBuffer
			::	const_pointer
			;

			{	&c_vBuffer[0uz]
			}->	std::same_as
				<	typename
						t_tBuffer
					::	pointer
				>
			;

			{	c_vBuffer.max_size()
			}->	std::same_as
				<	USize
				>
			;
		}
	and	std::default_initializable
		<	typename
				t_tBuffer
			::	value_type
		>
	and	std::is_trivially_destructible_v
		<	typename
				t_tBuffer
			::	value_type
		>
	;
}
