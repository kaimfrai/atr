module;

export module Meta.Type;

export import Meta.Common;

export namespace
	Meta
{
	template
		<	USize
			=	0uz
		>
	struct
		Extent
	{};

	template
		<	typename
				t_tType
		>
	struct
		Type
	{
		///	Creates a function type with this type as return type.
		template
			<	typename
				...	t_tpArgument
			>
		auto consteval
		(	operator()
		)	(	Type<t_tpArgument>
				...
			)	const
		{	return
			Type
			<	t_tType
				(	t_tpArgument
					...
				)
			>{};
		}

		///	Creates an array type with this type as element type.
		template
			<	USize
					t_nIndex
			>
		auto consteval
		(	operator[]
		)	(	Extent<t_nIndex>
			)	const
		{	if	constexpr
				(	t_nIndex
				==	0uz
				)
				return
				Type
				<	t_tType
					[]
				>{};
			else
				return
				Type
				<	t_tType
					[	t_nIndex
					]
				>{};
		}
	};
}
