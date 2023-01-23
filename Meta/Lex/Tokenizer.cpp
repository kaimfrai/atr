export module Meta.Lex.Tokenizer;

import Meta.Lex.Array;
import Meta.Lex.Base;
import Meta.Lex.Function;
import Meta.Lex.CV;
import Meta.Lex.Member;
import Meta.Lex.Pointer;
import Meta.Lex.Reference;

import Meta.Token.Specifier;
import Meta.Token.Ellipsis;
import Meta.Token.Noexcept;
import Meta.Token.LRef;
import Meta.Token.RRef;
import Meta.Token.Type;
import Meta.Token.Const;
import Meta.Token.Mutable;
import Meta.Token.Volatile;
import Meta.Token.Extent;
import Meta.Token.Owner;
import Meta.Size;

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
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity
				>
			)
			noexcept
		->	CV<Base<t_tEntity>>
		{	return
			{};
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity const
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeCV
			(	operator()(Type<t_tEntity>)
			,	Const
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity volatile
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeCV
			(	operator()(Type<t_tEntity>)
			,	Volatile
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity const volatile
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeCV
			(	operator()(Type<t_tEntity>)
			,	Const
			,	Volatile
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	Specifier::Mut<t_tEntity>
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeCV
			(	operator()(Type<t_tEntity>)
			,	Mutable
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	Specifier::Mut<t_tEntity volatile>
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeCV
			(	operator()(Type<t_tEntity>)
			,	Mutable
			,	Volatile
			);
		}

		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement[t_nExtent]
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeArray
			(	operator()(Type<t_tElement>)
			,	Extent<t_nExtent>
			);
		}

		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement const[t_nExtent]
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeArray
			(	operator()(Type<t_tElement>)
			,	Extent<t_nExtent>
			,	Const
			);
		}

		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement volatile[t_nExtent]
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeArray
			(	operator()(Type<t_tElement>)
			,	Extent<t_nExtent>
			,	Volatile
			);
		}

		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement const volatile[t_nExtent]
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeArray
			(	operator()(Type<t_tElement>)
			,	Extent<t_nExtent>
			,	Const
			,	Volatile
			);
		}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement[]
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeArray
			(	operator()(Type<t_tElement>)
			,	Extent<0uz>
			);
		}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement const[]
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeArray
			(	operator()(Type<t_tElement>)
			,	Extent<0uz>
			,	Const
			);
		}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement volatile[]
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeArray
			(	operator()(Type<t_tElement>)
			,	Extent<0uz>
			,	Volatile
			);
		}

		template
			<	typename
					t_tElement
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tElement const volatile[]
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeArray
			(	operator()(Type<t_tElement>)
			,	Extent<0uz>
			,	Const
			,	Volatile
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity*>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakePtr
			(	operator()(Type<t_tEntity>)
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity&>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeRef
			(	operator()(Type<t_tEntity>)
			,	LRef
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity&&>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeRef
			(	operator()(Type<t_tEntity>)
			,	RRef
			);
		}

		template
			<	typename
					t_tMember
			,	typename
					t_tOwner
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tMember t_tOwner::*
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeMember
			(	operator()(Type<t_tMember>)
			,	Owner<t_tOwner>
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...)
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Volatile
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	Volatile
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...)
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Volatile
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	Volatile
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) &
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	LRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const &
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	LRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile &
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Volatile
			,	LRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile &
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	Volatile
			,	LRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) &
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	LRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const &
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	LRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile &
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Volatile
			,	LRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile &
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	Volatile
			,	LRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) &&
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	RRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const &&
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	RRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile &&
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Volatile
			,	RRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile &&
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	Volatile
			,	RRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) &&
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	RRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const &&
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	RRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile &&
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Volatile
			,	RRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile &&
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	Volatile
			,	RRef
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Volatile
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	Volatile
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Volatile
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	Volatile
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) & noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	LRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const & noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	LRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile & noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Volatile
			,	LRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile & noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	Volatile
			,	LRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) & noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	LRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const & noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	LRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile & noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Volatile
			,	LRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile & noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	Volatile
			,	LRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) && noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	RRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const && noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	RRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) volatile && noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Volatile
			,	RRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam...) const volatile && noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				)
			,	Const
			,	Volatile
			,	RRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) && noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	RRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const && noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	RRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) volatile && noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Volatile
			,	RRef
			,	Noexcept
			);
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParam
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParam..., ...) const volatile && noexcept
				>
			)
			noexcept
		->	decltype(auto)
		{	return
			MakeFunc
			(	MakeSig
				(	operator()(Type<t_tResult>)
				,	MakeParam
					(	operator()(Type<t_tpParam>)
						...
					)
				,	Ellipsis
				)
			,	Const
			,	Volatile
			,	RRef
			,	Noexcept
			);
		}
	};
}

export namespace
	Meta
{
	Lex::Tokenizer const extern
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
