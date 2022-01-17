export module Function.Erase;

export import Meta.Template;
export import Meta.TypeInfo;
export import Std.Concepts;

export import Std;

export namespace
	Function
{
	/// erases type information from an argument
	/// defined as a niebloid as ADL and overloads of the same name
	//	may yield undefined behaviour
	constexpr
	struct
		[[nodiscard]]
		ForwardErasedType
	{
		/// erases type information from a value
		template
			<	Std::Object
					t_tObject
			>
		constexpr
		auto
			operator()
			(	Meta::TypeToken
				<	t_tObject
				>
			,	t_tObject
					i_vObject
			)	const
		->	t_tObject
		{	/// TODO: erase value information: decomposition into fundamental types of the same properties
			return
				i_vObject
			;
		}
		/// erases type information from a pointer to non-const
		template
			<	Std::Object
					t_tObject
			>
		constexpr
		auto
			operator()
			(	Meta::TypeToken
				<	t_tObject
					*
				>
			,	t_tObject
				*	i_aObject
			)	const
		->	void
			*
		{	return
				i_aObject
			;
		}

		/// erases type information from a pointer to const
		template
			<	Std::Object
					t_tObject
			>
		constexpr
		auto
			operator()
			(	Meta::TypeToken
				<	t_tObject
					const
					*
				>
			,	t_tObject
				const
				*	i_aObject
			)	const
		->	void
			const
			*
		{	return
				i_aObject
			;
		}

		/// erases type information from a lvalue reference
		template
			<	Std::Object
					t_tObject
			>
		constexpr
		auto
			operator()
			(	Meta::TypeToken
				<	t_tObject
					&
				>
			,	t_tObject
				&	i_rObject
			)	const
		->	auto*
		{
			return
				operator()
				(	Meta::Type<t_tObject*>
				,	std::addressof
					(	i_rObject
					)
				)
			;
		}

		/// erases type information from a rvalue reference to small types
		template
			<	Std::Object
					t_tObject
			>
		constexpr
		auto
			operator()
			(	Meta::TypeToken
				<	t_tObject
					&&
				>
			,	t_tObject
				&&	i_rObject
			)	const
		->	t_tObject
		requires
			(	sizeof(t_tObject)
			<=	alignof(std::max_align_t)
			)
		{	return
				i_rObject
			;
		}

		/// erases type information from a rvalue reference to large types
		template
			<	Std::Object
					t_tObject
			>
		constexpr
		auto
			operator()
			(	Meta::TypeToken
					<	t_tObject
						&&
					>
			,	t_tObject
				&&	i_rObject
			)	const
		->	auto
			*
		{	return
				operator()
				(	Meta::Type<t_tObject*>
				,	std::addressof
					(	i_rObject
					)
				)
			;
		}
	}	ForwardErased
	{};

	/// uses the ForwardErased overload to deduce the argument type
	template
		<	Std::ObjectOrReference
				t_tObject
		>
	using
		ErasedType
	=	decltype(
			ForwardErased
			(	Meta::Type
				<	/// top level cv-qualifiers are ignored in the function signature
					std::remove_cv_t
					<	t_tObject
					>
				>
			,	std::declval
				<	t_tObject
				>()
			)
		)
	;

	/// converts a TypeInfo into a TypeInfo of the corresponding erased type
	constexpr
	auto
		ErasedTypeInfo
		(	Meta::TypeInstance auto
				i_vTypeInfo
		)
	{	return
			PackTemplate::Type
			<	ErasedType
			>()
			(	i_vTypeInfo
			)
		;
	}
}
