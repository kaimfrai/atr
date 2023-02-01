export module ATR.VirtualArgument;

import ATR.Virtual.Table;

import Meta.ID.Concept;
import Meta.ID.StringLiteral;
import Meta.ID.Alias;
import Meta.Predicate.Trivial;
import Meta.Token.Type;
import Meta.Size;
import Meta.Logic.Constraint;
import Meta.Lex.Tokenizer;

import Std;

export namespace
	ATR
{
	template
		<	typename
				t_tErased
		,	typename
			...	t_tpVirtualItem
		>
	class
		VirtualElement
	{
		Virtual::Table
		<	t_tpVirtualItem
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
			<	Meta::ProtoConstraint<Meta::IsTriviallyCopyable>
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
		constexpr
		(	VirtualElement
		)	(	Meta::TypeToken
				<	t_tObject
				>
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
		:	VTable
			{	Meta::Type<t_tObject&>
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
			<	Meta::ProtoID
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
			,	+ErasedElement
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		template
			<	Meta::ProtoID
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
			,	+ErasedElement
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}
	};

	template
		<	Meta::USize
				t_nMaxSize
		,	Meta::USize
				t_nMaxAlign
		,	typename
			...	t_tpVirtualItem
		>
	using
		VirtualStorage
	=	VirtualElement
		<	::std::aligned_storage_t
			<	t_nMaxSize
			,	t_nMaxAlign
			>
		,	t_tpVirtualItem
			...
		>
	;
}
