export module Meta.Dispatch.BlockedPath;

export import Meta.Dispatch.Path;
import Meta.ID.Concept;

import Std;

export namespace
	Meta::Dispatch
{
	///	Delete the BlockPath function with a concept to enable the dispatch path.
	///	The first deleting makes call invalid.
	///	Any more deletions make the call ambiguous.
	///	Either way, we get SFINAE.
	auto Block(auto) -> void;

	template
		<	typename
		,	ProtoID
		,	typename = void
		>
	struct
		BlockedPath
	:	std::false_type
	{};

	template
		<	typename
				t_tFunction
		,	ProtoID
				t_tString
		>
	struct
		BlockedPath
		<	t_tFunction
		,	t_tString
		,	std::void_t
			<	decltype
				(	Block
					(	PathID
						<	t_tFunction
						,	t_tString
						>{}
					)
				)
			>
		>
	:	std::true_type
	{};

	template
		<	typename
				t_tFunction
		,	ProtoID
				t_tString
		>
	auto constexpr inline
		IsPathBlocked
	=	BlockedPath
		<	t_tFunction
		,	t_tString
		>
	::	value
	;
}
