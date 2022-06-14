export module Meta.Predicate:TypeTraits;

export import :Category;

export import Meta.Token;
export import Meta.Logic;

export import Std;

export namespace
	Meta::Trait
{
	struct
		Const final
	:	LiteralBase
	{
		using LiteralBase::operator();

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity const>
			)	const
		->	bool
		{	return true;	}
	};

	struct
		Volatile final
	:	LiteralBase
	{
		using LiteralBase::operator();

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity volatile>
			)	const
		->	bool
		{	return true;	}
	};

	template
		<	typename
				t_tTarget
		>
	struct
		Convertible_To final
	:	LiteralBase
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
		{	return
			::std::is_convertible_v
			<	t_tEntity
			,	t_tTarget
			>;
		}
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Assignable_From final
	:	LiteralBase
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
		{	return
			::std::is_assignable_v
			<	t_tEntity
			,	t_tArgument
			>;
		}
	};

	template
		<	typename
				t_tBase
		>
	struct
		Derived_From final
	:	LiteralBase
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
		{	return
			::std::is_base_of_v
			<	t_tBase
			,	t_tEntity
			>;
		}
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
		TypePack_Of final
	:	LiteralBase
	{
		using LiteralBase::operator();

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
		ValuePack_Of final
	:	LiteralBase
	{
		using LiteralBase::operator();

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
		ValueTypePair_Of final
	:	LiteralBase
	{
		using LiteralBase::operator();

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

export namespace
	Meta
{
	extern decltype
	(	Literal<Trait::Const>
	and	IsCVQualifiable
	)	IsConst
	;

	extern decltype
	(	Literal<Trait::Volatile>
	and	IsCVQualifiable
	)	IsVolatile
	;

	template
		<	typename
				t_tBase
		>
	extern decltype
	(	Literal<Trait::Derived_From<t_tBase>>
	and	IsCustom
	)	IsDerived_From
	;

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Pack
		>
	extern decltype
	(	Literal<Trait::TypePack_Of<t_t1Pack>>
	and	IsCustom
	)	IsTypePack_Of
	;

	template
		<	template
				<	auto
					...
				>
			typename
				t_t1Pack
		>
	extern decltype
	(	Literal<Trait::ValuePack_Of<t_t1Pack>>
	and	IsCustom
	)	IsValuePack_Of
	;


	template
		<	template
				<	auto
				,	typename
				>
			typename
				t_t1Pack
		>
	extern decltype
	(	Literal<Trait::ValueTypePair_Of<t_t1Pack>>
	and	IsCustom
	)	IsValueTypePair_Of
	;
}
