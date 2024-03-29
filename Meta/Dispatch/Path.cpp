export module Meta.Dispatch.Path;

import Meta.ID;
import Meta.String.Literal;

import Std;

using ::Meta::String::Literal;

export namespace
	Meta::Dispatch
{
	template
		<	typename
				t_tFunction
		,	ProtoID
				t_tID
		>
	struct
		PathID
	{
		using
			FunctionType
		=	t_tFunction
		;

		using
			ID
		=	t_tID
		;
	};

	template
		<	typename
				t_tFunction
		,	Literal
				t_vName
		>
	using
		Path
	=	PathID
		<	t_tFunction
		,	ID<t_vName>
		>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tFunction
		,	Literal
				t_vName
		>
	concept
		ProtoPath
	=	std::same_as
		<	typename
				t_tProto
			::	FunctionType
		,	t_tFunction
		>
	and		::std::string_view
			{	t_vName
				.	Buffer
			}
		.	starts_with
			(	t_tProto
				::	ID
				::	String
			)
	;
}
