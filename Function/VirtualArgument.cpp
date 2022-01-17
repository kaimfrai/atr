export module Function.VirtualArgument;

export import Function.Address;
export import Function.Body;
export import ID.Func;
export import Meta.TypeInfo;

export namespace
	Function
{
	template
		<	ID::FuncInstance
				t_tFuncID
		,	typename
				t_tSignature
		,	bool
				t_bNoexcept
		>
	struct
		VirtualItem
	{
		static_assert
			(	Std::Never
				<	t_tFuncID
				,	t_tSignature
				>
			,	"Unexpected specialization failure."
			)
		;
	};

	template
		<	ID::FuncInstance
				t_tFuncID
		,	typename
				t_tReturn
		,	typename
				t_tInitial
		,	typename
			...	t_tpArgument
		,	bool
				t_bNoexcept
		>
	struct
		VirtualItem
		<	t_tFuncID
		,	t_tReturn
				(	t_tInitial
				,	t_tpArgument
					...
				)
		,	t_bNoexcept
		>
	{
		using
			FunctionType
		=	t_tReturn
				(	t_tInitial
				,	t_tpArgument
					...
				)
				noexcept(t_bNoexcept)
		;

		FunctionType
		*	Function
		{};

		template
			<	typename
					t_tObject
			>
		constexpr
		explicit
			VirtualItem
			(	Meta::TypeToken
				<	t_tObject
				>
			)
		:	Function
			{	Address
				<	t_tFuncID
				,	t_tObject
				,	t_tpArgument
					...
				>()
			}
		{}

		constexpr
		auto
			operator()
			(	t_tFuncID
			,	t_tInitial
					i_vInitial
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const
			noexcept(t_bNoexcept)
		->	t_tReturn
		{	return
				Function
				(	std::forward
					<	t_tInitial
					>(	i_vInitial
					)
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
		}
	};

	/// helper alias. builds a function ID type and extracts raw signature and noexcept qualifier
	template
		<	ID::StringLiteral
				t_vFunctionName
		,	Std::Function
				t_tSignature
		>
	using
		Virtual
	=	VirtualItem
		<	ID::FuncT<t_vFunctionName>
		,	typename
			Std::FunctionSignature
				<	t_tSignature
				>
			::	SignatureType
		,	Std::FunctionSignature
				<	t_tSignature
				>
			::	IsNoexcept
				()
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
		constexpr
		explicit
			VirtualTable
			(	Meta::TypeToken
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
			VirtualArgument
			(	t_tObject
				&&	i_rArgument
			)
		:	VTable
			{	Meta::Type<t_tObject>
			}
		,	ErasedArgument
			{	ForwardErased
				(	Meta::Type<t_tObject>
				,	i_rArgument
				)
			}
		{}

		template
			<	ID::FuncInstance
					t_tFuncID
			,	typename
				...	t_tpArgument
			>
		constexpr
		auto
			operator()
			(	t_tFuncID
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
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
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

		t_tErased
			ErasedElement
		;

	public:
		template
			<	Std::TriviallyCopyable
					t_tObject
			,	typename
				...	t_tpArgument
			>
		requires
			Std::ConstructibleFrom
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
			VirtualElement
			(	Meta::TypeToken
				<	t_tObject
				>
			,	t_tpArgument
				&&
				...	i_rArgument
			)
		:	VTable
			{	Meta::Type<t_tObject&>
			}
		{
			new (	&
					ErasedElement
				)
			t_tObject
			{	std::forward
				<	t_tpArgument
				>(	i_rArgument
				)
				...
			};
		}

		template
			<	ID::FuncInstance
					t_tFuncID
			,	typename
				...	t_tpArgument
			>
		constexpr
		auto
			operator()
			(	t_tFuncID
					i_vFuncName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{	return
				VTable
				(	i_vFuncName
				,	&
					ErasedElement
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
		}

		template
			<	ID::FuncInstance
					t_tFuncID
			,	typename
				...	t_tpArgument
			>
		constexpr
		auto
			operator()
			(	t_tFuncID
					i_vFuncName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
		->	decltype(auto)
		{	return
				VTable
				(	i_vFuncName
				,	&
					ErasedElement
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
		}
	};

	template
		<	std::size_t
				t_nMaxSize
		,	std::size_t
				t_nMaxAlign
		,	typename
			...	t_tpVirtualItem
		>
	using
		VirtualStorage
	=	VirtualElement
		<	std::aligned_storage_t
			<	t_nMaxSize
			,	t_nMaxAlign
			>
		,	t_tpVirtualItem
			...
		>
	;
}
