export module Evaluation.Archetype.ComputeArea;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Archetype.Product;
export import ATR.VirtualArgument;
export import ATR.DependencyIDMap;

export namespace
	Shapes2D
{
	using
		AreaComputer
	=	ATR::VirtualArgument
		<	void const
			*
		,	ATR::Virtual
			<	"ComputeArea"
			,	auto(	void const
						*
					)
				noexcept
				->	Float
			>
		>
	;
}

export namespace
	ATR
{
	template
		<	typename
				t_tShape
		>
	requires
		MemberAccessIDOf
		<	ID_T<"ComputeAreaMultiplier">
		,	t_tShape const&
		>
	and MemberAccessIDOf
		<	ID_T<"Height">
		,	t_tShape const&
		>
	and	MemberAccessIDOf
		<	ID_T<"Width">
		,	t_tShape const&
		>
	auto constexpr
	(	MapAddress
	)	(	ID_T<"ComputeArea">
		,	Meta::TypeToken<t_tShape> const&
		)
	{	return
		&Signature
		<	StaticDependency<"Product">
		,	ArgumentDependency
			<	t_tShape const
				&
			,	MapID
				(	"ComputeAreaMultiplier"_id
				,	"a"_id
				)
			,	MapID
				(	"Height"_id
				,	"b"_id
				)
			,	MapID
				(	"Width"_id
				,	"c"_id
				)
			>
		>;
	}
}


