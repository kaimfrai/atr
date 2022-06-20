export module Meta.Token:Specifier;

export import Meta.Arithmetic;

export import Std;

export namespace
	Meta::Specifier
{
	template
		<	typename
				t_tEntity
		>
	struct
		Mutable final
	{
		[[no_unique_address]]
		mutable t_tEntity Entity;
	};

	// cannot nest mutable
	template
		<	typename
				t_tEntity
		>
	struct
		Mutable
		<	Mutable
			<	t_tEntity
			>
		>
	;

	template
		<	USize
				t_nSize
		>
	struct
		BitField final
	{
		UInt<t_nSize> Entity : t_nSize;
	};
}
