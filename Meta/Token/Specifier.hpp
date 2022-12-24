export module Meta.Token:Specifier;

import Meta.Size;
import Meta.Arithmetic;
import Meta.Bit.Count;

export namespace
	Meta::Specifier
{
	template
		<	typename
				t_tEntity
		>
	struct
		Mut final
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
		Mut
		<	Mut
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
		UInt<Bits{t_nSize}> Entity : t_nSize;
	};
}
