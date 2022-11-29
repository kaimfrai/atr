export module Meta.Dispatch:CharacterSet;

export import Meta.Arithmetic;
export import Meta.Token;

export namespace
	Meta::Dispatch
{
	using
		PrintableCharSet
	=	decltype
		(	(Sequence<'~' + 1 - ' '> += Index<' '>)
		.	CastAll<char>()
		)
	;

	using
		LowerCaseCharSet
	=	decltype
		(	(Sequence<'z' + 1 - 'a'> += Index<'a'>)
		.	CastAll<char>()
		)
	;

	using
		UpperCaseCharSet
	=	decltype
		(	(Sequence<'Z' + 1 - 'A'> += Index<'A'>)
		.	CastAll<char>()
		)
	;

	using
		DecimalCharSet
	=	decltype
		(	(Sequence<'9' + 1 - '0'> += Index<'0'>)
		.	CastAll<char>()
		)
	;

	using
		BasicCharSet
	=	decltype
		(	DecimalCharSet{}
		|	UpperCaseCharSet{}
		|	Index<'_'>
		|	LowerCaseCharSet{}
		)
	;
}
