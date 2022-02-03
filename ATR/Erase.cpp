export module ATR.Erase;

export import Std;
export import Meta.Type;
export import Meta.Concept.Category;

export namespace
	ATR
{
	/// erases type information from an argument
	/// defined as a niebloid as ADL and overloads of the same name
	//	may yield undefined behaviour
	struct
		[[nodiscard]]
		ForwardErasedType
	{
		/// erases type information from a value
		template
			<	Meta::ProtoValue
					t_tObject
			>
		auto constexpr
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
			<	Meta::ProtoValue
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
			<	Meta::ProtoValue
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
			<	Meta::ProtoValue
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
			<	Meta::ProtoValue
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
			<	Meta::ProtoValue
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
	};

	ForwardErasedType constexpr inline
		ForwardErased
	{};

	/// converts a TypeInfo into a TypeInfo of the corresponding erased type
	template
		<	typename
				t_tEntity
		>
	auto constexpr
		ErasedTypeInfo
		(	Meta::TypeToken<t_tEntity>
		)
	{	return
		Meta::Type
		<	decltype
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
		>;
	}
}
