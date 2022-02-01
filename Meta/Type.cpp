export module Meta.Type;

export import Std;
export import Meta.Integer;

export namespace
	Meta
{
	template
		<	typename
				t_tEntity
		>
	USize constexpr inline
		BitSize_Of
	=	[]{	if	constexpr
				(	::std::is_const_v<t_tEntity>
				or	::std::is_volatile_v<t_tEntity>
				)
				return BitSize_Of<::std::remove_cv_t<t_tEntity>>;
			else
			if	constexpr
				(	::std::is_reference_v<t_tEntity>
				or	::std::is_unbounded_array_v<t_tEntity>
				)
				return CHAR_BIT * sizeof(void*);
			else
			if	constexpr
				(	requires
					{	sizeof(t_tEntity);
					}
				)
				return
					::std::is_empty_v<t_tEntity>
				?	0uz
				:	CHAR_BIT * sizeof(t_tEntity)
				;
			else
				return 0uz;
		}()
	;

	template
		<>
	USize constexpr inline
		BitSize_Of<bool>
	=	1uz
	;

	template
		<	typename
				t_tEntity
		>
	USize constexpr inline
		ByteSize_Of
	=	(	BitSize_Of<t_tEntity>
		+	(CHAR_BIT - 1uz)
		)
	/	CHAR_BIT
	;

	template
		<	typename
				t_tEntity
		>
	USize constexpr inline
		ByteAlign_Of
	=	[]{	if	constexpr
				(	::std::is_reference_v<t_tEntity>
				or	::std::is_unbounded_array_v<t_tEntity>
				)
				return alignof(void*);
			else
			if	constexpr
				(	requires
					{	alignof(t_tEntity);
					}
				)
				return
					::std::is_empty_v<t_tEntity>
				?	0uz
				:	alignof(t_tEntity)
				;
			else
				return 0uz;
		}()
	;
}

export namespace
	Meta::Token
{
	struct
		EraseType final
	{
		USize const Alignment;
		USize const Size;

	private:
		template<typename> friend struct Type;

		explicit constexpr
		(	EraseType
		)	(	USize
					i_nAlignment
			,	USize
					i_nSize
			)
		:	Alignment{i_nAlignment}
		,	Size{i_nSize}
		{}

		constexpr EraseType(EraseType const&) = delete;
		constexpr EraseType(EraseType&&) = delete;
	};

	auto constexpr
	(	operator<=>
	)	(	EraseType const
			&	i_rLeft
		,	EraseType const
			&	i_rRight
		)
	->	::std::strong_ordering
	{
		auto const
			vCompareAlignment
		=	i_rLeft.Alignment
		<=>	i_rRight.Alignment
		;
		if	(vCompareAlignment != ::std::strong_ordering::equal)
			return vCompareAlignment;

		return i_rLeft.Size <=> i_rRight.Size;
	}

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
		{	ByteAlign_Of<t_tEntity>
		,	ByteSize_Of<t_tEntity>
		};

		constexpr
		(	operator
			EraseType const&
		)	()	const
		{	return Erase;	}

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
