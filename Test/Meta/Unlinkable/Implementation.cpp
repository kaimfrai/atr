module Test.Link.SwitchToString;

import Meta.Unlinkable;

auto
(	SwitchToString
)	(	int
			i_vKey
	)
->	::std::string
{
	switch
		(	i_vKey
		)
	{
		case
			0
		:	return
				"ABCD"
			;
		case
			1
		:	return
				"EFGH"
			;
		default
		:	::Meta::Unlinkable
			();
	}
}
