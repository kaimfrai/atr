export module Layout.Concatenate;

export import Layout.DataMember;

export import ID.Modify;
export import ID.Base;

#include <Pack/Instance.hpp>
#include <Pack/Transform.hpp>

export namespace
	Layout
{
	/// prefixes the names of Layout::Config with a string using operator |
	template
		<	typename
				t_tChar
		,	t_tChar
			...	t_vpString
		>
	struct
		Prefix
	:	ID::Extend
		<	t_tChar
		,	t_vpString
			...
		>
	{
		[[nodiscard]]
		friend
		constexpr
		DataMemberInfoInstance auto
			operator|
			(	Prefix
					i_vPrefix
			,	DataMemberInfoInstance auto
					i_vDataMember
			)
		{	return
				DataMemberInfo
				{	i_vPrefix
				+	DataMemberName
					(	i_vDataMember
					)
				,	DataMemberValueType
					(	i_vDataMember
					)
				,	DataMemberDefaultInitializer
					(	i_vDataMember
					)
				,	DataMemberBitAlignment
					(	i_vDataMember
					)
				}
			;
		}

		[[nodiscard]]
		constexpr
		DataMemberInfoInstance auto
			operator()
			(	DataMemberInfoInstance auto
					i_vDataMember
			)	const
		{
			return
				*this
			|	i_vDataMember
			;
		}

		[[nodiscard]]
		friend
		constexpr
		DataMemberPackInstance auto
			operator|
			(	Prefix
					i_vPrefix
			,	DataMemberPackInstance auto
					i_vPack
			)
		{
			return
				Pack::Transform
				(	i_vPack
				,	i_vPrefix
				)
			;
		}
	};

	/// suffixes the names of Layout::Config with a string using operator |
	template
		<	Std::Integral
				t_tChar
		,	t_tChar
			...	t_vpString
		>
	struct
		Suffix
	:	ID::Extend
		<	t_tChar
		,	t_vpString
			...
		>
	{
		friend
		constexpr
		auto
			operator|
			(	DataMemberInfoInstance auto
					i_vDataMember
			,	Suffix
					i_vSuffix
			)
		{	return
				DataMemberInfo
				{	DataMemberName
					(	i_vDataMember
					)
				+	i_vSuffix
				,	DataMemberValueType
					(	i_vDataMember
					)
				,	DataMemberDefaultInitializer
					(	i_vDataMember
					)
				,	DataMemberBitAlignment
					(	i_vDataMember
					)
				}
			;
		}

		[[nodiscard]]
		constexpr
		DataMemberInfoInstance auto
			operator()
			(	DataMemberInfoInstance auto
					i_vDataMember
			)	const
		{	return
				i_vDataMember
			|	*this
			;
		}

		[[nodiscard]]
		friend
		constexpr
		DataMemberPackInstance auto
			operator|
			(	DataMemberPackInstance auto
					i_vPack
			,	Suffix
					i_vSuffix
			)
		{	return
				Pack::Transform
				(	i_vPack
				,	i_vSuffix
				)
			;
		}
	};

	/// accepts a string and converts it to a prefix type
	template
		<	ID::StringLiteral
				t_vString
		>
	using
		PrefixT
	=	ID::MakeT
		<	Prefix
		,	t_vString
		>
	;

	/// accepts a string and converts it to a prefix value
	template
		<	ID::StringLiteral
				t_vString
		>
	constexpr
	Pack::SequenceInstance auto
		PrefixV
	=	ID::MakeV
		<	Prefix
		,	t_vString
		>
	;

	/// accepts a string and converts it to a suffix type
	template
		<	ID::StringLiteral
				t_vString
		>
	using
		SuffixT
	=	ID::MakeT
		<	Suffix
		,	t_vString
		>
	;

	/// accepts a string and converts it to a suffix value
	template
		<	ID::StringLiteral
				t_vString
		>
	constexpr
	Pack::SequenceInstance auto
		SuffixV
	=	ID::MakeV
		<	Suffix
		,	t_vString
		>
	;

	/// creates a prefix that can be applied to Layout::Config using |
	template
		<	ID::StringLiteral
				t_vString
		>
	constexpr
	auto
		operator
		""_pfx
		()
	->	PrefixT
		<	t_vString
		>
	{	return{};	}

	/// creates a suffix that can be applied to Layout::Config using |
	template
		<	ID::StringLiteral
				t_vString
		>
	constexpr
	auto
		operator
		""_sfx
		()
	->	SuffixT
		<	t_vString
		>
	{	return{};	}
}
