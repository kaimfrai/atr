export module Function.DataDependencyItem;

export import ID.Data;
export import <Stateless/Map.hpp>;
export import <Stateless/Type.hpp>;
export import <Std/FunctionTraits.hpp>;

export namespace
	Function
{
	/// maps a DataID to a MemberOffset
	template
		<	ID::DataInstance
				t_tDataID
		,	// could be a Layout::MemberOffset
			// or a wrapper around a pointer to member
			Stateless::Type
				t_tMemberOffset
		>
	struct
		DataDependencyItem
	:	Stateless::MapToStateless
		<	t_tDataID
		,	t_tMemberOffset
		>
	{
		constexpr
			DataDependencyItem
			()
		=	default
		;

		constexpr
		explicit
			DataDependencyItem
			(	t_tDataID
			,	t_tMemberOffset
			)
		{}
	};

	/// map items that take a DataID
	template
		<	typename
				t_tMapItem
		>
	concept
		DataDependencyMapItemInstance
	=	Stateless::MapItemInstance
		<	t_tMapItem
		>
	and	ID::DataInstance
		<	typename
			Std::FunctionTraits
			<	&
				t_tMapItem
				::	operator()
			>::	ArgumentType
			::	Single
		>
	;
}
