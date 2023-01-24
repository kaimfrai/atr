export module Meta.Lex.TransformComposer;

import Meta.Lex.Transform;
import Meta.Lex.Tokenizer;
import Meta.Lex.Pointer;
import Meta.Lex.Reference;
import Meta.Lex.Member;
import Meta.Lex.Function;
import Meta.Lex.CV;
import Meta.Lex.Array;
import Meta.Lex.Base;

import Meta.Token.Owner;
import Meta.Token.Pointer;
import Meta.Token.Type;

export namespace
	Meta::Lex
{
	struct
		TransformComposer final
	{
		template
			<	typename
					t_tFundamental
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	Base<t_tFundamental>
			,	Transform<t_tpTransform...>
			)
			noexcept
		->	Transform<t_tpTransform...>
		{	return {};	}

		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	CV<t_tEntity, t_tpQualifier...>
			,	Transform<t_tpTransform...>
			)
			noexcept
		->	decltype(auto)
		{	return
			Compose
			(	t_tEntity{}
			,	Transform
				<	t_tpQualifier
					...
				,	t_tpTransform
					...
				>{}
			);
		}

		template
			<	typename
					t_tEntity
			,	typename
					t_tExtent
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		auto constexpr
		(	Compose
		)	(	Array<t_tEntity, t_tExtent>
			,	Transform<t_tpTransform...>
			)
			noexcept
		->	decltype(auto)
		{	return
			Compose
			(	t_tEntity{}
			,	Transform
				<	t_tExtent
				,	t_tpTransform
					...
				>{}
			);
		}

		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	Func<t_tEntity, t_tpQualifier...>
			,	Transform<t_tpTransform...>
			)
			noexcept
		->	decltype(auto)
		{	return
			Compose
			(	t_tEntity{}
			,	Transform
				<	t_tpQualifier
					...
				,	t_tpTransform
					...
				>{}
			);
		}

		template
			<	typename
					t_tEntity
			,	typename
					t_tOwner
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	Member<t_tEntity, t_tOwner>
			,	Transform<t_tpTransform...>
			)
			noexcept
		->	decltype(auto)
		{	return
			Compose
			(	t_tEntity{}
			,	Transform
				<	Token::Owner
					<	t_tOwner
					>
				,	t_tpTransform
					...
				>{}
			);
		}

		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	Ptr<t_tEntity>
			,	Transform<t_tpTransform...>
			)
			noexcept
		->	decltype(auto)
		{	return
			Compose
			(	t_tEntity{}
			,	Transform
				<	Token::Pointer
				,	t_tpTransform
					...
				>{}
			);
		}

		template
			<	typename
					t_tEntity
			,	typename
					t_tReference
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	Ref<t_tEntity, t_tReference>
			,	Transform<t_tpTransform...>
			)
			noexcept
		->	decltype(auto)
		{	return
			Compose
			(	t_tEntity{}
			,	Transform
				<	t_tReference
				,	t_tpTransform
					...
				>{}
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vEntity
			)
			noexcept
		->	decltype(auto)
		{	return
			Compose
			(	Tokenize
				(	i_vEntity
				)
			,	Transform
				<>{}
			);
		}
	};
}

export namespace
	Meta
{
	Lex::TransformComposer const extern
		ComposeTransform
	;
}
