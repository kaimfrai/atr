export module Meta.Token.Reference;

import Meta.Token.Type;
import Meta.Token.Transform;

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
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	LRef
			)
		->	decltype(AddLValueReference(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	LRef
			)
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
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	RRef
			)
		->	decltype(AddRValueReference(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	RRef
			)
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
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	CopyRef
			)
		->	decltype(AddCopyReference(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	CopyRef
			)
		->	decltype(RemoveCopyReference(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::LRef extern
		LRef
	;

	Token::RRef extern
		RRef
	;

	Token::CopyRef extern
		CopyRef
	;
}
