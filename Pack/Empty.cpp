export module Pack.Empty;

export import Std;
export import Stateless.Tuple;
export import Std.Concepts;

export namespace
	Pack
{
	/// special pack type that contains no elements
	struct
		[[nodiscard]]
		Empty
	:	Stateless::Tuple
		<>
	{};

	/// instances of empty pack
	template
		<	typename
				t_tEmptyPack
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		PureEmptyInstance_Transform
	=	Stateless::Type_Transform
		<	t_tEmptyPack
		,	t_t1Transform
		>
	and	Std::SameAs_Transform
		<	t_tEmptyPack
		,	Empty
		,	t_t1Transform
		>
	;

	/// instances of empty pack
	template
		<	typename
				t_tEmptyPack
		>
	concept
		PureEmptyInstance
	=	PureEmptyInstance_Transform
		<	t_tEmptyPack
		,	std::type_identity
		>
	;
}
