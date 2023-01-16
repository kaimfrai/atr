export module Meta.Token.CV;

import Meta.Token.Type;
import Meta.Token.Transform;

export namespace
	Meta::Token
{
	struct
		Const
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Const
			)
		->	decltype(AddConst(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Const
			)
		->	decltype(RemoveConst(i_vType))
		{	return{};	}
	};

	struct
		Volatile
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Volatile
			)
		->	decltype(AddVolatile(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Volatile
			)
		->	decltype(RemoveVolatile(i_vType))
		{	return{};	}
	};

	struct
		Mutable
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Mutable
			)
		->	decltype(AddMutable(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Mutable
			)
		->	decltype(RemoveMutable(i_vType))
		{	return{};	}
	};

	struct
		CV
	{
		template
			<	typename
					t_tEntity
			>
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	CV
			)
		->	decltype(RemoveCV(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Const extern
		Const
	;

	Token::Volatile extern
		Volatile
	;

	Token::Mutable extern
		Mutable
	;

	Token::CV extern
		CV
	;
}
