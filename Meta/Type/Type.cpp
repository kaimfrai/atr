export module Meta.Type;

export namespace
	Meta::Token
{
	struct
		EraseType final
	{
	private:
		template<typename> friend struct Type;

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
		Type final
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
		{	return Type{};	}
	};

	template
		<	typename
				t_tEntity
		>
	(	Type
	)	(	Type<t_tEntity>
		)
	->	Type
		<	t_tEntity
		>
	;
}

export namespace
	Meta
{
	template
		<	typename
				t_tEntity
		>
	using
		TypeToken
	=	Token::Type<t_tEntity>
	;

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
		<	Token::Type
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
	Token::Type constexpr inline
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
