export module Meta.TypeInfo;

export import Std;

export import Stateless.Type;
export import Std.Concepts;
export import Std.TypeTraits;

export namespace
	Meta
{
	///	wraps around a single type
	///	used to access information about that type
	template
		<	typename
				t_tAny
		>
	struct
		[[nodiscard]]
		TypeInfo
	{
		using
			Type
		=	t_tAny
		;
		
		static constexpr
		Std::USizeType
			ByteSize
			=	Std::ByteSizeOf
				<	Type
				>
		;
		
		static constexpr
		Std::USizeType
			BitSize
			=	Std::BitSizeOf
				<	Type
				>
		;
		
		static constexpr
		Std::USizeType
			ByteAlign
			=	Std::ByteAlignOf
				<	Type
				>
		;
		
		static constexpr
		Std::USizeType
			BitAlign
			=	Std::BitAlignOf
				<	Type
				>
		;
		
		/// forwards to std::declval
		static
		constexpr
		auto
			DeclVal
			()
		noexcept
		->	decltype(auto)
		{	return
				std::declval
				<	t_tAny
				>()
			;
		}
	
		///	works effectively like a constructor
		template
			<	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	t_tpArgument
				&&
				...	i_rpArgument
			)	const
		->	t_tAny
		requires
			Std::ConstructibleFrom
			<	t_tAny
			,	t_tpArgument
				...
			>
		{	return
				t_tAny
				{	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				}
			;
		}
	};
	
	///	stateless types derived from TypeInfo
	template
		<	typename
				t_tTypeInstance
		>
	concept
		TypeInstance
	=	Stateless::Type
		<	t_tTypeInstance
		>
	and	/// copy constructs TypeInfo -> unambiguously derived from TypeInfo
		Std::ConvertibleToTypePackInstance
		<	t_tTypeInstance
		,	TypeInfo
		>
	;
	
	///	frequently used shortcut to create an object of type TypeInfo
	template
		<	typename
				t_tAny
		>
	constexpr
	TypeInstance auto
		T
	=	Stateless::Copy
		<	TypeInfo
			<	t_tAny
			>
		>
	;
	
	///	deduce type from argument type
	constexpr
	Stateless::Type auto
		GetTypeInfoFor
	=	[]	(	auto
					i_vAny
			)
		->	TypeInfo
			<	decltype(
					i_vAny
				)
			>
		{	return{};	}
	;
	
	/// ordering on TypeInfo of stateless types defined by their respective ordering
	template
		<	Stateless::Type
				t_tLeft
		,	Stateless::Type
				t_tRight
		>
	constexpr
	auto
		operator<=>
		(	TypeInfo
			<	t_tLeft
			>
		,	TypeInfo
			<	t_tRight
			>
		)
	{	return
			Stateless::Copy<t_tLeft>
		<=>	Stateless::Copy<t_tRight>
		;
	}
}
