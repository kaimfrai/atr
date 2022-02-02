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
		(	operator<=>
		)	(	MapItemBase const&
			,	MapItemBase<t_tRightKey> const&
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
		,	typename
				t_tResult
		>
	struct
		[[nodiscard]]
		MapToConstant
	:	MapItemBase
		<	t_tKey
		>
	{
		[[no_unique_address]]
		t_tResult
			m_vResult
		{};

		constexpr
		(	MapToConstant
		)	()
		=	default;

		constexpr
		(	MapToConstant
		)	(	t_tResult const
				&	i_rValue
			)
		:	m_vResult
			{	i_rValue
			}
		{}

		///	access the info type by a unique overload of type key
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tKey
			)	const
		{	return
				m_vResult
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
		using t_tpMapItem::operator[]...;

		static Meta::USize constexpr
			MapItemCount
		=	sizeof...(
				t_tpMapItem
			)
		;

		/// default constructor
		constexpr
		(	Map
		)	()
		=	default;

		/// basis for deduction guides
		template
			<	Meta::ProtoClass
				...	t_tpClass
			>
		explicit constexpr
		(	Map
		)	(	Std::PackInstanceOfSize
				<	MapItemCount
				>	auto
			,	t_tpClass const
				&
				...	i_rpValue
			)
		requires
			(	sizeof...(
					t_tpClass
				)
			==	MapItemCount
			)
		:	t_tpMapItem
			{	i_rpValue
			}
			...
		{}
	};
}
