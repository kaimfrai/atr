export module Stateless.Map;

export import Stateless.Type;

export import Std.TemplateConcepts;
export import Std.Concepts;
export import Std.FunctionTraits;

export import Std.Size;

export namespace
	Stateless
{
	/// base class for map items which provides ordering on the key
	template
		<	Type
				t_tKey
		>
	struct
		MapItemBase
	{
		static constexpr
		t_tKey
			KeyValue
		{};

		/// provide ordering according to key
		template
			<	Type
					t_tRightKey
			>
		[[nodiscard]]
		friend
		constexpr
		auto
			operator<=>
			(	MapItemBase
			,	MapItemBase
				<	t_tRightKey
				>
			)
		{	return
				Copy<t_tKey>
			<=>	Copy<t_tRightKey>
			;
		}
	};

	/// maps one stateless type to a specific value
	template
		<	Type
				t_tKey
		,	auto
				t_vResult
		>
	struct
		[[nodiscard]]
		MapToConstant
	:	MapItemBase
		<	t_tKey
		>
	{
		///	access the info type by a unique overload of type key
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	t_tKey
			)	const
		{	return
				t_vResult
			;
		}
	};

	/// maps one stateless type to another
	template
		<	Type
				t_tKey
		,	Type
				t_tResult
		>
	struct
		[[nodiscard]]
		MapToStateless
	:	MapToConstant
		<	t_tKey
		,	Copy<t_tResult>
		>
	{};

	/// maps one stateless type to a specific lazily evaluated value
	template
		<	Type
				t_tKey
		,	Type
				t_tLazy
		>
	struct
		[[nodiscard]]
		MapToLazy
	:	MapToStateless
		<	t_tKey
		,	t_tLazy
		>
	{
		///	access the info type by a unique overload of type key
		/// hides previously defined operator()
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	t_tKey
					i_vKey
			)	const
		{	return
				MapToStateless
				<	t_tKey
				,	t_tLazy
				>::operator()
				(	i_vKey
				)
				// invoke the result once more
				()
			;
		}
	};

	/// types that maps a stateless argument to a specific value using a single non-overloaded operator()
	template
		<	typename
				t_tStatelessMapItem
		>
	concept
		MapItemInstance
	=	Type
		<	typename
			Std::FunctionTraits
			<	&
				t_tStatelessMapItem
				::	operator()
			>::	ArgumentType
			::	Single
		>
	;

	///	bind several StatelessMapItem together
	template
		<	MapItemInstance
			...	t_tpMapItem
		>
	struct
		[[nodiscard]]
		Map
	:	t_tpMapItem
		...
	{
		///	bring all () operators into scope
		using
			t_tpMapItem
			::	operator()
			...
		;

		static
		constexpr
		Std::USizeType
			MapItemCount
		=	sizeof...(
				t_tpMapItem
			)
		;

		/// default constructor
		constexpr
			Map
			()
		=	default
		;

		/// basis for deduction guides
		constexpr
		explicit
			Map
			(	Std::PackInstanceOfSize
				<	MapItemCount
				>	auto
			,	Std::PackInstanceOfSize
				<	MapItemCount
				>	auto
			)
		{}

		/// basis for deduction guides
		template
			<	Type
				...	t_tpStateless
			>
		constexpr
		explicit
			Map
			(	Std::PackInstanceOfSize
				<	MapItemCount
				>	auto
			,	t_tpStateless
				...
			)
		requires
			(	sizeof...(
					t_tpStateless
				)
			==	MapItemCount
			)
		{}

		/// map [] operator to () operator of the items
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	Type auto
					i_vKey
			)	const
		->	decltype(auto)
		{	return
				operator()
					(	i_vKey
					)
			;
		}
	};

	/// maps every call that isn't mapped to a default value
	template
		<	Type
				t_tDefault
		,	MapItemInstance
			...	t_tpMapItem
		>
	struct
		[[nodiscard]]
		DefaultingMap
	:	t_tpMapItem
		...
	{
		///	bring all () operators into scope
		using
			t_tpMapItem
			::	operator()
			...
		;

		static
		constexpr
		Std::USizeType
			MapItemCount
			=	sizeof...(
					t_tpMapItem
				)
		;

		/// default constructor
		constexpr
			DefaultingMap
				()
		=	default
		;

		/// deduce template from arguments
		constexpr
		explicit
			DefaultingMap
			(	t_tDefault
			,	Map
				<	t_tpMapItem
					...
				>
			)
		{}

		/// fallback overload that always returns the default value
		constexpr
		auto
			operator()
			(	Type auto
			)	const
		->	t_tDefault
		{	return{};	}

		/// map [] operator to () operator of the items
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	Type auto
					i_vKey
			)	const
		->	decltype(auto)
		{
			return
				operator()
				(	i_vKey
				)
			;
		}
	};
}
