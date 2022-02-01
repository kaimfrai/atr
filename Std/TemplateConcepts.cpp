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
		>
	concept
		TypePackInstance
	=	IsTypePackInstance
		<	t_tInstance
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
		>
	concept
		TypePackInstanceOf
	=	TypePackInstance
		<	t_tInstance
		>
	and	IsTypePackInstance
		<	t_tInstance
		>::	template
			Of
			<	t_t1Match
			>
		::	value
	;

	template
		<	typename
				t_tInstance
		>
	concept
		TypePackTemplateInstance
	=	IsTypePackTemplateInstance
		<	t_tInstance
		>::	value
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
	=	TypePackTemplateInstance
		<	t_tInstance
		>
	and	IsTypePackTemplateInstance
		<	t_tInstance
		>::	template
			Of
			<	t_t2Match
			>
		::	value
	;

	template
		<	typename
				t_tInstance
		>
	concept
		ValuePackInstance
	=	IsValuePackInstance
		<	t_tInstance
		>::	value
	;

	template
		<	typename
				t_tInstance
		,	Meta::USize
				t_nSize
		>
	concept
		ValuePackInstanceOfSize
	=	ValuePackInstance
		<	t_tInstance
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
		>
	concept
		ValuePackInstanceOf
	=	ValuePackInstance
		<	t_tInstance
		>
	and	IsValuePackInstance
		<	t_tInstance
		>
	::	template
		Of
		<	t_t1Match
		>
	::	value
	;

	template
		<	typename
				t_tInstance
		>
	concept
		ValuePackTemplateInstance
	=	IsValuePackTemplateInstance
		<	t_tInstance
		>::	value
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
		>
	concept
		ValuePackTemplateInstanceOf
	=	ValuePackTemplateInstance
		<	t_tInstance
		>
	and	IsValuePackTemplateInstance
		<	t_tInstance
		>
::	template
		Of
		<	t_t2Match
		>
	::	value
	;
}
