export module Meta.Type;

export import Std.TypeTraits;

export import Meta.Integer;
export import Meta.Literals;

namespace
	Meta
{
	export template
		<	USize
			=	0uz
		>
	struct
		ExtentToken final
	{};

	namespace
		Literals
	{
		export template
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

	export template
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

	export template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		Type
	=	TypeToken<t_tEntity>
		{}
	;

	export struct
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

	export auto constexpr inline
		TypeIdentity
	=	TypeIdentityTransform
		{}
	;

	export struct
		AddConstTransform final
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
			<	::std::add_const_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		AddConst
	=	AddConstTransform
		{}
	;

	export struct
		RemoveConstTransform final
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
			<	::std::remove_const_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		RemoveConst
	=	RemoveConstTransform
		{}
	;

	export struct
		AddVolatileTransform final
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
			<	::std::add_volatile_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		AddVolatile
	=	AddVolatileTransform
		{}
	;

	export struct
		RemoveVolatileTransform final
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
			<	::std::remove_volatile_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		RemoveVolatile
	=	RemoveVolatileTransform
		{}
	;

	export struct
		RemoveCVTransform final
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
			<	::std::remove_cv_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		RemoveCV
	=	RemoveCVTransform
		{}
	;

	export struct
		AddPointerTransform final
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
			<	::std::add_pointer_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		AddPointer
	=	AddPointerTransform
		{}
	;

	export struct
		RemovePointerTransform final
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
			<	::std::remove_pointer_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		RemovePointer
	=	RemovePointerTransform
		{}
	;

	export struct
		AddLValueReferenceTransform final
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
			<	::std::add_lvalue_reference_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		AddLValueReference
	=	AddLValueReferenceTransform
		{}
	;

	export struct
		AddRValueReferenceTransform final
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
			<	::std::add_rvalue_reference_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		AddRValueReference
	=	AddRValueReferenceTransform
		{}
	;

	export struct
		RemoveReferenceTransform final
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
			<	::std::remove_reference_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		RemoveReference
	=	RemoveReferenceTransform
		{}
	;

	export struct
		RemoveCVRefTransform final
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
			<	::std::remove_cvref_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	export auto constexpr inline
		RemoveCVRef
	=	RemoveCVRefTransform
		{}
	;

	export struct
		ConstToken final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator+
		)	(	TypeToken<t_tEntity>
					i_vType
			,	ConstToken
			)
		->	decltype(AddConst(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	ConstToken
			)
		->	decltype(RemoveConst(i_vType))
		{	return{};	}
	};

	export auto constexpr inline
		Const
	=	ConstToken
		{}
	;

	export struct
		VolatileToken final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator+
		)	(	TypeToken<t_tEntity>
					i_vType
			,	VolatileToken
			)
		->	decltype(AddVolatile(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	VolatileToken
			)
		->	decltype(RemoveVolatile(i_vType))
		{	return{};	}
	};

	export auto constexpr inline
		Volatile
	=	VolatileToken
		{}
	;

	export struct
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

	export auto constexpr inline
		Pointer
	=	PointerToken
		{}
	;

	export struct
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

	export auto constexpr inline
		Reference
	=	ReferenceToken
		{}
	;

	export struct
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

	export auto constexpr inline
		LValueReference
	=	LValueReferenceToken
		{}
	;

	export struct
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

	export auto constexpr inline
		RValueReference
	=	RValueReferenceToken
		{}
	;
}
