export module Meta.Type;

export import Meta.Common;
export import Meta.Literals;

export namespace
	Meta
{
	template
		<	USize
			=	0uz
		>
	struct
		ExtentToken final
	{};

	namespace
		Literals
	{
		template
			<	char
				...	t_npDigit
			>
		auto constexpr
		(	operator""_Extent
		)	()
		->	ExtentToken
			<	EvaluateNumericLiteral
				<	t_npDigit
					...
				>()
			>
		{	return {};	}
	}

	template
		<	typename
				t_tEntity
		>
	struct
		TypeToken final
	{
		///	Creates a function type with this type as return type.
		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tpArgument>
				...
			)	const
		{	return
			TypeToken
			<	t_tEntity
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
		auto constexpr
		(	operator[]
		)	(	ExtentToken<t_nIndex>
			)	const
		{	if	constexpr
				(	t_nIndex
				==	0uz
				)
				return
				TypeToken
				<	t_tEntity
					[]
				>{};
			else
				return
				TypeToken
				<	t_tEntity
					[	t_nIndex
					]
				>{};
		}

		friend auto constexpr
		(	operator==
		)	(	TypeToken
			,	TypeToken
			)
		->	bool
		{	return true;	}

		template
			<	typename
					t_tOther
			>
		friend auto constexpr
		(	operator==
		)	(	TypeToken
			,	TypeToken<t_tOther>
			)
		->	bool
		{	return false;	}
	};

	template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		Type
	=	TypeToken<t_tEntity>
		{}
	;

		template
		<	template
				<	typename
				>
			typename
				t_t1Transform
		>
	struct
		StandardTypeTransform
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	TypeToken
			<	typename
					t_t1Transform
					<	t_tEntity
					>
				::	type
			>
		{	return{};	}
	};

	struct
		TypeIdentityTransform final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	TypeToken<t_tEntity>
		{	return{};	}
	};

	auto constexpr inline
		TypeIdentity
	=	TypeIdentityTransform
		{}
	;

	struct
		AddPointerTransform final
	:	StandardTypeTransform
		<	std::add_pointer
		>
	{};

	auto constexpr inline
		AddPointer
	=	AddPointerTransform
		{}
	;

	struct
		RemovePointerTransform final
	:	StandardTypeTransform
		<	std::remove_pointer
		>
	{};

	auto constexpr inline
		RemovePointer
	=	RemovePointerTransform
		{}
	;

	struct
		AddLValueReferenceTransform final
	:	StandardTypeTransform
		<	std::add_lvalue_reference
		>
	{};

	auto constexpr inline
		AddLValueReference
	=	AddLValueReferenceTransform
		{}
	;

	struct
		AddRValueReferenceTransform final
	:	StandardTypeTransform
		<	std::add_rvalue_reference
		>
	{};

	auto constexpr inline
		AddRValueReference
	=	AddRValueReferenceTransform
		{}
	;

	struct
		RemoveReferenceTransform final
	:	StandardTypeTransform
		<	std::remove_reference
		>
	{};

	auto constexpr inline
		RemoveReference
	=	RemoveReferenceTransform
		{}
	;

	struct
		PointerToken final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator+
		)	(	TypeToken<t_tEntity>
					i_vType
			,	PointerToken
			)
		->	decltype(AddPointer(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	PointerToken
			)
		->	decltype(RemovePointer(i_vType))
		{	return{};	}
	};

	auto constexpr inline
		Pointer
	=	PointerToken
		{}
	;

	struct
		ReferenceToken final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	ReferenceToken
			)
		->	decltype(RemoveReference(i_vType))
		{	return{};	}
	};

	auto constexpr inline
		Reference
	=	ReferenceToken
		{}
	;

	struct
		LValueReferenceToken final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator+
		)	(	TypeToken<t_tEntity>
					i_vType
			,	LValueReferenceToken
			)
		->	decltype(AddLValueReference(i_vType))
		{	return{};	}
	};

	auto constexpr inline
		LValueReference
	=	LValueReferenceToken
		{}
	;

	struct
		RValueReferenceToken final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator+
		)	(	TypeToken<t_tEntity>
					i_vType
			,	RValueReferenceToken
			)
		->	decltype(AddRValueRefernece(i_vType))
		{	return{};	}
	};

	auto constexpr inline
		RValueReference
	=	RValueReferenceToken
		{}
	;
}
