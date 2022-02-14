export module Meta.Transform;

export import Meta.Type;
import Std;

export namespace
	Meta::Transform
{
	struct
		TypeIdentity final
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

	struct
		RemoveExtent final
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
			<	::std::remove_extent_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	struct
		AddConst final
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

	struct
		RemoveConst final
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

	struct
		AddVolatile final
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

	struct
		RemoveVolatile final
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

	struct
		RemoveCV final
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

	struct
		AddPointer final
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

	struct
		RemovePointer final
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

	struct
		AddLValueReference final
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

	struct
		AddRValueReference final
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

	struct
		AddCopyReference final
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
				<	::std::add_const_t
					<	t_tEntity
					>
				>
			>
		{	return {};	}
	};

	struct
		RemoveReference final
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

	struct
		RemoveCVRef final
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
}

export namespace
	Meta
{
	Transform::TypeIdentity constexpr inline
		TypeIdentity
	{};

	Transform::RemoveExtent constexpr inline
		RemoveExtent
	{};

	Transform::AddConst constexpr inline
		AddConst
	{};

	Transform::RemoveConst constexpr inline
		RemoveConst
	{};

	Transform::AddVolatile constexpr inline
		AddVolatile
	{};

	Transform::RemoveVolatile constexpr inline
		RemoveVolatile
	{};

	Transform::RemoveCV constexpr inline
		RemoveCV
	{};

	Transform::AddPointer constexpr inline
		AddPointer
	{};

	Transform::RemovePointer constexpr inline
		RemovePointer
	{};

	Transform::AddLValueReference constexpr inline
		AddLValueReference
	{};

	Transform::AddRValueReference constexpr inline
		AddRValueReference
	{};

	Transform::AddCopyReference constexpr inline
		AddCopyReference
	{};

	Transform::RemoveReference constexpr inline
		RemoveReference
	{};

	Transform::RemoveCVRef constexpr inline
		RemoveCVRef
	{};
}

export namespace
	Meta::Token
{
	struct
		Const final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	Type<t_tEntity>
					i_vType
			,	Const
			)
		->	decltype(AddConst(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	Type<t_tEntity>
					i_vType
			,	Const
			)
		->	decltype(RemoveConst(i_vType))
		{	return{};	}
	};

	struct
		Volatile final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	Type<t_tEntity>
					i_vType
			,	Volatile
			)
		->	decltype(AddVolatile(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	Type<t_tEntity>
					i_vType
			,	Volatile
			)
		->	decltype(RemoveVolatile(i_vType))
		{	return{};	}
	};

	struct
		Pointer final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	Type<t_tEntity>
					i_vType
			,	Pointer
			)
		->	decltype(AddPointer(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	Type<t_tEntity>
					i_vType
			,	Pointer
			)
		->	decltype(RemovePointer(i_vType))
		{	return{};	}
	};

	struct
		Reference final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	Type<t_tEntity>
					i_vType
			,	Reference
			)
		->	decltype(RemoveReference(i_vType))
		{	return{};	}
	};

	struct
		LValueReference final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	Type<t_tEntity>
					i_vType
			,	LValueReference
			)
		->	decltype(AddLValueReference(i_vType))
		{	return{};	}
	};

	struct
		RValueReference final
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	Type<t_tEntity>
					i_vType
			,	RValueReference
			)
		->	decltype(AddRValueReference(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Const constexpr inline
		Const
	{};

	Token::Volatile constexpr inline
		Volatile
	{};

	Token::Pointer constexpr inline
		Pointer
	{};

	Token::Reference constexpr inline
		Reference
	{};

	Token::LValueReference constexpr inline
		LValueReference
	{};

	Token::RValueReference constexpr inline
		RValueReference
	{};
}
