export module Meta.Concepts;

export import Std.Utility;

export import Meta.Type;
export import Meta.Function;

export namespace
	Meta
{
	namespace
		Trait
	{
		template
			<	auto
					t_fTrait
			,	//	this improves readability of errors
				typename
				=	decltype(t_fTrait)
			>
		struct
			Static
		{
			template
				<	USize
						t_nClauseIndex
				>
			using
				Clause
			=	Static
				<	GetClause
					<	t_nClauseIndex
					>(	t_fTrait
					)
				>
			;

			template
				<	USize
						t_nClauseIndex
				>
			using
				Literal
			=	Static
				<	GetLiteral
					<	t_nClauseIndex
					>(	t_fTrait
					)
				>
			;

			template
				<	typename
						t_tProto
				>
			static bool constexpr
				Evaluate
			=	t_fTrait
				(	Type<t_tProto>
				)
			;
		};

		template
			<	typename
					t_tPredicate
			>
		struct
			Not final
		{
			t_tPredicate
				m_fPredicate
			;

			template
				<	typename
					...	t_tpArgument
				>
			auto constexpr
			(	operator()
			)	(	t_tpArgument
					&&
					...	i_rpArgument
				)	const
			->	bool
			{	return
				not
				m_fPredicate
				(	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				);
			}
		};

		template
			<	typename
					t_tPredicate
			>
		(	Not
		)	(	t_tPredicate const&
			)
		->	Not<t_tPredicate>
		;

		template
			<	typename
					t_tPredicate
			>
		auto constexpr
		(	operator not
		)	(	t_tPredicate const
				&	i_rPredicate
			)
		->	Not<t_tPredicate>
		{	return { i_rPredicate };	}

		struct
			Tautology final
		{
			auto constexpr
			(	operator()
			)	(	auto&&...
				)	const
			->	bool
			{	return
					true
				;
			}
		};

		using
			Contradiction
		=	Not<Tautology>
		;

		///	Types for which the size of their values does exceed the given template argument.
		///	This excludes sizeless types, in particluar unbound arrays which are otherwise
		///	objects and references for which sizeof yield the size of the referred type.
		///	This has a real semantic meaning, in particular for types used as members in a class.
		///	In combination with the following traits, all types categories are distinguished with
		///	as few traits as possible.
		template
			<	USize
					t_nObjectSize
			=	0uz
			>
		struct
			SizeGreater final
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
			{
				//	only object types which aren't unbound arrays
				if	constexpr
					(	not
						::std::is_object_v<t_tEntity>
					or	::std::is_unbounded_array_v<t_tEntity>
					)
					return false;
				else
				//	this is false for incomplete types
				if	constexpr(requires{ sizeof(t_tEntity); })
				{
					return sizeof(t_tEntity) > t_nObjectSize;
				}
				else
				{
					//	size will always be at least 1 byte for incomplete object types
					static_assert
					(	t_nObjectSize
					==	0uz
					,	"Attempted to check size of incomplete type!"
					);
					return true;
				}
			}
		};

		///	Types which require a definition by the programmer.
		///	functions vs. sizeless non-functions
		///	classes, unions, enums vs. other objects
		///	Note that this has no real semantic value and only serves to distinguish types with as
		///	few traits as possible.
		struct
			Defined final
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
				(	::std::is_class_v<t_tEntity>
				or	::std::is_union_v<t_tEntity>
				or	::std::is_enum_v<t_tEntity>
				or	::std::is_function_v<t_tEntity>
				);
			}
		};

		///	Types which cannot be used in the same way as an otherwise similar type. These are:
		///	scoped enums vs. unscoped enums (implicit conversion)
		///	unsigned integers vs. signed integers (negative numbers)
		///	rvalue references vs. lvalue references (address)
		///	member pointers vs. pointers
		///	arrays vs. null pointers/void
		///	noexcept functions vs. non-noexcept functions
		///	Note that this has no real semantic value and only serves to distinguish types with as
		///	few traits as possible.
		struct
			Restricted final
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
				(	::std::is_scoped_enum_v<t_tEntity>
				or	::std::is_unsigned_v<t_tEntity>
				or	::std::is_rvalue_reference_v<t_tEntity>
				or	::std::is_member_pointer_v<t_tEntity>
				or	::std::is_array_v<t_tEntity>
				or	FunctionType<t_tEntity>(Noexcept)
				);
			}
		};

		///	Types for which there exists implicitly another type that can be converted into it.
		///	non-final classes vs. final classes and unions (derived classes)
		///	pointers vs. nullpointers (arrays, nullpointer)
		///	integrals vs. floating points (unscoped enums)
		///	member pointers vs. bounded arrays (member pointers of base)
		///	references vs. sizeless non-references (value types)
		///	qualified functions vs. non-qualified functions (qualification of owner)
		///	Note that this has no real semantic value and only serves to distinguish types with as
		///	few traits as possible.
		struct
			ConversionTarget final
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
				(	(	::std::is_class_v<t_tEntity>
					and	not
						::std::is_final_v<t_tEntity>
					)
				or	::std::is_pointer_v<t_tEntity>
				or	::std::is_integral_v<t_tEntity>
				or	::std::is_member_pointer_v<t_tEntity>
				or	not
					requires{ Type<t_tEntity*>;	}
				);
			}
		};

		///	Types which behave like a number.
		///	These are enums, integrals and floating points.
		///	Note that this has no real semantic value and only serves to distinguish types with as
		///	few traits as possible.
		struct
			Numeric final
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
				(	::std::is_arithmetic_v<t_tEntity>
				or	::std::is_enum_v<t_tEntity>
				);
			}
		};
	}

	namespace
		Proto
	{
		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			>
		concept
			Literal
		=		t_tTrait
			::	template
				Evaluate
				<	t_tProto
				>
		;

		template
			<	typename
					t_tProto
			>
		concept
			All
		=	Literal
			<	t_tProto
			,	Trait::Static
				<	Trait::Tautology{}
				>
			>
		;

		template
			<	typename
					t_tProto
			>
		concept
			None
		=	Literal
			<	t_tProto
			,	Trait::Static
				<	Trait::Contradiction{}
				>
			>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			,	USize
					t_nLiteralIndex
			>
		concept
			Clause_0x01
		=	Literal
			<	t_tProto
			,	typename
				t_tTrait
			::	template
				Literal
				<	t_nLiteralIndex
				>
			>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			,	USize
					t_nLiteralIndex
			>
		concept
			Clause_0x02
		=	Clause_0x01<t_tProto, t_tTrait, t_nLiteralIndex>
		and	Clause_0x01<t_tProto, t_tTrait, t_nLiteralIndex + 0x01>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			,	USize
					t_nLiteralIndex
			>
		concept
			Clause_0x04
		=	Clause_0x02<t_tProto, t_tTrait, t_nLiteralIndex>
		and	Clause_0x02<t_tProto, t_tTrait, t_nLiteralIndex + 0x02>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			,	USize
					t_nLiteralIndex
			>
		concept
			Clause_0x08
		=	Clause_0x04<t_tProto, t_tTrait, t_nLiteralIndex>
		and	Clause_0x04<t_tProto, t_tTrait, t_nLiteralIndex + 0x04>
		;


		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			>
		concept
			Clause
		=	Clause_0x08<t_tProto, t_tTrait, 0x00>
		and	All<t_tProto>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			,	USize
					t_nClauseIndex
			>
		concept
			Term_0x01
		=	Clause
			<	t_tProto
			,	typename
				t_tTrait
			::	template
				Clause
				<	t_nClauseIndex
				>
			>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			,	USize
					t_nClauseIndex
			>
		concept
			Term_0x02
		=	Term_0x01<t_tProto, t_tTrait, t_nClauseIndex>
		or	Term_0x01<t_tProto, t_tTrait, t_nClauseIndex + 0x01>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			,	USize
					t_nClauseIndex
			>
		concept
			Term_0x04
		=	Term_0x02<t_tProto, t_tTrait, t_nClauseIndex>
		or	Term_0x02<t_tProto, t_tTrait, t_nClauseIndex + 0x02>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			,	USize
					t_nClauseIndex
			>
		concept
			Term_0x08
		=	Term_0x04<t_tProto, t_tTrait, t_nClauseIndex>
		or	Term_0x04<t_tProto, t_tTrait, t_nClauseIndex + 0x04>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tTrait
			>
		concept
			Term
		=	Term_0x08<t_tProto, t_tTrait, 0x00>
		or	None<t_tProto>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tStaticTrait
			>
		concept
			LiteralClause
		=	Literal<t_tProto, t_tStaticTrait>
		and	All<t_tProto>
		;

		template
			<	typename
					t_tProto
			,	typename
					t_tStaticTrait
			>
		concept
			LiteralTerm
		=	LiteralClause<t_tProto,	t_tStaticTrait>
		or	None<t_tProto>
		;
	}

	template
		<	typename
				t_tProto
		>
	concept
		ProtoNone
	=	Proto::None
		<	t_tProto
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoAll
	=	ProtoNone
		<	t_tProto
		>
	or	Proto::All
		<	t_tProto
		>
	;

	template
		<	typename
				t_tProto
		,	auto
				t_fTrait
		>
	concept
		ProtoConstraint
	=	Proto::Term
		<	t_tProto
		,	Trait::Static
			<	t_fTrait
			>
		>
	;

	///	Types that have a size.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoSizedObject
	=	Proto::LiteralTerm
		<	t_tProto
		,	Trait::Static
			<	Trait::SizeGreater<>{}
			>
		>
	;

	///	Types that may have members.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCustom
	=	ProtoSizedObject
		<	t_tProto
		>
	and	Proto::LiteralTerm
		<	t_tProto
		,	Trait::Static
			<	Trait::Defined{}
			>
		>
	and	Proto::LiteralTerm
		<	t_tProto
		,	Trait::Static
			<	not
				Trait::Numeric{}
			>
		>
	;

	///	Class types that may be derived from.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoBase
	=	ProtoCustom
		<	t_tProto
		>
	and	Proto::LiteralTerm
		<	t_tProto
		,	Trait::Static
			<	Trait::ConversionTarget{}
			>
		>
	;
}
