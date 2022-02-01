export module Pack.Instance;

export import Pack.Type;
export import Pack.Value;
export import Pack.Empty;
export import Std;
export import Std.TypeTraits;

export namespace
	Pack
{
	///	defines what behaves like a pack
	template
		<	typename
				t_tPackInstance
		>
	concept
		Instance
	=	PureTypeInstance
		<	t_tPackInstance
		>
	or	PureValueInstance
		<	t_tPackInstance
		>
	or	PureEmptyInstance
		<	t_tPackInstance
		>
	;
}
