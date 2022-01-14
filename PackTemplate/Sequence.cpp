export module PackTemplate.Sequence;

export import Meta.ValueInfo;
export import Meta.TypeInfo;
export import <Stateless/Type.hpp>;
export import <Std/Concepts.hpp>;

export namespace
	PackTemplate
{
	/// allow for comparison of Statless objects in this namespace
	using
		Stateless::operator==
	;

	/// wraps around a template-id for type value packs
	/// defines value-based operations
	template
		<	template
				<	typename
						t_tElement
				,	t_tElement
					...
				>
			typename
				t_t1SequencePack
		>
	struct
		[[nodiscard]]
		Sequence
	{
		///	instantiates the template with the given values into a TypeInfo
		/// at least one ValueInfo must be specified to deduce the type
		template
			<	typename
					t_tElement
			,	t_tElement
					t_vInitialElement
			,	t_tElement
				...	t_vpOtherElement
			>
		[[nodiscard]]
		constexpr
		Meta::TypeInstance auto
			operator()
			(	Meta::ValueInfo
				<	t_vInitialElement
				>
			,	Meta::ValueInfo
				<	t_vpOtherElement
				>
				...
			)	const
		{	return
				Meta::T
				<	t_t1SequencePack
					<	t_tElement
					,	t_vInitialElement
					,	t_vpOtherElement
						...
					>
				>
			;
		}
	};

	///	stateless sequence pack template instances
	template
		<	typename
				t_tSequence
		>
	concept
		SequenceInstance
	=	Stateless::Type
		<	t_tSequence
		>
	and	Std::SequencePackTemplateInstance
		<	t_tSequence
		>
	;
}
