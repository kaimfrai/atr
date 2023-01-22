export module Meta.Token.Reference;

import Meta.Token.Type;
import Meta.Token.Transform.AddLValueReference;
import Meta.Token.Transform.RemoveLValueReference;
import Meta.Token.Transform.AddRValueReference;
import Meta.Token.Transform.RemoveRValueReference;
import Meta.Token.Transform.AddCopyReference;
import Meta.Token.Transform.RemoveCopyReference;

using ::Meta::AddLValueReference;
using ::Meta::RemoveLValueReference;
using ::Meta::AddRValueReference;
using ::Meta::RemoveRValueReference;
using ::Meta::AddCopyReference;
using ::Meta::RemoveCopyReference;

export namespace
	Meta::Token
{
	struct
		LRef
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	LRef
			)
			noexcept
		->	decltype(AddLValueReference(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	LRef
			)
			noexcept
		->	decltype(RemoveLValueReference(i_vType))
		{	return{};	}
	};

	struct
		RRef
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	RRef
			)
			noexcept
		->	decltype(AddRValueReference(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	RRef
			)
			noexcept
		->	decltype(RemoveRValueReference(i_vType))
		{	return{};	}
	};

	struct
		CopyRef
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	CopyRef
			)
			noexcept
		->	decltype(AddCopyReference(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	CopyRef
			)
			noexcept
		->	decltype(RemoveCopyReference(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::LRef const extern
		LRef
	;

	Token::RRef const extern
		RRef
	;

	Token::CopyRef const extern
		CopyRef
	;
}
