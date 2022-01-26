export module Pack.Size;

export import Pack.Instance;
export import Pack.Type;
export import Pack.Value;
export import Meta.ValueInfo;

export import Stateless.Tuple;
export import Meta.Integer;
export import Std.TemplateTraits;

export import Std;

export namespace
	Pack
{
	///	returns a ValueInfo of the amount of elements packed together
	/// overloaded for other pack types
	[[nodiscard]]
	constexpr
	Meta::SizeInfo auto
		Size
		(	Instance auto
				i_vPack
		)
	{	return
			Meta::V
			<	Std::TemplatePackSize
				<	decltype(
						i_vPack
					)
				>
			>
		;
	}

	///	constrains a pack to a certain size
	template
		<	typename
				t_tPack
		,	Meta::USize
				t_nSize
		>
	concept
		InstanceOfSize
	=	Instance
		<	t_tPack
		>
	and	Size
		(	Stateless::Copy<t_tPack>
		)
	==	Meta::V<t_nSize>
	;

	/// constrains to empty packs
	template
		<	typename
				t_tPack
		>
	concept
		EmptyInstance
	=	InstanceOfSize
		<	t_tPack
		,	0uz
		>
	;

	/// constrains to packs of exactly 1 element
	template
		<	typename
				t_tPack
		>
	concept
		SingleInstance
	=	InstanceOfSize
		<	t_tPack
		,	1uz
		>
	;

	/// constrains to packs of 0 or 1 element
	/// useful for optimization overloads
	template
		<	typename
				t_tPack
		>
	concept
		OptionalInstance
	=	EmptyInstance
		<	t_tPack
		>
	or	SingleInstance
		<	t_tPack
		>
	;

	/// constrains to packs of exactly 2 elements
	template
		<	typename
				t_tPack
		>
	concept
		PairInstance
	=	InstanceOfSize
		<	t_tPack
		,	2uz
		>
	;

	/// the actual value representing the size of the pack
	template
		<	Instance_Transform
			<	Std::Unqualified
			>	t_tPack
		>
	Meta::USize constexpr
		SizeValue
	=	Size
		(	Stateless::Copy
			<	Std::Unqualified
				<	t_tPack
				>
			>
		)
	;

	///	constrains a pack to a certain size
	template
		<	typename
				t_tPackInstanceOfSameSize
		,	typename
				t_tComparePack
		>
	concept
		InstanceOfSameSize
	=	Instance
		<	t_tComparePack
		>
	and	InstanceOfSize
		<	t_tPackInstanceOfSameSize
		,	SizeValue
			<	t_tComparePack
			>
		>
	;
}
