export module Function.ConstantIDMap;

export import Function.DependencyIDMap;
export import Function.StaticDependency;
export import Function.DataDependencyItem;

#include <ID/Func.hpp>
#include <ID/Data.hpp>
#include <ID/StringLiteral.hpp>

export namespace
	Function
{
	template
		<	typename
				t_tConstant
		,	ID::StringLiteralInstance
				t_tTargetIdentifier
		>
	struct
		ConstantIDMap
	{
		t_tConstant
			Constant
		;

		t_tTargetIdentifier
			TargetID
		;

		constexpr
		explicit
			ConstantIDMap
			(	t_tConstant const
				&	i_rConstant
			,	t_tTargetIdentifier const
				&	i_rTargetID
			)
		:	Constant
			{	i_rConstant
			}
		,	TargetID
			{	i_rTargetID
			}
		{}
	};

	/// intended for CRTP
	template
		<	typename
				t_tConstant
		>
	struct
		ConstantOrigin
	{
		[[nodiscard]]
		friend constexpr
		auto
			operator->*
			(	ConstantOrigin const
				&	i_rConstant
			,	ID::PseudoStringLiteral auto
				&&	i_rTargetID
			)
		{
			return
				ConstantIDMap
				{	static_cast
					<	t_tConstant	const
						&
					>(	i_rConstant
					)
				,	ID::StringLiteral
					{	i_rTargetID
					}
				}
			;
		}
	};

	/// creates an DataDependencyItem from a ConstantIDMap
	template
		<	ConstantIDMap
				t_vConstantIDMap
		>
	constexpr
	auto
		MakeStaticDependencyItem
		()
	{
		constexpr
		auto
			TargetDataID
		=	ID::DataV
			<	t_vConstantIDMap
				.	TargetID
			>
		;

		return
			DataDependencyItem
			{	TargetDataID
			,	t_vConstantIDMap
			.	Constant
			}
		;
	}

	/// creates an FuncDependencyItem from an owner and a FuncIDMap
	template
		<	FuncIDMap
				t_vFuncIDMap
		>
	constexpr
	auto
		MakeStaticDependencyItem
		()
	{
		constexpr
		auto
			TargetFuncID
		=	ID::FuncV
			<	t_vFuncIDMap
				.	TargetID
			>
		;

		constexpr
		auto
			OriginFuncID
		=	ID::FuncV
			<	t_vFuncIDMap
				.	OriginID
			>
		;

		return
			FuncDependencyItem
			{	TargetFuncID
			,	AddressProxy
				{	OriginFuncID
				,	t_vFuncIDMap
					.	ArgumentPack
				}
			}
		;
	}

	template
		<	ID::StringLiteral
				t_vFuncID
		,	auto
			...	t_vpIDMap
		>
	auto constexpr inline
		StaticDependencyInfo
	=	MakeStaticDependencyInfo
		<	t_vFuncID
		>(	MakeStaticDependencyItem
			<	t_vpIDMap
			>()
			...
		)
	;
}
