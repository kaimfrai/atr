export module ATR.Erase;

export import Std;
export import Meta.Type;
export import Meta.Concept.Category;

export namespace
	ATR
{
	template
		<	typename
				t_tTo
		,	bool
				t_bConstCast
			=	false
		,	typename
				t_tFrom
		>
	auto constexpr
	(	PointerCast
	)	(	t_tFrom
			*	i_aObject
		)
	->	t_tTo*
	{
		if	constexpr(::std::is_convertible_v<t_tFrom*, t_tTo*>)
			return static_cast<t_tTo*>(i_aObject);
		else
		if	constexpr(::std::is_const_v<t_tFrom>)
		{
			void const* aVoid = i_aObject;
			if	constexpr(::std::is_const_v<t_tTo>)
				return static_cast<t_tTo*>(aVoid);
			else
			{
				static_assert(t_bConstCast, "const_cast required but not explicitly requested!");
				//	trust the caller
				return const_cast<t_tTo*>(static_cast<t_tTo const*>(aVoid));
			}
		}
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
			<	Meta::ProtoValue
					t_tObject
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tObject>
			,	t_tObject
					i_vObject
			)	const
		->	t_tObject
		{	return i_vObject;	}

		/// erases type information from a pointer to non-const
		template
			<	Meta::ProtoValue
					t_tObject
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tObject*>
			,	t_tObject
				*	i_aObject
			)	const
		->	::std::byte*
		{	return PointerCast<::std::byte>(i_aObject);	}

		/// erases type information from a pointer to const
		template
			<	Meta::ProtoValue
					t_tObject
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tObject const*>
			,	t_tObject const
				*	i_aObject
			)	const
		->	::std::byte const*
		{	return PointerCast<::std::byte const>(i_aObject);	}

		/// erases type information from a lvalue reference
		template
			<	Meta::ProtoValue
					t_tObject
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tObject&>
			,	t_tObject
				&	i_rObject
			)	const
		->	auto*
		{	return
			operator()
			(	Meta::Type<t_tObject*>
			,	::std::addressof
				(	i_rObject
				)
			);
		}

		/// erases type information from a rvalue reference to large types
		template
			<	Meta::ProtoValue
					t_tObject
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tObject&&>
			,	t_tObject
				&&	i_rObject
			)	const
		->	auto*
		{	return
			operator()
			(	Meta::Type<t_tObject*>
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
			(	Meta::Type
				<	/// top level cv-qualifiers are ignored in the function signature
					std::remove_cv_t
					<	t_tEntity
					>
				>
			,	::std::declval
				<	t_tEntity
				>()
			)
		)
	;
}
