export module ATR.Virtual.Element;

import ATR.Virtual.Table;

import Meta.Predicate.Trivial;
import Meta.Logic.Constraint;
import Meta.Token.Type;
import Meta.String.Concept;

import Std;

using ::Meta::ProtoID;
using ::Meta::TypeToken;
using ::Meta::Type;
using ::Meta::ProtoConstraint;
using ::Meta::IsTriviallyCopyable;

export namespace
	ATR::Virtual
{
	template
		<	typename
				t_tErased
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

		alignas(t_tErased)
			::std::byte
			ErasedElement
			[	sizeof(t_tErased)
			]
		;

	public:
		template
			<	ProtoConstraint<IsTriviallyCopyable>
					t_tObject
			,	typename
				...	t_tpArgument
			>
		requires
			::std::constructible_from
			<	t_tObject
			,	t_tpArgument
				...
			>
		and	(	sizeof(t_tObject)
			<=	sizeof(t_tErased)
			)
		and	(	alignof(t_tObject)
			<=	alignof(t_tErased)
			)
		explicit(false) constexpr
		(	Element
		)	(	TypeToken
				<	t_tObject
				>
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
		:	VTable
			{	Type<t_tObject&>
			}
		{
			new (	+ErasedElement
				)
			t_tObject
			{	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			};
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
