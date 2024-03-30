export module ATR.Dependency;

import Meta.Size;
import Meta.String.Hash;

import Std;

using ::Meta::SSize;
using ::Meta::String::ImplicitHash;

export namespace
	ATR
{
	template
		<	ImplicitHash
				t_vFunctionName
		,	auto
			...	t_vpGlobalDependency
		>
	struct
		GlobalDependency
	{};

	template
		<	typename
				t_tArgument
		,	auto
			...	t_vpArgumentDependency
		>
	struct
		Dependency
	:	t_tArgument
	{
		using
			ArgumentType
		=	t_tArgument
		;

		using
			t_tArgument
		::	operator[]
		;

		[[nodiscard]]
		auto static constexpr inline
		(	ssize
		)	()
			noexcept
		->	SSize
		{	return
			::std::max
			({	0z
			,	MinByteExtent
				(	t_vpArgumentDependency
				)
				...
			});
		}
	};
}
