export module Meta.Predicate.Arithmetic;

export import Meta.Predicate.Scalar;

namespace
	Meta
{
	namespace
		Trait
	{
		export struct
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
					::std::is_arithmetic_v<t_tEntity>
				or	::std::is_enum_v<t_tEntity>
				;
			}
		};

		export struct
			Arithmetic final
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
			{	return std::is_arithmetic_v<t_tEntity>;	}
		};

		export struct
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

		export struct
			Unsigned final
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
			{	return std::is_unsigned_v<t_tEntity>;	}
		};

		export struct
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
	}

	export Term constexpr inline
		IsNumeric
	=	Term{Trait::Numeric{}}
	and	IsScalar
	;

	export Term constexpr inline
		IsArithmetic
	=	Term{Trait::Arithmetic{}}
	and	IsNumeric
	;

	export Term constexpr inline
		IsFloatingPoint
	=	Term{Trait::FloatingPoint{}}
	and	IsArithmetic
	;

	export Term constexpr inline
		IsIntegral
	=	not
		Term{Trait::FloatingPoint{}}
	and	IsArithmetic
	;

	export Term constexpr inline
		IsUnsigned
	=	Term{Trait::Unsigned{}}
	and	IsIntegral
	;

	export Term constexpr inline
		IsSignedIntegral
	=	not
		Term{Trait::Unsigned{}}
	and	IsIntegral
	;

	export Term constexpr inline
		IsSigned
	=	IsFloatingPoint
	or	IsSignedIntegral
	;

	export Term constexpr inline
		IsEnum
	=	not
		Term{Trait::Arithmetic{}}
	and	IsNumeric
	;

	export Term constexpr inline
		IsScopedEnum
	=	Term{Trait::ScopedEnum{}}
	and	IsEnum
	;

	export Term constexpr inline
		IsUnscopedEnum
	=	not
		Term{Trait::ScopedEnum{}}
	and	IsEnum
	;

	export Term constexpr inline
		IsIndirection
	=	not
		Term{Trait::Numeric{}}
	and	IsScalar
	;
}
