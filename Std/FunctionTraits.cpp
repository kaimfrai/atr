export module Std.FunctionTraits;

import Std;

export namespace
	Std
{
	enum class
		EFunctionQualifier
	:	std::uint8_t
		{	None		= 0
		,	Const 		= 1
		,	Volatile 	= Const << 1
		,	Value		= Volatile << 1
		,	LRef		= Value << 1
		,	RRef		= LRef << 1
		,	Noexcept	= RRef << 1
		,	All			= Const|Volatile|Value|LRef|RRef|Noexcept
		}
	;

	constexpr
	auto
		operator+
		(	EFunctionQualifier
				i_eFunctionQualifier
		)
	{	return
			static_cast
			<	std::underlying_type_t
				<	EFunctionQualifier
				>
			>(	i_eFunctionQualifier
			)
		;
	}

	constexpr
	auto
		operator bitand
		(	EFunctionQualifier
				i_eFirst
		,	EFunctionQualifier
				i_eSecond
		)
	->	EFunctionQualifier
	{	return
			static_cast
			<	EFunctionQualifier
			>(	+i_eFirst
			bitand
				+i_eSecond
			)
		;
	}

	constexpr
	auto
		operator and
		(	EFunctionQualifier
				i_eFirst
		,	EFunctionQualifier
				i_eSecond
		)
	->	bool
	{	return
			(	i_eFirst
			bitand
				i_eSecond
			)
		!=	EFunctionQualifier
			::	None
		;
	}

	constexpr
	auto
		operator bitor
		(	EFunctionQualifier
				i_eFirst
		,	EFunctionQualifier
				i_eSecond
		)
	->	EFunctionQualifier
	{	return
			static_cast
			<	EFunctionQualifier
			>(	+i_eFirst
			bitor
				+i_eSecond
			)
		;
	}

	template
		<	typename
			...	t_tpArgument
		>
	struct
		FunctionArgumentTraits
	{};

	template
		<	typename
				t_tSingleArgument
		>
	struct
		FunctionArgumentTraits
		<	t_tSingleArgument
		>
	{
		using
			Single
		=	t_tSingleArgument
		;
	};

	/// most types do not have a function signature
	template
		<	typename
		,	EFunctionQualifier
			=	EFunctionQualifier
				::	None
		>
	struct
		FunctionSignature
	{};

	/// function types
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		,	EFunctionQualifier
				t_eFunctionQualifier
		>
	struct
		FunctionSignature
		<	t_tResult
				(	t_tpArgument
					...
				)
		,	t_eFunctionQualifier
		>
	{
		static constexpr
		EFunctionQualifier
			Qualifier
		=	t_eFunctionQualifier
		;

		static constexpr
		auto
			IsNoexcept
			()
		->	bool
		{
			return
				Qualifier
			and	EFunctionQualifier
				::	Noexcept
			;
		}

		using
			SignatureType
		=	t_tResult
				(	t_tpArgument
					...
				)
		;

		using
			ResultType
		=	t_tResult
		;

		using
			ArgumentType
		=	FunctionArgumentTraits
			<	t_tpArgument
				...
			>
		;

		static
		constexpr
		auto
			ArgumentCount
		=	sizeof...(
				t_tpArgument
			)
		;
	};

	/// function types with const
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		>
	struct
		FunctionSignature
		<	t_tResult
				(	t_tpArgument
					...
				)	const
		>
	:	FunctionSignature
		<	t_tResult
				(	t_tpArgument
					...
				)
		,	EFunctionQualifier
			::	Const
		>
	{};

	/// function types with const noexcept
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		>
	struct
		FunctionSignature
		<	t_tResult
				(	t_tpArgument
					...
				)	const
			noexcept
		>
	:	FunctionSignature
		<	t_tResult
				(	t_tpArgument
					...
				)
		,	EFunctionQualifier
			::	Const
		bitor
			EFunctionQualifier
			::	Noexcept
		>
	{};

	/// function types with noexcept
	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		>
	struct
		FunctionSignature
		<	t_tResult
				(	t_tpArgument
					...
				)
			noexcept
		>
	:	FunctionSignature
		<	t_tResult
				(	t_tpArgument
					...
				)
		,	EFunctionQualifier
			::	Noexcept
		>
	{};

	/// pointers to function types
	template
		<	typename
				t_tFunctionType
		>
	struct
		FunctionSignature
		<	t_tFunctionType
			*
		>
	:	FunctionSignature
		<	t_tFunctionType
		>
	{};

	/// pointers to function members types
	template
		<	typename
				t_tFunctionType
		,	typename
				t_tOwner
		>
	struct
		FunctionSignature
		<	t_tFunctionType
			t_tOwner
			::*
		>
	:	FunctionSignature
		<	t_tFunctionType
		>
	{};

	/// objects with operator()
	template
		<	typename
				t_tOwner
		>
	requires
		requires
		{
			&	t_tOwner
			::	operator()
			;
		}
	struct
		FunctionSignature
		<	t_tOwner
		>
	:	FunctionSignature
		<	decltype(
				&
				t_tOwner
				::	operator()
			)
		>
	{};

	template
		<	auto
				t_fFunction
		>
	struct
		FunctionTraits
	:	FunctionSignature
		<	decltype(
				t_fFunction
			)
		>
	{};

	/// deduces the result type of an object
	/// assumes the () operator exists and is not overloaded
	template
		<	auto
				t_fResultTypeOf
		>
	using
		ResultTypeOf
	=	typename
		FunctionTraits
		<	t_fResultTypeOf
		>::	ResultType
	;
}
