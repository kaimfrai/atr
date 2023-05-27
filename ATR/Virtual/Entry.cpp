export module ATR.Virtual.Entry;

import ATR.Address;

import Meta.ID;
import Meta.Token.Type;

using ::Meta::TypeToken;
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

		template
			<	typename
					t_tObject
			>
		explicit(true) constexpr
		(	Entry
		)	(	TypeToken
				<	t_tObject
				>
			)
		requires
			ProtoAddress
			<	t_tFuncID
			,	t_tObject
			,	t_tpArgument
				...
			>
		:	Function
			{	Address
				<	t_tFuncID
				,	t_tObject
				,	t_tpArgument
					...
				>
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	operator()
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
			->	t_tResult
		>
	{
		auto
		(*	Function
		)	(	t_tInitial
			,	t_tpArgument
				...
			)
		->	t_tResult
		{};

		template
			<	typename
					t_tObject
			>
		explicit(true) constexpr
		(	Entry
		)	(	TypeToken
				<	t_tObject
				>
			)
		requires
			ProtoAddress
			<	t_tFuncID
			,	t_tObject
			,	t_tpArgument
				...
			>
		:	Function
			{	Address
				<	t_tFuncID
				,	t_tObject
				,	t_tpArgument
					...
				>
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	t_tFuncID
			,	t_tInitial
					i_vInitial
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const
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
