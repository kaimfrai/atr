export module Meta.Token.Type;

export namespace
	Meta::Token
{
	struct
		EraseType final
	{
	private:
		template<typename> friend struct TypeToken;

		constexpr
		(	EraseType
		)	()
		=	default;

		constexpr EraseType(EraseType const&) = delete;
		constexpr EraseType(EraseType&&) = delete;
	};

	template
		<	EraseType const*
		>
	struct
		TypeRestore final
	{
		friend auto constexpr
		(	RestoreType
		)	(	TypeRestore
			)
		;
	};

	template
		<	typename
				t_tEntity
		>
	struct
		TypeToken final
	{
		using Entity = t_tEntity;

		static EraseType constexpr
			Erase
		{};

		constexpr
		(	operator
			EraseType const*
		)	()	const
		{	return &Erase;	}

		friend auto constexpr
		(	RestoreType
		)	(	TypeRestore<&Erase>
			)
		{	return TypeToken{};	}
	};

	template
		<	typename
				t_tEntity
		>
	(	TypeToken
	)	(	TypeToken<t_tEntity>
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

	using
		EraseTypeToken
	=	Token::EraseType const*
	;

	template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		Type
	=	TypeToken<t_tEntity>
		{}
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
		<	EraseTypeToken
				t_vEraseType
		>
	TypeToken constexpr inline
		RestoreTypeToken
	=	RestoreType
		(	Token::TypeRestore
			<	t_vEraseType
			>{}
		)
	;

	template
		<	EraseTypeToken
				t_vEraseType
		>
	using
		RestoreTypeEntity
	=	TypeEntity
		<	RestoreTypeToken
			<	t_vEraseType
			>
		>
	;
}
