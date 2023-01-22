export module Meta.Token.Type;

import Std;

export namespace
	Meta::Token
{
	struct
		EraseType final
	{
	private:
		template
			<	typename
			>
		friend struct
			TypeToken
		;

		explicit (false)
			constexpr
		(	EraseType
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	EraseType
		)	(	EraseType const&
			)
		=	delete;
	};

	struct
		TypeID final
	{
		EraseType const
		*	Erase
		;

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	TypeID
			,	TypeID
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	TypeID
					i_vLeft
			,	TypeID
					i_vRight
			)
			noexcept
		->	::std::partial_ordering
		{	return
				(	i_vLeft
				==	i_vRight
				)
			?	::std::partial_ordering::equivalent
			:	::std::partial_ordering::unordered
			;
		}
	};

	template
		<	TypeID
		>
	struct
		TypeRestore final
	{
		friend auto constexpr
		(	RestoreType
		)	(	TypeRestore
			)
			noexcept
		;
	};

	template
		<	typename
				t_tEntity
		>
	struct
		TypeToken
	{
		using
			Entity
		=	t_tEntity
		;

		static EraseType constexpr
			Erase
		{};

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			TypeID
		)	()	const
		{	return
			{	&Erase
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	RestoreType
		)	(	TypeRestore
				<	TypeID
					{	&Erase
					}
				>
			)
			noexcept
		{	return
			TypeToken
			{};
		}

		friend auto constexpr
		(	operator ==
		)	(	TypeID
			,	TypeID
			)
			noexcept
		->	bool
		;

		friend auto constexpr
		(	operator <=>
		)	(	TypeID
			,	TypeID
			)
			noexcept
		->	::std::partial_ordering
		;
	};

	template
		<	typename
				t_tEntity
		>
	(	TypeToken
	)	(	TypeToken
			<	t_tEntity
			>
		)
	->	TypeToken
		<	t_tEntity
		>
	;
}

export namespace
	Meta
{
	using ::Meta::Token::TypeToken;

	using ::Meta::Token::TypeID;

	template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		Type
	=	TypeToken
		<	t_tEntity
		>{}
	;

	template
		<	TypeToken
				t_vType
		>
	using
		TypeEntity
	=	typename decltype
		(	t_vType
		)
	::	Entity
	;


	template
		<	TypeID
				t_vTypeID
		>
	TypeToken constexpr inline
		RestoreTypeToken
	=	RestoreType
		(	Token::TypeRestore
			<	t_vTypeID
			>{}
		)
	;

	template
		<	TypeID
				t_vTypeID
		>
	using
		RestoreTypeEntity
	=	TypeEntity
		<	RestoreTypeToken
			<	t_vTypeID
			>
		>
	;
}
