export module Meta.Token:Query;

export import :Specifier;
export import :Type;

export import Meta.Arithmetic;

import std;

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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tEntity>>
			)	const
		->	decltype(auto)
		{	return
			operator()
			(	Type<t_tEntity>
			);
		}
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tEntity>>
			)	const
		->	decltype(auto)
		{	return
			operator()
			(	Type<t_tEntity>
			);
		}
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

		template
			<	typename
					t_tMutable
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tMutable>>
			)	const
		->	USize
		{	return operator()(Type<t_tMutable>);	}

		template
			<	USize
					t_nSize
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::BitField<t_nSize>>
			)	const
		->	USize
		{
			if	constexpr
				(	t_nSize
				==	sizeof(UInt<t_nSize>) * BitsPerByte
				)
				return alignof(UInt<t_nSize>);
			else
				return 1uz;
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	decltype(alignof(t_tEntity))
		{	return
			(	::std::is_array_v<t_tEntity>
			?	operator()(Type<::std::remove_all_extents_t<t_tEntity>>)
			:	BitsPerByte * alignof(t_tEntity)
			);
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity const>
			)	const
		->	USize
		{	return operator()(Type<t_tEntity>);	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity volatile>
			)	const
		->	USize
		{	return operator()(Type<t_tEntity>);	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity const volatile>
			)	const
		->	USize
		{	return operator()(Type<t_tEntity>);	}
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

		template
			<	typename
					t_tMutable
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tMutable>>
			)	const
		->	USize
		{	return operator()(Type<t_tMutable>);	}

		template
			<	USize
					t_nSize
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::BitField<t_nSize>>
			)	const
		->	USize
		{	return t_nSize;	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	decltype(sizeof(t_tEntity))
		{
			if	constexpr
				(	USize constexpr
						nExtent
					=	::std::extent_v<t_tEntity>
				;	nExtent
				!=	0uz
				)
				return
					nExtent
				*	operator()
					(	Type<::std::remove_extent_t<t_tEntity>>
					)
				;
			else
				return BitsPerByte * sizeof(t_tEntity);
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity const>
			)	const
		->	USize
		{	return operator()(Type<t_tEntity>);	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity volatile>
			)	const
		->	USize
		{	return operator()(Type<t_tEntity>);	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity const volatile>
			)	const
		->	USize
		{	return operator()(Type<t_tEntity>);	}
	};
}

export namespace
	Meta
{
	Query::ArrayElement extern
		ArrayElement
	;

	Query::ArrayExtent extern
		ArrayExtent
	;

	Query::BitAlign extern
		BitAlign
	;

	Query::BitSize extern
		BitSize
	;
}
