export module Layout.Initializer;

#include <Meta/ValueInfo.hpp>
#include <Std/Concepts.hpp>

export namespace
	Layout
{
	/// initialization indicator to not use an explicit initializer
	constexpr
	struct
		VacuousInitializerTag
	{
		using
			ValueType
		=	VacuousInitializerTag
		;
	}	VacuousInitializer
	{};
	
	/// initialization indicator to use a zero value
	constexpr
	struct
		ZeroInitializerTag
	{
		using
			ValueType
		=	ZeroInitializerTag
		;
		
		template
			<	Std::DefaultConstructible
					t_tObject
			>
		constexpr
			operator
			t_tObject
			()
		noexcept
		{	return
				t_tObject
				{}
			;
		}
	}	ZeroInitializer
	{};
	
	template
		<	auto
				t_vInitializer
		>
	struct
		ValueInitializer
	:	Meta::ValueInfo
		<	t_vInitializer
		>
	{};
	
	/// defines what can be used for a data member initializer of a specific type
	template
		<	typename
				t_tInitializer
		,	typename
				t_tTarget
		>
	concept
		DataMemberInitializerFor
	=	Std::SameAs
		<	t_tInitializer
		,	VacuousInitializerTag
		>
	or	Std::ConstructibleFrom
		<	t_tTarget
		,	t_tInitializer
		>
	;
	
	/// wraps an initializer value into a ValueInfo type
	template
		<	auto
				t_vInitializer
		>
	struct
		InitializerToType
	:	std::type_identity
		<	ValueInitializer
			<	t_vInitializer
			>
		>
	{};
	
	/// a VacuousInitializer does not need to be wrapped
	template
		<>
	struct
		InitializerToType
		<	VacuousInitializer
		>
	:	std::type_identity
		<	VacuousInitializerTag
		>
	{
		using
			Type
		=	VacuousInitializerTag
		;
	};
	
	/// a ZeroInitializer does not need to be wrapped
	template
		<>
	struct
		InitializerToType
		<	ZeroInitializer
		>
	:	std::type_identity
		<	ZeroInitializerTag
		>
	{};
	
	/// the appropriate type for the initializer value
	template
		<	auto
				t_vInitializer
		>
	using
		InitializerType
	=	typename
		InitializerToType
		<	t_vInitializer
		>::	type
	;
}
