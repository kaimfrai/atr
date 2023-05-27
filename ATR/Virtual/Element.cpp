export module ATR.Virtual.Element;

import ATR.Instance;
import ATR.Virtual.Table;

import Meta.ID;
import Meta.Token.Type;

import Std;

using ::Meta::ProtoID;
using ::Meta::TypeToken;

export namespace
	ATR::Virtual
{
	template
		<	::std::size_t
				t_vMaxSize
		,	::std::size_t
				t_vMaxAlign
		,	typename
			...	t_tpEntry
		>
	class
		Element
	{
		Table
		<	t_tpEntry
			...
		>	VTable
		;

		alignas(t_vMaxAlign)
		::std::byte
			ErasedElement
			[	sizeof(t_vMaxSize)
			]
		;

	public:
		template
			<	ProtoID
					t_tTypeName
			>
		explicit(false) constexpr
		(	Element
		)	(	TypeToken
				<	Instance<t_tTypeName>
				>
			)
		requires
			(	sizeof(Instance<t_tTypeName>) <= t_vMaxSize
			and	alignof(Instance<t_tTypeName>) <= t_vMaxAlign
			)
		:	VTable
			{	::Meta::Type<Instance<t_tTypeName>&>
			}
		{
			new (	+ErasedElement
				)
			Instance<t_tTypeName>
			{};
		}

		template
			<	ProtoID
					t_tFuncID
			,	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tFuncID
					i_vFuncName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{	return
			VTable
			(	i_vFuncName
			,	ErasedElement
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		template
			<	ProtoID
					t_tFuncID
			,	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tFuncID
					i_vFuncName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
		->	decltype(auto)
		{	return
			VTable
			(	i_vFuncName
			,	ErasedElement
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}
	};
}
