export module Meta.Lex.Function;

export import Meta.Type;
export import Meta.Type.CV;
export import Meta.Type.Reference;
export import Meta.Type.Function;

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	struct
		Func
	{
		constexpr
		(	Func
		)	()
		=	default;

		explicit constexpr
		(	Func
		)	(	t_tSignature*
			,	t_tpQualifier
				...
			)
		{}
	};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		,	typename
			...	t_tpQualifier
		>
	(	Func
	)	(	auto
			(*)	(	t_tpParameter
					...
				)
			->	t_tResult
		,	t_tpQualifier
			...
		)
	->	Func
		<	auto
			(*)	(	t_tpParameter
					...
				)
			->	t_tResult
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		,	typename
			...	t_tpQualifier
		>
	(	Func
	)	(	auto
			(*)	(	t_tpParameter
					...
				,	...
				)
			->	t_tResult
		,	t_tpQualifier
			...
		)
	->	Func
		<	auto
			(*)	(	t_tpParameter
					...
				,	...
				)
			->	t_tResult
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	Signature
	)	(	decltype(Tokenize(Type<t_tpArgument>))
			...
		)
	->	decltype(Tokenize(Type<t_tResult>))
	{	return {};	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	VariadicSignature
	)	(	decltype(Tokenize(Type<t_tpArgument>))
			...
		,	...
		)
	->	decltype(Tokenize(Type<t_tResult>))
	{	return {};	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...)
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile
			>
		)
		->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Volatile
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile
			>
		)
		->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...)
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Volatile
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) &
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	LRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const &
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	LRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile &
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Volatile
		,	LRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile &
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	LRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) &
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	LRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const &
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	LRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile &
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Volatile
		,	LRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile &
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	LRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) &&
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	RRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const &&
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	RRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile &&
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Volatile
		,	RRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile &&
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	RRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) &&
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	RRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const &&
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	RRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile &&
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Volatile
		,	RRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile &&
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	RRef
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Volatile
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Volatile
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) & noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	LRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const & noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	LRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile & noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Volatile
		,	LRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile & noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	LRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) & noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	LRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const & noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	LRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile & noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Volatile
		,	LRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile & noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	LRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) && noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	RRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const && noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	RRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile && noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Volatile
		,	RRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile && noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&Signature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	RRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) && noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	RRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const && noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	RRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile && noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Volatile
		,	RRef
		,	Noexcept
		};
	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Tokenize
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile && noexcept
			>
		)
	->	decltype(auto)
	{	return
		Func
		{	&VariadicSignature<t_tResult, t_tpParameter...>
		,	Const
		,	Volatile
		,	RRef
		,	Noexcept
		};
	}
}
