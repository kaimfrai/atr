export module ATR:VirtualArgument;

export import :Address;

import Meta.ID.Concept;
import Meta.ID.StringLiteral;
import Meta.ID.Alias;
export import Meta.Predicate;
import Meta.Token.Type;
import Meta.Size;
import Meta.Logic.Constraint;

import Std;

export namespace
	ATR
{
	template
		<	Meta::ProtoID
				t_tFuncID
		,	typename
				t_tSignature
		>
	struct
		VirtualItem
	;

	template
		<	Meta::ProtoID
				t_tFuncID
		,	typename
				t_tReturn
		,	typename
				t_tInitial
		,	typename
			...	t_tpArgument
		>
	struct
		VirtualItem
		<	t_tFuncID
		,	t_tReturn
				(	t_tInitial
				,	t_tpArgument
					...
				)
		>
	{
		using
			FunctionType
		=	t_tReturn
				(	t_tInitial
				,	t_tpArgument
					...
				)
		;

		FunctionType
		*	Function
		{};

		template
			<	typename
					t_tObject
			>
		explicit constexpr
		(	VirtualItem
		)	(	Meta::TypeToken
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

		auto constexpr
		(	operator()
		)	(	t_tFuncID
			,	t_tInitial
					i_vInitial
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const
		->	t_tReturn
		{	return
			Function
			(	::std::forward
				<	t_tInitial
				>(	i_vInitial
				)
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}
	};

	template
		<	Meta::ProtoID
				t_tFuncID
		,	typename
				t_tReturn
		,	typename
				t_tInitial
		,	typename
			...	t_tpArgument
		>
	struct
		VirtualItem
		<	t_tFuncID
		,	t_tReturn
				(	t_tInitial
				,	t_tpArgument
					...
				)
				noexcept
		>
	{
		using
			FunctionType
		=	t_tReturn
				(	t_tInitial
				,	t_tpArgument
					...
				)
				noexcept
		;

		FunctionType
		*	Function
		{};

		template
			<	typename
					t_tObject
			>
		explicit constexpr
		(	VirtualItem
		)	(	Meta::TypeToken
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
		->	t_tReturn
		{	return
			Function
			(	::std::forward
				<	t_tInitial
				>(	i_vInitial
				)
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}
	};

	/// helper alias. builds a function ID type and extracts raw signature and noexcept qualifier
	template
		<	Meta::StringLiteral
				t_vFunctionName
		,	typename
				t_tSignature
		>
	using
		Virtual
	=	VirtualItem
		<	Meta::ID_T<t_vFunctionName>
		,	t_tSignature
		>
	;

	template
		<	typename
			...	t_tpVirtualItem
		>
	struct
		VirtualTable
	:	t_tpVirtualItem
		...
	{
		using
			t_tpVirtualItem
			::	operator()
			...
		;

		template
			<	typename
					t_tObject
			>
		explicit constexpr
		(	VirtualTable
		)	(	Meta::TypeToken
				<	t_tObject
				>	i_vObjectType
			)
		:	t_tpVirtualItem
			{	i_vObjectType
			}
			...
		{}
	};

	template
		<	typename
				t_tErased
		,	typename
			...	t_tpVirtualItem
		>
	class
		VirtualArgument
	{
		VirtualTable
		<	t_tpVirtualItem
			...
		> VTable
		;

		t_tErased
			ErasedArgument
		;
	public:
		template
			<	typename
					t_tObject
			>
		constexpr
		(	VirtualArgument
		)	(	t_tObject
				&&	i_rArgument
			)
		:	VTable
			{	Meta::Type<t_tObject>
			}
		,	ErasedArgument
			{	ForwardErased
				(	Meta::TokenizeEntity<t_tObject>{}
				,	i_rArgument
				)
			}
		{}

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
			,	ErasedArgument
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}
	};

	template
		<	typename
				t_tErased
		,	typename
			...	t_tpVirtualItem
		>
	class
		VirtualElement
	{
		VirtualTable
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
