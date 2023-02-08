export module Meta.Lex.TransformComposer;

import Meta.Lex.Transform;
import Meta.Lex.Tokenizer;
import Meta.Lex.Pointer;
import Meta.Lex.Reference;
import Meta.Lex.Member;
import Meta.Lex.Function;
import Meta.Lex.CV;
import Meta.Lex.Array;

import Meta.Token.Extent;
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
		)	(	TypeToken<t_tFundamental>
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
		)	(	MatchCV<t_tEntity, t_tpQualifier...>
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
			,	auto
					t_nExtent
			,	typename
				...	t_tpQualifier
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		auto constexpr
		(	Compose
		)	(	MatchCVArray<t_tEntity, t_nExtent, t_tpQualifier...>
			,	Transform<t_tpTransform...>
			)
			noexcept
		->	decltype(auto)
		{	return
			Compose
			(	t_tEntity{}
			,	Transform
				<	Token::Extent<t_nExtent>
				,	t_tpQualifier
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
				...	t_tpQualifier
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	MatchFunction<t_tEntity, t_tpQualifier...>
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
				...	t_tpQualifier
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	MatchCVMember<t_tEntity, t_tOwner, t_tpQualifier...>
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
				,	t_tpQualifier
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
				...	t_tpQualifier
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	MatchCVPointer<t_tEntity, t_tpQualifier...>
			,	Transform<t_tpTransform...>
			)
			noexcept
		->	decltype(auto)
		{	return
			Compose
			(	t_tEntity{}
			,	Transform
				<	Token::Pointer
				,	t_tpQualifier
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
					t_tReference
			,	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	Compose
		)	(	MatchRef<t_tEntity, t_tReference>
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
