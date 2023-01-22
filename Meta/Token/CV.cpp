export module Meta.Token.CV;

import Meta.Token.Type;
import Meta.Token.Transform.AddConst;
import Meta.Token.Transform.RemoveConst;
import Meta.Token.Transform.AddVolatile;
import Meta.Token.Transform.RemoveVolatile;
import Meta.Token.Transform.AddMutable;
import Meta.Token.Transform.RemoveMutable;
import Meta.Token.Transform.RemoveCV;

using ::Meta::AddConst;
using ::Meta::RemoveConst;
using ::Meta::AddVolatile;
using ::Meta::RemoveVolatile;
using ::Meta::AddMutable;
using ::Meta::RemoveMutable;
using ::Meta::RemoveCV;

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
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Const
			)
			noexcept
		->	decltype(AddConst(i_vType))
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
			,	Const
			)
			noexcept
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
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Volatile
			)
			noexcept
		->	decltype(AddVolatile(i_vType))
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
			,	Volatile
			)
			noexcept
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
		[[nodiscard]]
		friend auto constexpr
		(	operator +
		)	(	TypeToken<t_tEntity>
					i_vType
			,	Mutable
			)
			noexcept
		->	decltype(AddMutable(i_vType))
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
			,	Mutable
			)
			noexcept
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
		[[nodiscard]]
		friend auto constexpr
		(	operator -
		)	(	TypeToken<t_tEntity>
					i_vType
			,	CV
			)
			noexcept
		->	decltype(RemoveCV(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::Const const extern
		Const
	;

	Token::Volatile const extern
		Volatile
	;

	Token::Mutable const extern
		Mutable
	;

	Token::CV const extern
		CV
	;
}
