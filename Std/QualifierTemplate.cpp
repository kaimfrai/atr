export module Std.QualifierTemplate;

export import Std;

export namespace
	Std
{
	/// Deduce a template that adds or removes all qualifiers of a type to another type
	template
		<	typename
				t_tInstance
		>
	struct
		Qualifier
	{
		template
			<	typename
					t_tUnqualified
			>
		using
			Add
		=	std::type_identity_t
			<	t_tUnqualified
			>
		;

		template
			<	typename
					t_tQualified
			>
		using
			Remove
		=	std::type_identity_t
			<	t_tQualified
			>
		;
	};

	template
		<	typename
				t_tInstance
		>
	struct
		Qualifier
		<	t_tInstance
			const
		>
	{
		template
			<	typename
					t_tUnqualified
			>
		using
			Add
		=	std::add_const_t
			<	t_tUnqualified
			>
		;

		template
			<	typename
					t_tQualified
			>
		using
			Remove
		=	std::remove_const_t
			<	t_tQualified
			>
		;
	};

	template
		<	typename
				t_tInstance
		>
	struct
		Qualifier
		<	t_tInstance
			volatile
		>
	{
		template
			<	typename
					t_tUnqualified
			>
		using
			Add
		=	std::add_volatile_t
			<	t_tUnqualified
			>
		;

		template
			<	typename
					t_tQualified
			>
		using
			Remove
		=	std::remove_volatile_t
			<	t_tQualified
			>
		;
	};

	template
		<	typename
				t_tInstance
		>
	struct
		Qualifier
		<	t_tInstance
			const volatile
		>
	{
		template
			<	typename
					t_tUnqualified
			>
		using
			Add
		=	std::add_cv_t
			<	t_tUnqualified
			>
		;

		template
			<	typename
					t_tQualified
			>
		using
			Remove
		=	std::remove_cv_t
			<	t_tQualified
			>
		;
	};

	template
		<	typename
				t_tInstance
		>
	struct
		Qualifier
		<	t_tInstance
			&
		>
	{
		template
			<	typename
					t_tUnqualified
			>
		using
			Add
		=	std::add_lvalue_reference_t
			<	typename
				Qualifier
				<	t_tInstance
				>::	template
					Add
					<	t_tUnqualified
					>
			>
		;

		template
			<	typename
					t_tQualified
			>
		using
			Remove
		=	typename
			Qualifier
			<	t_tInstance
			>::	template
				Remove
				<	std::remove_reference_t
					<	t_tQualified
					>
				>
		;
	};

	template
		<	typename
				t_tInstance
		>
	struct
		Qualifier
		<	t_tInstance
			&&
		>
	{
		template
			<	typename
					t_tUnqualified
			>
		using
			Add
			=	std::add_rvalue_reference_t
				<	typename
					Qualifier
					<	t_tInstance
					>::	template
						Template
						<	t_tUnqualified
						>
				>
		;

		template
			<	typename
					t_tQualified
			>
		using
			Remove
		=	typename
			Qualifier
			<	t_tInstance
			>::	template
				Remove
				<	std::remove_reference_t
					<	t_tQualified
					>
				>
		;
	};

	/// discards reference qualifiers
	template
		<	typename
				t_tInstance
		>
	using
		CVQualifier
	=	Qualifier
		<	std::remove_reference_t
			<	t_tInstance
			>
		>
	;

	/// applies the cv qualifiers of source to destination
	template
		<	typename
				t_tSource
		,	typename
				t_tDestination
		>
	using
		ApplyCVQualifier
	=	typename
		CVQualifier
		<	t_tSource
		>::	template
			Add
			<	t_tDestination
			>
	;
}
