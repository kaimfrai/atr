export module Meta.Lex:Tokenizer;

export import :Array;
export import :CV;
export import :Function;
export import :Member;
export import :Pointer;
export import :Reference;

export import Meta.Token;

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
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	Specifier::Mut<t_tEntity>
				>
			)	const
		->	decltype(auto)
		{	return
			CV
			{	operator()(Type<t_tEntity>)
			,	Mutable
			};
		}


		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	Specifier::Mut<t_tEntity volatile>
				>
			)	const
		->	decltype(auto)
		{	return
			CV
			{	operator()(Type<t_tEntity>)
			,	Mutable
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
			CV
			{	Array
				{	operator()(Type<t_tElement>)
				,	Extent<t_nExtent>
				}
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
			CV
			{	Array
				{	operator()(Type<t_tElement>)
				,	Extent<t_nExtent>
				}
			,	Const
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
			CV
			{	Array
				{	operator()(Type<t_tElement>)
				,	Extent<t_nExtent>
				}
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
				<	t_tElement const volatile[t_nExtent]
				>
			)	const
		->	decltype(auto)
		{	return
			CV
			{	Array
				{	operator()(Type<t_tElement>)
				,	Extent<t_nExtent>
				}
			,	Const
			,	Volatile
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
			CV
			{	Array
				{	operator()(Type<t_tElement>)
				,	Extent<0uz>
				}
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
			CV
			{	Array
				{	operator()(Type<t_tElement>)
				,	Extent<0uz>
				}
			,	Const
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
			CV
			{	Array
				{	operator()(Type<t_tElement>)
				,	Extent<0uz>
				}
			,	Volatile
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
			CV
			{	Array
				{	operator()(Type<t_tElement>)
				,	Extent<0uz>
				}
			,	Const
			,	Volatile
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...)
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
						...
					}
				}
			};
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...)
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile &
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile &&
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile & noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
				...	t_tpParam
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile && noexcept
				>
			)	const
		->	decltype(auto)
		{	return
			Func
			{	Sig
				{	operator()(Type<t_tResult>)
				,	Param
					{	operator()(Type<t_tpParam>)
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
	Lex::Tokenizer extern
		Tokenize
	;

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
