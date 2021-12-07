export module Meta.TypeTraits;
export import Std.TypeTraits;
export import Meta.Type;

export namespace
	Meta::Trait
{
	struct
		Never
	{
		template
			<	typename
					t_tType
			>
		auto consteval
		(	operator()
		)	(	TypeToken<t_tType>
			)	const
		->	bool
		{	return false;	}
	};

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Trait
		,	typename
			...	t_tpArgument
		>
	struct
		Standard
	{
		template
			<	typename
					t_tType
			>
		auto consteval
		(	operator()
		)	(	TypeToken<t_tType>
			)	const
		->	bool
		{	return
			t_t1Trait
			<	t_tType
			,	t_tpArgument
				...
			>{};
		}
	};

	struct
		Void final
	:	Standard
		<	std::is_void
		>
	{};

	struct
		NullPointer final
	:	Standard
		<	std::is_null_pointer
		>
	{};


	struct
		UnsignedIntegral final
	{
		template
			<	typename
					t_tEntity
			>
		auto consteval
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	if	constexpr(not std::is_integral_v<t_tEntity>)
				return false;
			else
				return std::is_unsigned_v<t_tEntity>;
		}
	};

	struct
		SignedIntegral final
	{
		template
			<	typename
					t_tEntity
			>
		auto consteval
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	if	constexpr(not std::is_integral_v<t_tEntity>)
				return false;
			else
				return std::is_signed_v<t_tEntity>;
		}
	};

	struct
		FloatingPoint final
	:	Standard
		<	std::is_floating_point
		>
	{};

	struct
		UnscopedEnum final
	{
		template
			<	typename
					t_tEntity
			>
		auto consteval
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	if	constexpr(not std::is_enum_v<t_tEntity>)
				return false;
			else
				return not std::is_scoped_enum_v<t_tEntity>;
		}
	};

	struct
		ScopedEnum final
	:	Standard
		<	std::is_scoped_enum
		>
	{};

	struct
		Pointer final
	:	Standard
		<	std::is_pointer
		>
	{};

	struct
		MemberPointer final
	:	Standard
		<	std::is_member_pointer
		>
	{};

	struct
		LValueReference final
	:	Standard
		<	std::is_lvalue_reference
		>
	{};

	struct
		RValueReference final
	:	Standard
		<	std::is_rvalue_reference
		>
	{};

	struct
		UnqualifiedFunction final
	{
		template
			<	typename
					t_tEntity
			>
		auto consteval
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vType
			)	const
		{	if	constexpr(not std::is_function_v<t_tEntity>)
				return false;
			else
				///	AddPointer only works for unqualified functions
				return i_vType != AddPointer(i_vType);
		}
	};

	struct
		QualifiedFunction final
	{
		template
			<	typename
					t_tEntity
			>
		auto consteval
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vType
			)	const
		{	if	constexpr(not std::is_function_v<t_tEntity>)
				return false;
			else
				///	AddPointer only works for unqualified functions
				return i_vType == AddPointer(i_vType);
		}
	};

	struct
		UnboundedArray final
	:	Standard
		<	std::is_unbounded_array
		>
	{};

	struct
		BoundedArray final
	:	Standard
		<	std::is_bounded_array
		>
	{};

	struct
		Class final
	:	Standard
		<	std::is_class
		>
	{};

	struct
		Union final
	:	Standard
		<	std::is_union
		>
	{};

	template
		<	typename
				t_tBase
		>
	struct
		DerivedFrom final
	{
		template
			<	typename
					t_tEntity
			>
		auto consteval
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_base_of_v<t_tBase, t_tEntity>;	}
	};

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Pack
		>
	struct
		TypePack
	:	Never
	{
		using Never::operator();

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_tpArgument
						...
					>
				>
			)	const
		->	bool
		{	return true;	}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_tpArgument
						...
					>	const
				>
			)	const
		->	bool
		{	return true;	}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_tpArgument
						...
					>	volatile
				>
			)	const
		->	bool
		{	return true;	}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_tpArgument
						...
					>	const volatile
				>
			)	const
		->	bool
		{	return true;	}
	};

	template
		<	template
				<	auto
					...
				>
			typename
				t_t1Pack
		>
	struct
		ValuePack
	:	Never
	{
		using Never::operator();

		template
			<	auto
				...	t_vpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_vpArgument
						...
					>
				>
			)	const
		->	bool
		{	return true;	}

		template
			<	auto
				...	t_vpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_vpArgument
						...
					>	const
				>
			)	const
		->	bool
		{	return true;	}

		template
			<	auto
				...	t_vpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_vpArgument
						...
					>	volatile
				>
			)	const
		->	bool
		{	return true;	}

		template
			<	auto
				...	t_vpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_vpArgument
						...
					>	const volatile
				>
			)	const
		->	bool
		{	return true;	}
	};

	template
		<	template
				<	auto
				,	typename
				>
			typename
				t_t1Pair
		>
	struct
		ValueTypePair
	:	Never
	{
		using Never::operator();

		template
			<	auto
					t_vFirst
			,	typename
					t_tSecond
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pair
					<	t_vFirst
					,	t_tSecond
					>
				>
			)	const
		->	bool
		{	return true;	}

		template
			<	auto
					t_vFirst
			,	typename
					t_tSecond
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pair
					<	t_vFirst
					,	t_tSecond
					>	const
				>
			)	const
		->	bool
		{	return true;	}

		template
			<	auto
					t_vFirst
			,	typename
					t_tSecond
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pair
					<	t_vFirst
					,	t_tSecond
					>	volatile
				>
			)	const
		->	bool
		{	return true;	}

		template
			<	auto
					t_vFirst
			,	typename
					t_tSecond
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pair
					<	t_vFirst
					,	t_tSecond
					>	const volatile
				>
			)	const
		->	bool
		{	return true;	}
	};
}

