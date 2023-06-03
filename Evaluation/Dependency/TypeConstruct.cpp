export module Evaluation.Dependency.TypeConstruct;

export import Meta.ID;

using ::Meta::ProtoID;

export
{
	using ::Meta::ID;

	template
		<	ProtoID
				t_tTypeName
		>
	[[nodiscard]]
	auto constexpr
	(	TypeConstruct
	)	()
		noexcept
	->	t_tTypeName
	{	return{};	}
}
