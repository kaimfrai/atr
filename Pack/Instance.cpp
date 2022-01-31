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
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		Instance_Transform
	=	PureTypeInstance_Transform
		<	t_tPackInstance
		,	t_t1Transform
		>
	or	PureValueInstance_Transform
		<	t_tPackInstance
		,	t_t1Transform
		>
	or	PureEmptyInstance_Transform
		<	t_tPackInstance
		,	t_t1Transform
		>
	;

	///	defines what behaves like a pack
	template
		<	typename
				t_tPackInstance
		>
	concept
		Instance
	=	Instance_Transform
		<	t_tPackInstance
		,	std::type_identity_t
		>
	;
}
