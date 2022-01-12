#pragma once

#include <Stateless/Map.hpp>
#include <Stateless/Type.hpp>

#include <Std/FunctionTraits.hpp>
#include <Std/TemplateConcepts.hpp>
#include <Std/Concepts.hpp>
#include <Std/Size.hpp>

#include <tuple>
#include <utility>

namespace
	Stateless
{
	template
		<	Std::USizeType
				t_nIndex
		>
	struct
		IndexType
	{
		/// default constructor
		constexpr
			IndexType
			()
		=	default
		;
		
		/// deduced conversion from a single value
		template
			<	template
					<	auto
					>
				typename
					t_t1Value
			>
		constexpr
			IndexType
			(	t_t1Value
					<	t_nIndex
					>
			)
		{}
	};
	
	template
		<	Std::USizeType
				t_nIndex
		>
	constexpr
	Type auto
		Index
	=	Copy
		<	IndexType
			<	t_nIndex
			>
		>
	;
	
	/// maps an index to a stateless type
	template
		<	Std::USizeType
				t_nIndex
		,	Type
				t_tResult
		>
	struct
		IndexMap
	:	MapToStateless
		<	IndexType
			<	t_nIndex
			>
		,	t_tResult
		>
	{};
	
	template
		<	Std::USizeType
			...	t_npIndex
		,	Type
			...	t_tpResult
		>
		Map
		(	std::index_sequence
			<	t_npIndex
				...
			>
		,	t_tpResult
			...
		)
	->	Map
		<	IndexMap
			<	t_npIndex
			,	t_tpResult
			>
			...
		>
	;
}
