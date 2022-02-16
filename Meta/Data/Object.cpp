export module Meta.Data.Object;

export import Meta.Concept.Category;

export namespace
	Meta::Data
{
	template
		<	typename
		>
	struct
		Object
	{};

	template
		<	ProtoValue
				t_tData
		>
	struct
		Object<t_tData>
	{
		[[no_unique_address]]
		t_tData
			Data
		;
	};

	template
		<	typename
				t_tData
		>
	struct
		Object<t_tData const>
	{
		[[no_unique_address]]
		t_tData
			Data
		;

		auto constexpr
		(	operator =
		)	(	Object const&
			)	&
		=	delete;

		auto constexpr
		(	operator =
		)	(	Object&&
			)	&
		=	delete;
	};

	template
		<	typename
				t_tEntity
		>
	struct
		Object<t_tEntity&>
	{
		t_tEntity
		*	Data
		;
	};

	template
		<	typename
				t_tEntity
		>
	struct
		Object<t_tEntity&&>
	{
		t_tEntity
		*	Data
		;
	};
}
