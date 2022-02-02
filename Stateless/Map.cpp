export module Stateless.Map;

export import Std.TemplateConcepts;
export import Meta.Integer;
export import Meta.Concept.Empty;

export namespace
	Stateless
{
	/// base class for map items which provides ordering on the key
	template
		<	Meta::ProtoStateless
				t_tKey
		>
	struct
		MapItemBase
	{
		static t_tKey constexpr
			KeyValue
		{};

		/// provide ordering according to key
		template
			<	Meta::ProtoStateless
					t_tRightKey
			>
		[[nodiscard]]
		friend auto constexpr
			operator<=>
			(	MapItemBase
			,	MapItemBase
				<	t_tRightKey
				>
			)
		->	decltype
			(	t_tKey{}
			<=>	t_tRightKey{}
			)
		{	return
				t_tKey{}
			<=>	t_tRightKey{}
			;
		}
	};

	/// maps one stateless type to a specific value
	template
		<	Meta::ProtoStateless
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
		<	Meta::ProtoStateless
				t_tKey
		,	Meta::ProtoStateless
				t_tResult
		>
	struct
		[[nodiscard]]
		MapToStateless
	:	MapToConstant
		<	t_tKey
		,	t_tResult{}
		>
	{};

	/// maps one stateless type to a specific lazily evaluated value
	template
		<	Meta::ProtoStateless
				t_tKey
		,	Meta::ProtoStateless
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

	///	bind several StatelessMapItem together
	template
		<	Meta::ProtoClass
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

		static Meta::USize constexpr
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
			<	Meta::ProtoStateless
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
			(	Meta::ProtoStateless auto
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
		<	Meta::ProtoStateless
				t_tDefault
		,	Meta::ProtoClass
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

		static Meta::USize constexpr
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
			(	Meta::ProtoStateless auto
			)	const
		->	t_tDefault
		{	return{};	}

		/// map [] operator to () operator of the items
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	Meta::ProtoStateless auto
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
