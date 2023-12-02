export module Meta.Auto.Ref.DataRange;

import Meta.Size;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tProto
		,	typename
				t_tElement
		>
	concept
		ProtoDataRange_Of
	=	// TODO make this work with ADL data and ssize
		requires
			(	t_tProto
				&&	c_rProto
			)
		{
			{	::std::data
				(	c_rProto
				)
			}	noexcept
			->	::std::convertible_to
				<	t_tElement
					*
				>
			;
			{	::std::ssize
				(	c_rProto
				)
			}	noexcept
			->	::std::convertible_to
				<	SSize
				>
			;
		}
	;
}
