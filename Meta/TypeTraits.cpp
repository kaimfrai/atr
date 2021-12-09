export module Meta.TypeTraits;
export import Std.TypeTraits;
export import Meta.Type;

export namespace
	Meta::Trait
{
	struct
		Void final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_void_v<t_tEntity>;	}
	};

	struct
		NullPointer final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_null_pointer_v<t_tEntity>;	}
	};

	struct
		UnsignedIntegral final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
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
		auto constexpr
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
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_floating_point_v<t_tEntity>;	}
	};

	struct
		UnscopedEnum final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
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
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_scoped_enum_v<t_tEntity>;	}
	};

	struct
		Pointer final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_pointer_v<t_tEntity>;	}
	};

	struct
		MemberPointer final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_member_pointer_v<t_tEntity>;	}
	};

	struct
		LValueReference final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_lvalue_reference_v<t_tEntity>;	}
	};

	struct
		RValueReference final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_rvalue_reference_v<t_tEntity>;	}
	};

	struct
		UnqualifiedFunction final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
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
		auto constexpr
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
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_unbounded_array_v<t_tEntity>;	}
	};

	struct
		BoundedArray final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_bounded_array_v<t_tEntity>;	}
	};

	struct
		Class final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_class_v<t_tEntity>;	}
	};

	struct
		Union final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return std::is_union_v<t_tEntity>;	}
	};

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
		auto constexpr
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
		TypePack final
	{
		template
			<	typename
					t_tType
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tType>
			)	const
		->	bool
		{	return false;	}

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
		ValuePack final
	{
		template
			<	typename
					t_tType
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tType>
			)	const
		->	bool
		{	return false;	}

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
	{
		template
			<	typename
					t_tType
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tType>
			)	const
		->	bool
		{	return false;	}

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

