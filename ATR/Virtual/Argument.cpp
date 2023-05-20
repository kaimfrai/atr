export module ATR.Virtual.Argument;

import ATR.Virtual.Table;
import ATR.Erase;

import Meta.Token.Type;
import Meta.ID;

import Std;

using ::Meta::ProtoID;
using ::Meta::Type;

export namespace
	ATR::Virtual
{
	template
		<	typename
				t_tErased
		,	typename
			...	t_tpVirtualItem
		>
	class
		Argument
	{
		Table
		<	t_tpVirtualItem
			...
		>	m_vTable
		;

		t_tErased
			m_vErasedArgument
		;
	public:
		template
			<	typename
					t_tObject
			>
		explicit(false) constexpr
		(	Argument
		)	(	t_tObject
				&&	i_rArgument
			)
		:	m_vTable
			{	Type<t_tObject>
			}
		,	m_vErasedArgument
			{	ForwardErased
				(	i_rArgument
				)
			}
		{}

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
			m_vTable
			(	i_vFuncName
			,	m_vErasedArgument
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}
	};
}
