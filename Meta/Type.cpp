export module Meta.Type;

export import Std;

export import Meta.Integer;
export import Meta.Literals;
export import Meta.Index;
export import Meta.SelectByIndex;

export namespace
	Meta
{
	enum class
		EFunctionFlag
	:	UInt<6>
	{	None = 0x0
	,	Const = 0x1
	,	Volatile = Const << 0x1
	,	LRef = Volatile << 0x1
	,	RRef = LRef << 0x1
	,	Noexcept = RRef << 0x1
	,	Variadic = Noexcept << 0x1
	};

	template
		<	typename
				t_tEntity
		>
	USize constexpr inline
		BitSize_Of
	=	[]{	if	constexpr
				(	::std::is_const_v<t_tEntity>
				or	::std::is_volatile_v<t_tEntity>
				)
				return BitSize_Of<::std::remove_cv_t<t_tEntity>>;
			else
			if	constexpr
				(	::std::is_reference_v<t_tEntity>
				or	::std::is_unbounded_array_v<t_tEntity>
				)
				return CHAR_BIT * sizeof(void*);
			else
			if	constexpr
				(	requires
					{	sizeof(t_tEntity);
					}
				)
				return
					::std::is_empty_v<t_tEntity>
				?	0uz
				:	CHAR_BIT * sizeof(t_tEntity)
				;
			else
				return 0uz;
		}()
	;

	template
		<>
	USize constexpr inline
		BitSize_Of<bool>
	=	1uz
	;

	template
		<	typename
				t_tEntity
		>
	USize constexpr inline
		ByteSize_Of
	=	(	BitSize_Of<t_tEntity>
		+	(CHAR_BIT - 1uz)
		)
	/	CHAR_BIT
	;

	template
		<	typename
				t_tEntity
		>
	USize constexpr inline
		ByteAlign_Of
	=	[]{	if	constexpr
				(	::std::is_reference_v<t_tEntity>
				or	::std::is_unbounded_array_v<t_tEntity>
				)
				return alignof(void*);
			else
			if	constexpr
				(	requires
					{	alignof(t_tEntity);
					}
				)
				return
					::std::is_empty_v<t_tEntity>
				?	0uz
				:	alignof(t_tEntity)
				;
			else
				return 0uz;
		}()
	;
}

namespace
	Meta::Token
{
	static auto constexpr
	(	operator |
	)	(	EFunctionFlag
				i_eLeft
		,	EFunctionFlag
				i_eRight
		)
	->	EFunctionFlag
	{	return
		static_cast<EFunctionFlag>
		(	static_cast<UInt<6>>(i_eLeft)
		bitor
			static_cast<UInt<6>>(i_eRight)
		);
	}

	using enum Meta::EFunctionFlag;
}

