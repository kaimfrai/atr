export module Std.TemplateConcepts;

/* provides concepts based on template patterns
 */

export import Std.TemplateTraits;

export import Meta.Integer;

export import Std;

export namespace
	Std
{
	template
		<	typename
				t_tInstance
		,	Meta::USize
				t_nSize
		>
	concept
		PackInstanceOfSize
	=	(	TemplatePackSize
			<	t_tInstance
			>
		==	t_nSize
		)
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		TypePackInstance
	=	IsTypePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
		::	value
	;

	template
		<	typename
				t_tInstance
		,	Meta::USize
				t_nSize
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		TypePackInstanceOfSize
	=	TypePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
	and	PackInstanceOfSize
		<	t_tInstance
		,	t_nSize
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
					...
				>
			typename
				t_t1Match
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		TypePackInstanceOf_Transform
	=	TypePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
	and	IsTypePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>::	template
			Of
			<	t_t1Match
			>
		::	value
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
					...
				>
			typename
				t_t1Match
		>
	concept
		TypePackInstanceOf
	=	TypePackInstanceOf_Transform
		<	t_tInstance
		,	t_t1Match
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		TypePackTemplateInstance_Transform
	=	IsTypePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>::	value
	;

	template
		<	typename
				t_tInstance
		>
	concept
		TypePackTemplateInstance
	=	TypePackTemplateInstance_Transform
		<	t_tInstance
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	template
						<	typename
							...
						>
					typename
				>
			typename
				t_t2Match
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		TypePackTemplateInstanceOf_Transform
	=	TypePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
	and	IsTypePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>::	template
			Of
			<	t_t2Match
			>
		::	value
	;

	template
		<	typename
				t_tInstance
		,	template
				<	template
						<	typename
							...
						>
					typename
				>
			typename
				t_t2Match
		>
	concept
		TypePackTemplateInstanceOf
	=	TypePackTemplateInstanceOf_Transform
		<	t_tInstance
		,	t_t2Match
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		ValuePackInstance_Transform
	=	IsValuePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>::	value
	;

	template
		<	typename
				t_tInstance
		>
	concept
		ValuePackInstance
	=	ValuePackInstance_Transform
		<	t_tInstance
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tInstance
		,	Meta::USize
				t_nSize
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		ValuePackInstanceOfSize
	=	ValuePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
	and	PackInstanceOfSize
		<	t_tInstance
		,	t_nSize
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	auto
					...
				>
			typename
				t_t1Match
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		ValuePackInstanceOf_Transform
	=	ValuePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
	and	IsValuePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>::	template
			Of
			<	t_t1Match
			>
		::	value
	;

	template
		<	typename
				t_tInstance
		,	template
				<	auto
					...
				>
			typename
				t_t1Match
		>
	concept
		ValuePackInstanceOf
	=	ValuePackInstanceOf_Transform
		<	t_tInstance
		,	t_t1Match
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		ValuePackTemplateInstance_Transform
	=	IsValuePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>::	value
	;

	template
		<	typename
				t_tInstance
		>
	concept
		ValuePackTemplateInstance
	=	ValuePackTemplateInstance_Transform
		<	t_tInstance
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	template
						<	auto
							...
						>
					typename
				>
			typename
				t_t2Match
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		ValuePackTemplateInstanceOf
	=	ValuePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
	and	IsValuePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>::	template
			Of
			<	t_t2Match
			>
		::	value
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		SequencePackInstance
	=	IsSequencePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
		::	value
	;

	template
		<	typename
				t_tInstance
		,	Meta::USize
				t_nSize
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		SequencePackInstanceOfSize
	=	SequencePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
	and	PackInstanceOfSize
		<	t_tInstance
		,	t_nSize
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
						t_tElement
				,	t_tElement
					...
				>
			typename
				t_t1Match
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		SequencePackInstanceOf_Transform
	=	SequencePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
	and	IsSequencePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>::	template
			Of
			<	t_t1Match
			>
		::	value
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
						t_tElement
				,	t_tElement
					...
				>
			typename
				t_t1Match
		>
	concept
		SequencePackInstanceOf
	=	SequencePackInstanceOf_Transform
		<	t_tInstance
		,	t_t1Match
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		SequencePackTemplateInstance_Transform
	=	IsSequencePackTemplateInstance
		<	t_t1Transform
				<	t_tInstance
				>
		>
		::	value
	;


	template
		<	typename
				t_tInstance
		>
	concept
		SequencePackTemplateInstance
	=	SequencePackTemplateInstance_Transform
		<	t_tInstance
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tInstance
		,	template
				<	template
						<	typename
								t_tElement
						,	t_tElement
							...
						>
					typename
				>
			typename
				t_t2Match
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		SequencePackTemplateInstanceOf
	=	SequencePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
	and	IsSequencePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>
		::	template
			Of
			<	t_t2Match
			>
		::	value
	;
}
