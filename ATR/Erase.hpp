export module ATR:Erase;

export import Meta.Token;
export import Meta.Lex;

export import Std;

export namespace
	ATR
{
	template
		<	typename
				t_tTo
		,	typename
				t_tFrom
		>
	auto constexpr
	(	PointerCast
	)	(	t_tFrom const
			*	i_aObject
		)
	{	if	constexpr(::std::is_convertible_v<t_tFrom*, t_tTo const*>)
			return static_cast<t_tTo const*>(i_aObject);
		else
			return static_cast<t_tTo const*>(static_cast<void const*>(i_aObject));
	}

	template
		<	typename
				t_tTo
		,	typename
				t_tFrom
		>
	auto constexpr
	(	PointerCast
	)	(	t_tFrom
			*	i_aObject
		)
	{	if	constexpr(::std::is_convertible_v<t_tFrom*, t_tTo*>)
			return static_cast<t_tTo*>(i_aObject);
		else
			return static_cast<t_tTo*>(static_cast<void*>(i_aObject));
	}

	/// erases type information from an argument
	/// defined as a niebloid as ADL and overloads of the same name
	//	may yield undefined behaviour
	struct
		[[nodiscard]]
		ForwardErasedType
	{
		/// erases type information from a value
		/// TODO: erase value information: decomposition into fundamental types of the same properties
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		auto constexpr
		(	operator()
		)	(	Meta::Lex::CV<t_tEntity, t_tpQualifier...>
					i_vType
			,	typename decltype(i_vType)::Entity
					i_vObject
			)	const
		->	typename decltype(i_vType)::Entity
		{	return i_vObject;	}

		/// erases type information from a pointer to non-const
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		auto constexpr
		(	operator()
		)	(	Meta::Lex::MatchCVPointer<t_tEntity, t_tpQualifier...>
					i_vType
			,	typename decltype(i_vType)::Entity
					i_aObject
			)	const
		->	auto*
		{	return PointerCast<::std::byte>(i_aObject);	}

		/// erases type information from a reference
		template
			<	typename
					t_tEntity
			,	typename
					t_tCategory
			>
		auto constexpr
		(	operator()
		)	(	Meta::Lex::Ref<t_tEntity, t_tCategory>
					i_vType
			,	typename decltype(i_vType)::Entity
					i_rObject
			)	const
		->	auto*
		{	return
			operator()
			(	Meta::Lex::MatchCVPointer<t_tEntity>{}
			,	::std::addressof
				(	i_rObject
				)
			);
		}
	};

	ForwardErasedType constexpr inline
		ForwardErased
	{};

	/// converts a TypeInfo into a TypeInfo of the corresponding erased type
	template
		<	typename
				t_tEntity
		>
	using
		ErasedType
	=	decltype
		(	ForwardErased
			(	Meta::Tokenize
				(	/// top level cv-qualifiers are ignored in the function signature
					Meta::Type
					<	std::remove_cv_t
						<	t_tEntity
						>
					>
				)
			,	::std::declval
				<	t_tEntity
				>()
			)
		)
	;
}
