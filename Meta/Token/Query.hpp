export module Meta.Token:Query;

export import :Type;

export import Meta.Arithmetic;

export namespace
	Meta::Query
{
	struct
		ArrayElement final
	{
		auto constexpr
		(	operator()
		)	(	EraseTypeToken
			)	const
		->	TypeToken<void>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity[]>
			)	const
		->	TypeToken
			<	t_tEntity
			>
		{	return {};	}


		template
			<	typename
					t_tEntity
			,	USize
					t_nExtent
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity[t_nExtent]>
			)	const
		->	TypeToken
			<	t_tEntity
			>
		{	return {};	}
	};

	struct
		ArrayExtent final
	{
		auto constexpr
		(	operator()
		)	(	EraseTypeToken
			)	const
		->	USize
		{	return 0uz;	}

		template
			<	typename
					t_tEntity
			,	USize
					t_nExtent
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity[t_nExtent]>
			)	const
		->	USize
		{	return t_nExtent;	}
	};

	struct
		BitAlign final
	{
		auto constexpr
		(	operator()
		)	(	EraseTypeToken
			)	const
		->	USize
		{	return 0uz;	}

		auto constexpr
		(	operator()
		)	(	TypeToken<bool>
			)	const
		->	USize
		{	return 1uz;	}

		auto constexpr
		(	operator()
		)	(	TypeToken<bool const>
			)	const
		->	USize
		{	return 1uz;	}

		auto constexpr
		(	operator()
		)	(	TypeToken<bool volatile>
			)	const
		->	USize
		{	return 1uz;	}

		auto constexpr
		(	operator()
		)	(	TypeToken<bool const volatile>
			)	const
		->	USize
		{	return 1uz;	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	decltype(alignof(t_tEntity))
		{	return BitsPerByte * alignof(t_tEntity);	}
	};

	struct
		BitSize final
	{
		auto constexpr
		(	operator()
		)	(	EraseTypeToken
			)	const
		->	USize
		{	return 0uz;	}

		auto constexpr
		(	operator()
		)	(	TypeToken<bool>
			)	const
		->	USize
		{	return 1uz;	}

		auto constexpr
		(	operator()
		)	(	TypeToken<bool const>
			)	const
		->	USize
		{	return 1uz;	}

		auto constexpr
		(	operator()
		)	(	TypeToken<bool volatile>
			)	const
		->	USize
		{	return 1uz;	}

		auto constexpr
		(	operator()
		)	(	TypeToken<bool const volatile>
			)	const
		->	USize
		{	return 1uz;	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	decltype(sizeof(t_tEntity))
		{	return BitsPerByte * sizeof(t_tEntity);	}
	};
}

export namespace
	Meta
{
	Query::ArrayElement constexpr inline
		ArrayElement
	{};

	Query::ArrayExtent constexpr inline
		ArrayExtent
	{};

	Query::BitAlign constexpr inline
		BitAlign
	{};

	Query::BitSize constexpr inline
		BitSize
	{};
}
