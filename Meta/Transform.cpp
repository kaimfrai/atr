export module Meta.Transform;

export import Meta.Type;

export namespace
	Meta
{
	namespace
		Transform
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

	auto constexpr inline
		TypeIdentity
	=	Transform::TypeIdentity
		{}
	;

	auto constexpr inline
		RemoveExtent
	=	Transform::RemoveExtent
		{}
	;

	auto constexpr inline
		AddConst
	=	Transform::AddConst
		{}
	;

	auto constexpr inline
		RemoveConst
	=	Transform::RemoveConst
		{}
	;

	auto constexpr inline
		AddVolatile
	=	Transform::AddVolatile
		{}
	;

	auto constexpr inline
		RemoveVolatile
	=	Transform::RemoveVolatile
		{}
	;

	auto constexpr inline
		RemoveCV
	=	Transform::RemoveCV
		{}
	;

	auto constexpr inline
		AddPointer
	=	Transform::AddPointer
		{}
	;

	auto constexpr inline
		RemovePointer
	=	Transform::RemovePointer
		{}
	;

	auto constexpr inline
		AddLValueReference
	=	Transform::AddLValueReference
		{}
	;

	auto constexpr inline
		AddRValueReference
	=	Transform::AddRValueReference
		{}
	;

	auto constexpr inline
		AddCopyReference
	=	Transform::AddCopyReference
		{}
	;

	auto constexpr inline
		RemoveReference
	=	Transform::RemoveReference
		{}
	;

	auto constexpr inline
		RemoveCVRef
	=	Transform::RemoveCVRef
		{}
	;

	namespace
		Token
	{
		struct
			Const final
		{
			template
				<	typename
						t_tEntity
				>
			friend auto constexpr
			(	operator+
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
			(	operator-
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
			(	operator+
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
			(	operator-
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
			(	operator+
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
			(	operator-
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
			(	operator-
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
			(	operator+
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
			(	operator+
			)	(	Type<t_tEntity>
						i_vType
				,	RValueReference
				)
			->	decltype(AddRValueReference(i_vType))
			{	return{};	}
		};
	}

	auto constexpr inline
		Const
	=	Token::Const
		{}
	;

	auto constexpr inline
		Volatile
	=	Token::Volatile
		{}
	;

	auto constexpr inline
		Pointer
	=	Token::Pointer
		{}
	;

	auto constexpr inline
		Reference
	=	Token::Reference
		{}
	;

	auto constexpr inline
		LValueReference
	=	Token::LValueReference
		{}
	;

	auto constexpr inline
		RValueReference
	=	Token::RValueReference
		{}
	;
}