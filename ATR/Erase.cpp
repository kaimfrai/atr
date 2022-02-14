export module ATR.Erase;

export import Std;
export import Meta.Type;
export import Meta.Transform;
export import Meta.Concept.Category;

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
			<	Meta::ProtoValue
					t_tObject
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tObject>
					i_vType
			,	Meta::TypeEntity<i_vType>
					i_vObject
			)	const
		->	t_tObject
		{	return i_vObject;	}

		/// erases type information from a pointer to non-const
		template
			<	Meta::ProtoPointer
					t_tObject
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tObject>
					i_vType
			,	Meta::TypeEntity<i_vType>
					i_aObject
			)	const
		->	auto*
		{	return PointerCast<::std::byte>(i_aObject);	}

		/// erases type information from a reference
		template
			<	Meta::ProtoReference
					t_tObject
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tObject>
					i_vType
			,	Meta::TypeEntity<i_vType>
					i_rObject
			)	const
		->	auto*
		{	return
			operator()
			(	Meta::AddPointer(i_vType)
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
