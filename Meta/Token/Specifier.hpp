export module Meta.Token:Specifier;

import Meta.Size;
import Meta.Bit.Size;
import Meta.Byte.Buffer;

import Std;

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
		<	BitSize
				t_nSize
		>
	struct
		BitField final
	{
		Byte::Buffer<t_nSize> Entity;
	};
}
