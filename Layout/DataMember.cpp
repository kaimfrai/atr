export module Layout.DataMember;

export import Layout.Initializer;
export import Std;

#include <Pack/Filter.hpp>
#include <Pack/Accumulate.hpp>
#include <Pack/Type.hpp>
#include <Meta/TypeInfo.hpp>
#include <Meta/ValueInfo.hpp>
#include <Std/Concepts.hpp>

#include <ID/Data.hpp>
#include <Std/Size.hpp>

export namespace
	Layout
{
	template
		<	Std::USizeType
				t_tBitCount
		>
	struct
		alignas(
			//	bring bit alignment of 1 back to byte alignment of 1
			Std::BytesForBits
			(	t_tBitCount
			)
		)
		BitAlignment
	:	Meta::ValueInfo
		<	t_tBitCount
		>
	{};

	template<>
	struct
		BitAlignment
		<	0_uz
		>
	:	Meta::ValueInfo
		<	0_uz
		>
	{};

	template
		<	typename
				t_tBitAlignment
		>
	concept
		BitAlignmentType
	=	Std::ValuePackInstanceOf
		<	t_tBitAlignment
		,	BitAlignment
		>
	;

	/// wraps around a value and provides access to it by a name token
	template
		<	ID::DataInstance
				t_tName
		,	typename
				t_tValue
		,	DataMemberInitializerFor
			<	t_tValue
			>	t_tDefaultInitializer
		,	BitAlignmentType
				t_tBitAlignmentInfo
		>
	struct
		alignas(t_tBitAlignmentInfo)
		DataMember
	{
		t_tValue
			Value
		{	t_tDefaultInitializer
			{}
		};

		/// access the value const
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	t_tName
			)	const
		noexcept
		->	t_tValue const
			&
		{	return
				Value
			;
		}

		/// access the value non-const
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	t_tName
			)
		noexcept
		->	t_tValue
			&
		{	return
				Value
			;
		}
	};

	/// specialization for const that stores a mutable value but does not expose the non-const [] operator
	template
		<	ID::DataInstance
				t_tName
		,	Std::Object
				t_tValue
		,	DataMemberInitializerFor
			<	t_tValue
			>
				t_tDefaultInitializer
		,	Meta::SizeInfo
				t_tBitAlignmentInfo
		>
	struct
		alignas(t_tBitAlignmentInfo)
		DataMember
		<	t_tName
		,	t_tValue const
		,	t_tDefaultInitializer
		,	t_tBitAlignmentInfo
		>
	{
		t_tValue
			Value
		{	t_tDefaultInitializer
			::	Value
		};

		/// access the value const
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	t_tName
			)	const
		noexcept
		->	t_tValue const
			&
		{	return
				Value
			;
		}
	};

	// no specialization for const AND vacuous initializer, as the value should be assigned to
	template
		<	ID::DataInstance
				t_tName
		,	Std::Object
				t_tValue
		,	Meta::SizeInfo
				t_tBitAlignmentInfo
		>
	struct
		DataMember
		<	t_tName
		,	t_tValue const
		,	VacuousInitializerTag
		,	t_tBitAlignmentInfo
		>
	{
		static_assert
			(	Std::Never<DataMember>
			,	"A DataMember of constant type should not have a vacuous initializer."
			)
		;
	};

	/// specialization for vacuous initializer
	template
		<	ID::DataInstance
				t_tName
		,	Std::Object
				t_tValue
		,	Meta::SizeInfo
				t_tBitAlignmentInfo
		>
	struct
		alignas(t_tBitAlignmentInfo)
		DataMember
		<	t_tName
		,	t_tValue
		,	VacuousInitializerTag
		,	t_tBitAlignmentInfo
		>
	{
		t_tValue
			Value
		;

		/// access the value const
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	t_tName
			)	const
		noexcept
		->	t_tValue const
			&
		{	return
				Value
			;
		}

		/// access the value non-const
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	t_tName
			)
		noexcept
		->	t_tValue
			&
		{	return
				Value
			;
		}
	};

	/// specialization for vacuous initializer
	template
		<	ID::DataInstance
				t_tName
		,	typename
				t_tValue
		>
	struct
		DataMember
		<	t_tName
		,	t_tValue
		,	VacuousInitializerTag
		,	BitAlignment<0_uz>
		>
	{
		static_assert
			(	not
				std::is_const_v
				<	t_tValue
				>
			and	not
				std::is_volatile_v
				<	t_tValue
				>
			,	"Empty members should not be cv qualified!"
			)
		;

		/// access the value const
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	t_tName
			)	const
		noexcept
		->	t_tValue
		{
			if constexpr
				(	not
					Std::SameAs
					<	t_tValue
					,	void
					>
				)
			{
				return
					t_tValue
					{}
				;
			}
		}
	};

	/// distinct TypeInfo for DataMembers
	template
		<	ID::DataInstance
				t_tName
		,	typename
				t_tValue
		,	DataMemberInitializerFor
			<	t_tValue
			>
				t_tDefaultInitializer
		,	BitAlignmentType
				t_tBitAlignment
		>
	struct
		DataMemberInfo
		:	Meta::TypeInfo
			<	DataMember
				<	t_tName
				,	t_tValue
				,	t_tDefaultInitializer
				,	t_tBitAlignment
				>
			>
	{
		static
		constexpr
		Stateless::Type auto
			Name
		=	Stateless::Copy<t_tName>
		;
		static
		constexpr
		Stateless::Type auto
			ValueType
		=	Meta::T<t_tValue>
		;
		static
		constexpr
		Stateless::Type auto
			DefaultInitializer
		=	Stateless::Copy<t_tDefaultInitializer>
		;
		static
		constexpr
		Stateless::Type auto
			BitAlignment
		=	Stateless::Copy<t_tBitAlignment>
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
					,	t_tDefaultInitializer
					,	t_tBitAlignment
					>
				>
			)
		{}

		/// deduce template from arguments
		constexpr
		explicit
			DataMemberInfo
			(	t_tName
			,	Meta::TypeInfo
				<	t_tValue
				>
			,	t_tDefaultInitializer
			,	t_tBitAlignment
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
	constexpr
	auto
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
		,	DataMemberInitializerFor
			<	t_tValue
			>	auto
				t_vDefaultInitializer
			=	VacuousInitializer
		,	Std::USizeType
				t_vBitAlignment
			=	Std::BitAlignOf
				<	t_tValue
				>
		>
	using
		InfoT
	=	DataMemberInfo
		<	ID::DataT<t_vDataID>
		,	t_tValue
		,	InitializerType
			<	t_vDefaultInitializer
			>
		,	BitAlignment
			<	t_vBitAlignment
			>
		>
	;

	/// alias for and info type of a DataMember
	template
		<	ID::StringLiteral
				t_vDataID
		,	typename
				t_tValue
		>
	constexpr
	DataMemberInfoInstance auto
		InfoV
	=	Stateless::Copy
		<	InfoT
			<	t_vDataID
			,	t_tValue
			,	VacuousInitializer
			,	Std::BitAlignOf
				<	t_tValue
				>
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
	constexpr
	DataMemberInfoInstance auto
		Alias
	=	InfoV
		<	t_vOriginID
		,	ID::DataT
			<	t_vTargetID
			>
		>
	;

	/// extracts a ID::DataInstance value from a DataMemberInfo
	constexpr
	Stateless::Type auto
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
	constexpr
	Stateless::Type auto
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

	/// extracts the DefaultInitializer from a DataMemberInfo value
	constexpr
	Stateless::Type auto
		DataMemberDefaultInitializer
	=	[]	(	DataMemberInfoInstance auto
					i_vDataMemberInfo
			)
		->	Stateless::Type auto
		{	return
				DataMemberInfo
				{	i_vDataMemberInfo
				}.	DefaultInitializer
			;
		}
	;

	/// extracts the BitAlignmentInfoType from a DataMemberInfo value
	constexpr
	Stateless::Type auto
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
	constexpr
	Config auto
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
	constexpr
	Config auto
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