export namespace
	Meta::Token
{
	template
		<	USize
			=	0uz
		>
	struct
		Extent final
	{};

	template
		<	typename
		>
	struct
		Type
	;

	template
		<	typename
				t_tEntity
		>
	struct
		Sized
	{
		static USize constexpr
			ByteSize
		=	sizeof(t_tEntity)
		;

		template
			<	USize
					t_nIndex
			>
		auto constexpr
		(	operator[]
		)	(	Extent<t_nIndex>
			)	const
		->	Type<t_tEntity[t_nIndex]>
		{	return {};	}

		auto constexpr
		(	operator[]
		)	(	Extent<0uz>
			)
		->	Type<t_tEntity[]>
		{	return {};	}

		template
			<	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)
		requires
			::std::is_constructible_v
			<	t_tEntity
			,	t_tpArgument
				...
			>
		{	return
			t_tEntity
			{	::std::forward<t_tpArgument>
				(	i_rpArgument
				)
				...
			};
		}
	};

	template
		<	typename
		>
	struct
		Parameter
	{};

	template
		<	typename
				t_tEntity
		>
	struct
		Returnable
	{
		template
			<	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	Parameter<t_tpParameter>
				...
			)
		->	Type
			<	t_tEntity
				(	t_tpParameter
					...
				)
			>
		;
	};

	template
		<	typename
				t_tEntity
		>
	struct
		Composition
	:	Sized<t_tEntity>
	,	Returnable<t_tEntity>
	,	Parameter<t_tEntity>
	{};

	template
		<	typename
				t_tEntity
		>
	struct
		Composition<t_tEntity volatile>
	:	Sized<t_tEntity volatile>
	{};

	template
		<	typename
				t_tPointed
		>
	struct
		Pointed
	{
		static auto constexpr
		(	GetPointed
		)	()
		->	Type<t_tPointed>
		{	return{};	}
	};

	template
		<	typename
				t_tPointed
		>
	struct
		Composition<t_tPointed*>
	:	Returnable<t_tPointed*>
	,	Parameter<t_tPointed*>
	,	Pointed<t_tPointed>
	{};

	template
		<	typename
				t_tPointed
		>
	struct
		Composition<t_tPointed* const>
	:	Returnable<t_tPointed* const>
	,	Parameter<t_tPointed* const>
	,	Pointed<t_tPointed>
	{};

	template
		<	typename
				t_tPointed
		>
	struct
		Composition<t_tPointed* volatile>
	:	Pointed<t_tPointed>
	{};

	template
		<	typename
				t_tPointed
		>
	struct
		Composition<t_tPointed* const volatile>
	:	Pointed<t_tPointed>
	{};

	template
		<	typename
				t_tOwner
		>
	struct
		Owner
	{
		static auto constexpr
		(	GetOwner
		)	()
		->	Type<t_tOwner>
		{	return{};	}
	};

	template
		<	typename
				t_tMember
		>
	struct
		Member
	{
		static auto constexpr
		(	GetMember
		)	()
		->	Type<t_tMember>
		{	return{};	}
	};

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	struct
		Composition<t_tMember t_tOwner::*>
	:	Returnable<t_tMember t_tOwner::*>
	,	Parameter<t_tMember t_tOwner::*>
	,	Member<t_tMember>
	,	Owner<t_tOwner>
	{};

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	struct
		Composition<t_tMember t_tOwner::* const>
	:	Returnable<t_tMember t_tOwner::* const>
	,	Parameter<t_tMember t_tOwner::* const>
	,	Member<t_tMember>
	,	Owner<t_tOwner>
	{};

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	struct
		Composition<t_tMember t_tOwner::* volatile>
	:	Member<t_tMember>
	,	Owner<t_tOwner>
	{};

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	struct
		Composition<t_tMember t_tOwner::* const volatile>
	:	Member<t_tMember>
	,	Owner<t_tOwner>
	{};

	template<>
	struct
		Composition<void>
	:	Returnable<void>
	{};

	template<>
	struct
		Composition<void const>
	:	Returnable<void const>
	{};

	template<>
	struct
		Composition<void volatile>
	{};

	template<>
	struct
		Composition<void const volatile>
	:	Returnable<void const>
	{};

	template
		<	typename
				t_tReferenced
		>
	struct
		Referenced
	{
		auto constexpr
		(	GetReferenced
		)	()
		->	Type<t_tReferenced>
		{	return{};	}
	};

	template
		<	typename
				t_tEntity
		>
	struct
		Composition<t_tEntity&>
	:	Returnable<t_tEntity&>
	,	Parameter<t_tEntity&>
	,	Referenced<t_tEntity>
	{};
	template
		<	typename
				t_tEntity
		>
	struct
		Composition<t_tEntity&&>
	:	Returnable<t_tEntity&&>
	,	Parameter<t_tEntity&&>
	,	Referenced<t_tEntity>
	{};

	template
		<	typename
				t_tElement
		>
	struct
		Element
	{
		static auto constexpr
		(	GetElement
		)	()
		->	Type<t_tElement>
		{	return{};	}
	};

	template
		<	typename
				t_tEntity
		,	USize
				t_nExtent
		>
	struct
		Composition<t_tEntity[t_nExtent]>
	:	Sized<t_tEntity[t_nExtent]>
	,	Element<t_tEntity>
	{};
	template
		<	typename
				t_tEntity
		>
	struct
		Composition<t_tEntity[]>
	:	Parameter<t_tEntity[]>
	,	Element<t_tEntity>
	{};

	template
		<	typename
				t_tFunctionResult
		>
	struct
		FunctionResult
	{
		static auto constexpr
		(	GetFunctionResult
		)	()
		->	Type<t_tFunctionResult>
		{	return {};	}
	};

	template
		<	typename
			...	t_tpParameter
		>
	struct
		FunctionParameterList
	{
		template
			<	Meta::USize
					t_nIndex
			>
		static auto constexpr
		(	GetFunctionParameter
		)	(	Meta::IndexToken
				<	t_nIndex
				>
			)
		->	::std::remove_pointer_t
			<	decltype
				(	SelectByIndex
					{	ValueSequence<t_nIndex>()
					}(	static_cast
						<	Type<t_tpParameter>*
						>(	nullptr
						)
						...
					)
				)
			>
		{	return{};	}
	};

	template
		<	EFunctionFlag
				t_eFlagMask
		=	None
		>
	struct
		FunctionFlag
	{
		static auto constexpr
		(	HasFunctionFlag
		)	(	EFunctionFlag
					i_eFlag
			)
		->	bool
		{	return
				(	static_cast<UInt<6>>(t_eFlagMask)
				bitand
					static_cast<UInt<6>>(i_eFlag)
				)
			==	static_cast<UInt<6>>(i_eFlag)
			;
		}
	};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...)
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...)
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) volatile
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const volatile
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) volatile
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const volatile
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) &
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<LRef>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const &
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | LRef>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) volatile &
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | LRef>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const volatile &
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | LRef>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) &
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<LRef | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const &
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | LRef | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) volatile &
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | LRef | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const volatile &
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | LRef | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) &&
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<RRef>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const &&
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | RRef>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) volatile &&
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | RRef>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const volatile &&
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | RRef>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) &&
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<RRef | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const &&
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | RRef | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) volatile &&
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | RRef | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const volatile &&
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | RRef | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) volatile noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const volatile noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) volatile noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const volatile noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) & noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<LRef | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const & noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | LRef | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) volatile & noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | LRef | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const volatile & noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | LRef | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) & noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<LRef | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const & noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | LRef | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) volatile & noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | LRef | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const volatile & noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | LRef | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) && noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<RRef | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const && noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | RRef | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) volatile && noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | RRef | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter...) const volatile && noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | RRef | Noexcept>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) && noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<RRef | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const && noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | RRef | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) volatile && noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Volatile | RRef | Noexcept | Variadic>
	{};
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Composition
		<	t_tResult(t_tpParameter..., ...) const volatile && noexcept
		>
	:	FunctionResult<t_tResult>
	,	FunctionParameterList<t_tpParameter...>
	,	FunctionFlag<Const | Volatile | RRef | Noexcept | Variadic>
	{};

	struct
		EraseType final
	{
		USize const Alignment;
		USize const Size;

	private:
		template<typename> friend struct Type;

		explicit constexpr
		(	EraseType
		)	(	USize
					i_nAlignment
			,	USize
					i_nSize
			)
		:	Alignment{i_nAlignment}
		,	Size{i_nSize}
		{}

		constexpr EraseType(EraseType const&) = delete;
		constexpr EraseType(EraseType&&) = delete;
	};

	auto constexpr
	(	operator<=>
	)	(	EraseType const
			&	i_rLeft
		,	EraseType const
			&	i_rRight
		)
	->	::std::strong_ordering
	{
		auto const
			vCompareAlignment
		=	i_rLeft.Alignment
		<=>	i_rRight.Alignment
		;
		if	(vCompareAlignment != ::std::strong_ordering::equal)
			return vCompareAlignment;

		return i_rLeft.Size <=> i_rRight.Size;
	}

	template
		<	EraseType const*
		>
	struct
		TypeRestore
	{
		friend auto constexpr
		(	RestoreType
		)	(	TypeRestore
			)
		;
	};

	template
		<	typename
				t_tEntity
		>
	struct
		Type final
	:	Composition<t_tEntity>
	{
		using Entity = t_tEntity;

		static EraseType constexpr
			Erase
		{	ByteAlign_Of<t_tEntity>
		,	ByteSize_Of<t_tEntity>
		};

		constexpr
		(	operator
			EraseType const&
		)	()	const
		{	return Erase;	}

		constexpr
		(	operator
			EraseType const*
		)	()	const
		{	return &Erase;	}

		friend auto constexpr
		(	RestoreType
		)	(	TypeRestore<&Erase>
			)
		{	return Type{};	}
	};

	template
		<	typename
				t_tEntity
		>
	(	Type
	)	(	Type<t_tEntity>
		)
	->	Type
		<	t_tEntity
		>
	;
}

export namespace
	Meta
{
	template
		<	typename
				t_tEntity
		>
	using
		TypeToken
	=	Token::Type<t_tEntity>
	;

	using
		EraseTypeToken
	=	Token::EraseType const*
	;

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
		<	Token::Type
				t_vType
		>
	using
		TypeEntity
	=	typename decltype
		(	t_vType
		)
	::	Entity
	;


	template
		<	EraseTypeToken
				t_vEraseType
		>
	Token::Type constexpr inline
		RestoreTypeToken
	=	RestoreType
		(	Token::TypeRestore
			<	t_vEraseType
			>{}
		)
	;

	template
		<	EraseTypeToken
				t_vEraseType
		>
	using
		RestoreTypeEntity
	=	TypeEntity
		<	RestoreTypeToken
			<	t_vEraseType
			>
		>
	;
}

export namespace
	Meta::Literals
{
	template
		<	char
			...	t_npDigit
		>
	auto constexpr
	(	operator""_Extent
	)	()
	->	Token::Extent
		<	EvaluateNumericLiteral
			<	t_npDigit
				...
			>()
		>
	{	return {};	}
}
