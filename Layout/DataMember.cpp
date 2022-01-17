export module Layout.DataMember;

export import Layout.Initializer;
export import ID.Data;
export import Std;

export import Pack.Filter;
export import Pack.Accumulate;
export import Pack.Type;
export import Meta.TypeInfo;
export import Meta.ValueInfo;
export import Std.Concepts;
export import Std.Size;

export namespace
	Layout
{
	/// wraps around a value and provides access to it by a name token
	template
		<	ID::DataInstance
				t_tName
		,	typename
				t_tValue
		>
	struct
		DataMember
	{
		t_tValue
			Value
		;

		[[nodiscard]]
		auto constexpr
			operator[]
			(	t_tName
			)	const
		noexcept
		->	t_tValue const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
			operator[]
			(	t_tName
			)
		noexcept
		->	t_tValue&
		{	return Value;	}
	};

	/// wraps around a value and provides access to it by a name token
	template
		<	ID::DataInstance
				t_tName
		,	Stateless::Type
				t_tValue
		>
	struct
		DataMember
		<	t_tName
		,	t_tValue
		>
	{
		[[nodiscard]]
		auto constexpr
			operator[]
			(	t_tName
			)	const
		noexcept
		->	t_tValue
		{	return t_tValue{};	}
	};

	/// distinct TypeInfo for DataMembers
	template
		<	ID::DataInstance
				t_tName
		,	typename
				t_tValue
		>
	struct
		DataMemberInfo
	:	Meta::TypeInfo
		<	DataMember
			<	t_tName
			,	t_tValue
			>
		>
	{
		static Stateless::Type auto constexpr
			Name
		=	Stateless::Copy<t_tName>
		;
		static Stateless::Type auto constexpr
			ValueType
		=	Meta::T<t_tValue>
		;
		static Stateless::Type auto constexpr
			BitAlignment
		=	Meta::V<alignof(t_tValue) * 8uz>
		;

		/// default constructor
		constexpr
			DataMemberInfo
			()
		=	default
		;

		/// conversion from type info
		constexpr
			DataMemberInfo
			(	Meta::TypeInfo
				<	DataMember
					<	t_tName
					,	t_tValue
					>
				>
			)
		{}

		/// deduce template from arguments
		explicit constexpr
			DataMemberInfo
			(	t_tName
			,	Meta::TypeInfo
				<	t_tValue
				>
			)
		{}
	};

	///	constrains types to be of template DataMember
	template
		<	typename
				t_tDataMemberInstance
		>
	concept
		DataMemberInstance
	=	Std::TypePackInstanceOf
		<	t_tDataMemberInstance
		,	DataMember
		>
	;

	/// function object for accessing DataMemberInstance
	auto constexpr
		IsDataMemberInstance
	=	[]	<	typename
					t_tDataMember
			>()
		{	return
				DataMemberInstance
				<	t_tDataMember
				>
			;
		}
	;

	/// a pack of DataMember
	template
		<	typename
				t_tDataMemberPack
		>
	concept
		DataMemberPackInstance
	=	Pack::TypeInstance
		<	t_tDataMemberPack
		>
	and	Pack::All
		(	Stateless::Copy
			<	t_tDataMemberPack
			>
		,	Meta::StatelessValueInfo
			{	IsDataMemberInstance
			}
		)
	;

	/// a single info object of DataMember
	template
		<	typename
				t_tDataMemberInfo
		>
	concept
		DataMemberInfoInstance
	=	//	implicitly a pack of 1
		DataMemberPackInstance
		<	t_tDataMemberInfo
		>
	and	Meta::TypeInstance
		<	t_tDataMemberInfo
		>
	;

	///	a single info object or a pack of DataMember
	template
		<	typename
				t_tDataMemberInfoInstance
		>
	concept
		Config
	=	DataMemberInfoInstance
		<	t_tDataMemberInfoInstance
		>
	or	DataMemberPackInstance
		<	t_tDataMemberInfoInstance
		>
	;

	template
		<	DataMemberInstance
			...	t_tpDataMember
		>
	struct
		DataMemberPack
	:	Stateless::Tuple
		<	decltype(
				DataMemberInfo
				{	std::declval
					<	t_tpDataMember
					>()
				}
			)
			...
		>
	{};

	/// alias for and info type of a DataMember
	template
		<	ID::StringLiteral
				t_vDataID
		,	typename
				t_tValue
		>
	using
		InfoT
	=	DataMemberInfo
		<	ID::DataT<t_vDataID>
		,	t_tValue
		>
	;

	/// alias for and info type of a DataMember
	template
		<	ID::StringLiteral
				t_vDataID
		,	typename
				t_tValue
		>
	DataMemberInfoInstance auto constexpr
		InfoV
	=	Stateless::Copy
		<	InfoT
			<	t_vDataID
			,	t_tValue
			>
		>
	;

	/// creates an member alias
	template
		<	ID::StringLiteral
				t_vOriginID
		,	ID::StringLiteral
				t_vTargetID
		>
	DataMemberInfoInstance auto constexpr
		Alias
	=	InfoV
		<	t_vOriginID
		,	ID::DataT
			<	t_vTargetID
			>
		>
	;

	/// extracts a ID::DataInstance value from a DataMemberInfo
	Stateless::Type auto constexpr
		DataMemberName
	=	[]	(	DataMemberInfoInstance auto
					i_vDataMemberInfo
			)
		->	ID::DataInstance auto
		{	return
				DataMemberInfo
				{	i_vDataMemberInfo
				}.	Name
			;
		}
	;

	/// extracts the TypeInfo of the value type from a DataMemberInfo
	Stateless::Type auto constexpr
		DataMemberValueType
	=	[]	(	DataMemberInfoInstance auto
					i_vDataMemberInfo
			)
		->	Meta::TypeInstance auto
		{	return
				DataMemberInfo
				{	i_vDataMemberInfo
				}.	ValueType
			;
		}
	;

	/// extracts the BitAlignmentInfoType from a DataMemberInfo value
	Stateless::Type auto constexpr
		DataMemberBitAlignment
	=	[]	(	DataMemberInfoInstance auto
					i_vDataMemberInfo
			)
		->	Meta::SizeInfo auto
		{	return
				DataMemberInfo
				{	i_vDataMemberInfo
				}.	BitAlignment
			;
		}
	;

	/// concatenates two configs
	Config auto constexpr
		operator+
		(	Config auto
				i_vLeft
		,	Config auto
				i_vRight
		)
	{	return
			Pack::Concat
			(	i_vLeft
			,	i_vRight
			)
		;
	}

	///	trims the right config from the left
	Config auto constexpr
		operator-
		(	Config auto
				i_vLeft
		,	Config auto
				i_vRight
		)
	{	return
			Pack::FilterNegative
			(	i_vLeft
			,	Stateless::FrontBinding
				{	Pack::Contains
				,	i_vRight
				}
			)
		;
	}
}
