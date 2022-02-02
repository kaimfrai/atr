export module Pack.Empty;

export import Std;
export import Meta.TupleList;

export namespace
	Pack
{
	/// special pack type that contains no elements
	struct
		[[nodiscard]]
		Empty
	:	Meta::TupleList
		<>
	{
		friend auto constexpr
		(	operator ==
		)	(	Empty
			,	Empty
			)
		->	bool
		{	return true;	}
	};

	/// instances of empty pack
	template
		<	typename
				t_tEmptyPack
		>
	concept
		PureEmptyInstance
	=	::std::same_as
		<	::std::remove_cvref_t<t_tEmptyPack>
		,	Empty
		>
	;
}
