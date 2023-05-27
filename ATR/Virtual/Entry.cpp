export module ATR.Virtual.Entry;

import ATR.Address;
import ATR.Instance;

import Meta.ID;

using ::Meta::ProtoID;

export namespace
	ATR::Virtual
{
	template
		<	ProtoID
		,	typename
		>
	struct
		Entry
	;

	template
		<	typename
				t_tFuncID
		,	typename
				t_tResult
		,	typename
				t_tInitial
		,	typename
			...	t_tpArgument
		>
	struct
		Entry
		<	t_tFuncID
		,	auto
				(	t_tInitial
				,	t_tpArgument
					...
				)
				noexcept
			->	t_tResult
		>
	{
		auto
		(*	Function
		)	(	t_tInitial
			,	t_tpArgument
				...
			)
			noexcept
		->	t_tResult
		{};

		explicit(true) constexpr
		(	Entry
		)	(	ProtoID auto
					i_vTypeName
			)
		requires
			ProtoAddress
			<	t_tFuncID
			,	Instance<decltype(i_vTypeName)>&
			,	t_tpArgument
				...
			>
		:	Function
			{	Address
				<	t_tFuncID
				,	Instance<decltype(i_vTypeName)>&
				,	t_tpArgument
					...
				>
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	Dispatch
		)	(	t_tFuncID
			,	t_tInitial
					i_vInitial
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const
			noexcept
		->	t_tResult
		{	return
			Function
			(	static_cast<t_tInitial>(i_vInitial)
			,	static_cast<t_tpArgument&&>(i_rpArgument)
				...
			);
		}
	};
}
