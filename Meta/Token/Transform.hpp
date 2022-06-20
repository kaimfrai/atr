export module Meta.Token:Transform;

export import :Specifier;
export import :Type;

import Std;

export namespace
	Meta::Transform
{
	struct
		TypeIdentity
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	Specifier::Mutable
				<	::std::remove_extent_t
					<	t_tEntity
					>
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	Specifier::Mutable
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	Specifier::Mutable
				<	::std::add_volatile_t
					<	t_tEntity
					>
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	Specifier::Mutable
				<	::std::remove_volatile_t
					<	t_tEntity
					>
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	::std::remove_cv_t
				<	t_tEntity
				>
			>
		{	return {};	}
	};

	struct
		AddMutable final
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
			<	Specifier::Mutable
				<	t_tEntity
				>
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	Specifier::Mutable
				<	t_tEntity
				>
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity const>
			)	const
		->	TypeToken
			<	t_tEntity const
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity&>
			)	const
		->	TypeToken
			<	t_tEntity
				&
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity&&>
			)	const
		->	TypeToken
			<	t_tEntity
				&&
			>
		{	return {};	}
	};

	struct
		RemoveMutable final
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
			<	t_tEntity
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	t_tEntity
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	Specifier::Mutable
				<	::std::add_pointer_t
					<	t_tEntity
					>
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	Specifier::Mutable
				<	::std::remove_pointer_t
					<	t_tEntity
					>
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
			)	const
		->	TypeToken
			<	Specifier::Mutable
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

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mutable<t_tEntity>>
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
	Transform::TypeIdentity extern
		TypeIdentity
	;

	Transform::RemoveExtent extern
		RemoveExtent
	;

	Transform::AddConst extern
		AddConst
	;

	Transform::RemoveConst extern
		RemoveConst
	;

	Transform::AddVolatile extern
		AddVolatile
	;

	Transform::RemoveVolatile extern
		RemoveVolatile
	;

	Transform::RemoveCV extern
		RemoveCV
	;

	Transform::AddMutable extern
		AddMutable
	;

	Transform::RemoveMutable extern
		RemoveMutable
	;

	Transform::AddPointer extern
		AddPointer
	;

	Transform::RemovePointer extern
		RemovePointer
	;

	Transform::AddLValueReference extern
		AddLValueReference
	;

	Transform::AddRValueReference extern
		AddRValueReference
	;

	Transform::AddCopyReference extern
		AddCopyReference
	;

	Transform::RemoveReference extern
		RemoveReference
	;

	Transform::RemoveCVRef extern
		RemoveCVRef
	;
}
