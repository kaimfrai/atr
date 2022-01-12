#pragma once

/* provides concepts based on template patterns
 */

#include <Std/TemplateTraits.hpp>

#include <Std/Size.hpp>

#include <type_traits>

namespace
	Std
{
	template
		<	typename
				t_tInstance
		,	USizeType
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
		,	USizeType
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
			=	std::type_identity_t
		>
	concept
		TypePackInstanceOf
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
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		TypePackTemplateInstance
	=	IsTypePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
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
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		TypePackTemplateInstanceOf
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
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		ValuePackInstance
	=	IsValuePackInstance
		<	t_t1Transform
			<	t_tInstance
			>
		>::	value
	;
	
	template
		<	typename
				t_tInstance
		,	USizeType
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
			=	std::type_identity_t
		>
	concept
		ValuePackInstanceOf
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
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		ValuePackTemplateInstance
	=	IsValuePackTemplateInstance
		<	t_t1Transform
			<	t_tInstance
			>
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
		,	USizeType
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
			=	std::type_identity_t
		>
	concept
		SequencePackInstanceOf
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
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		SequencePackTemplateInstance
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
