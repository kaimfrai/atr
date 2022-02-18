export module Meta.Lex;

export import Meta.Token.Type;
export import Meta.Lex.Array;
export import Meta.Lex.CV;
export import Meta.Lex.Function;
export import Meta.Lex.Member;
export import Meta.Lex.Pointer;
export import Meta.Lex.Reference;

export namespace
	Meta::Lex
{
	struct
		Tokenizer final
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity
				>
			)	const
		->	CV<Base<t_tEntity>>
		{	return
			CV
			{	Base<t_tEntity>
				{}
			};
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity const
				>
			)	const
		->	decltype(auto)
		{	return
			CV
			{	operator()(Type<t_tEntity>)
			,	Const
			};
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity volatile
				>
			)	const
		->	decltype(auto)
		{	return
			CV
			{	operator()(Type<t_tEntity>)
			,	Volatile
			};
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity const volatile
				>
			)	const
		->	decltype(auto)
		{	return
			CV
			{	operator()(Type<t_tEntity>)
			,	Const
			,	Volatile
			};
		}

		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement[t_nExtent]
				>
			)	const
		->	decltype(auto)
		{	return
			Array
			{	operator()(Type<t_tElement>)
			,	Extent<t_nExtent>
			};
		}

		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement const[t_nExtent]
				>
			)	const
		->	decltype(auto)
		{	return
			Array
			{	operator()(Type<t_tElement const>)
			,	Extent<t_nExtent>
			};
		}

		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement volatile[t_nExtent]
				>
			)	const
		->	decltype(auto)
		{	return
			Array
			{	operator()(Type<t_tElement volatile>)
			,	Extent<t_nExtent>
			};
		}

		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement const volatile[t_nExtent]
				>
			)	const
		->	decltype(auto)
		{	return
			Array
			{	operator()(Type<t_tElement const volatile>)
			,	Extent<t_nExtent>
			};
		}

		template
			<	typename
					t_tElement
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement[]
				>
			)	const
		->	decltype(auto)
		{	return
			Array
			{	operator()(Type<t_tElement>)
			,	Extent<0uz>
			};
		}

		template
			<	typename
					t_tElement
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement const[]
				>
			)	const
		->	decltype(auto)
		{	return
			Array
			{	operator()(Type<t_tElement const>)
			,	Extent<0uz>
			};
		}

		template
			<	typename
					t_tElement
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement volatile[]
				>
			)	const
		->	decltype(auto)
		{	return
			Array
			{	operator()(Type<t_tElement volatile>)
			,	Extent<0uz>
			};
		}

		template
			<	typename
					t_tElement
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement const volatile[]
				>
			)	const
		->	decltype(auto)
		{	return
			Array
			{	operator()(Type<t_tElement const volatile>)
			,	Extent<0uz>
			};
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity*>
			)	const
		->	decltype(auto)
		{	return
			CV
			{	Ptr
				{	operator()(Type<t_tEntity>)
				}
			};
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity&>
			)	const
		->	decltype(auto)
		{	return
			Ref
			{	operator()(Type<t_tEntity>)
			,	LRef
			};
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity&&>
			)	const
		->	decltype(auto)
		{	return
			Ref
			{	operator()(Type<t_tEntity>)
			,	RRef
			};
		}

		template
			<	typename
					t_tMember
			,	typename
					t_tOwner
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tMember t_tOwner::*
				>
			)	const
		->	decltype(auto)
		{	return
			CV
			{	Member
				{	operator()(Type<t_tMember>)
				,	Owner<t_tOwner>{}
				}
			};
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...)
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
			};
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) volatile
				>
			)
			->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const volatile
				>
			)
			->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...)
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
			};
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) volatile
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const volatile
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) volatile &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const volatile &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) volatile &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const volatile &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) volatile &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const volatile &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) volatile &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const volatile &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) volatile noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const volatile noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) volatile noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const volatile noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) volatile & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const volatile & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) volatile & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const volatile & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) volatile && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) const volatile && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) volatile && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
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
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) const volatile && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Signature
				{	operator()(Type<t_tResult>)
				,	Parameter
					{	operator()(Type<t_tpParameter>)
						...
					}
				,	Ellipsis
				}
			,	Const
			,	Volatile
			,	RRef
			,	Noexcept
			};
		}
	};
}

export namespace
	Meta
{
	Lex::Tokenizer constexpr inline
		Tokenize
	{};

	template
		<	typename
				t_tEntity
		>
	using
		TokenizeEntity
	=	decltype
		(	Tokenize
			(	Type<t_tEntity>
			)
		)
	;

	template
		<	typename
				t_tEntity
		>
	TypeToken<TokenizeEntity<t_tEntity>> constexpr inline
		TokenizeType
	{};
}
