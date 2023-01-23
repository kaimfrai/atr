export module Meta.Predicate.Match;

import Meta.Lex.CV;
import Meta.Lex.Array;
import Meta.Lex.Function;
import Meta.Lex.Pointer;
import Meta.Lex.Member;
import Meta.Lex.Reference;
import Meta.Logic.LiteralBase;
import Meta.Token.Noexcept;
import Meta.Size;

import Std;

export namespace
	Meta::Trait
{
	template
		<	typename
				t_tEntity
		>
	struct
		MatchCV
	{
		template
			<	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCV
				<	t_tEntity
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	template
		<	typename
				t_tEntity
		,	bool
		>
	struct
		MatchCVIf
	:	MatchCV<t_tEntity>
	{};

	template
		<	typename
				t_tEntity
		>
	struct
		MatchCVIf<t_tEntity, false>
	{};

	using MatchVoid = MatchCV<void>;

	using MatchNullPointer = MatchCV<decltype(nullptr)>;

	struct
		MatchUnsignedIntegral
	:	MatchCV<bool>
	,	MatchCVIf<char, ::std::is_unsigned_v<char>>
	,	MatchCVIf<wchar_t, ::std::is_unsigned_v<wchar_t>>
	,	MatchCV<char8_t>
	,	MatchCV<char16_t>
	,	MatchCV<char32_t>
	,	MatchCV<unsigned char>
	,	MatchCV<unsigned short>
	,	MatchCV<unsigned int>
	,	MatchCV<unsigned long>
	,	MatchCV<unsigned long long>
	{};

	struct
		MatchSignedIntegral
	:	MatchCVIf<char, not ::std::is_unsigned_v<char>>
	,	MatchCVIf<wchar_t, not ::std::is_unsigned_v<wchar_t>>
	,	MatchCV<signed char>
	,	MatchCV<signed short>
	,	MatchCV<signed int>
	,	MatchCV<signed long>
	,	MatchCV<signed long long>
	{};

	struct
		MatchFloatingPoint
	:	MatchCV<float>
	,	MatchCV<double>
	{};

	struct
		MatchIntegral
	:	MatchSignedIntegral
	,	MatchUnsignedIntegral
	{};

	struct
		MatchScopedEnum
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		requires
			::std::is_scoped_enum_v<t_tEntity>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCV
				<	t_tEntity
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchUnscopedEnum
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		requires
			(	::std::is_enum_v<t_tEntity>
			and not
				::std::is_scoped_enum_v<t_tEntity>
			)
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCV
				<	t_tEntity
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchEnum
	:	MatchScopedEnum
	,	MatchUnscopedEnum
	{};

	struct
		MatchPointer
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVPointer
				<	t_tEntity
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchMemberPointer
	{
		template
			<	typename
					t_tMember
			,	typename
					t_tOwner
			,	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVMember
				<	t_tMember
				,	t_tOwner
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchScalar
	:	MatchNullPointer
	,	MatchIntegral
	,	MatchFloatingPoint
	,	MatchEnum
	,	MatchPointer
	,	MatchMemberPointer
	{};

	struct
		MatchClass
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		requires
			::std::is_class_v<t_tEntity>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCV
				<	t_tEntity
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchUnion
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		requires
			::std::is_union_v<t_tEntity>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCV
				<	t_tEntity
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchBoundedArray
	{
		template
			<	typename
					t_tElement
			,	USize
					t_nExtent
			,	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVArray
				<	t_tElement
				,	t_nExtent
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return t_nExtent != 0uz;	}
	};

	struct
		MatchUnboundedArray
	{
		template
			<	typename
					t_tElement
			,	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVArray
				<	t_tElement
				,	0uz
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchLRef
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchLRef
				<	t_tEntity
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchRRef
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchRRef
				<	t_tEntity
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchReference
	:	MatchLRef
	,	MatchRRef
	{};

	struct
		MatchFreeFunction
	{
		template
			<	typename
					t_tSig
			,	typename
				...	t_tpQualifier
			>
		requires
			(	(	sizeof...(t_tpQualifier)
				<=	1uz
				)
			and	...
			and	(	t_tpQualifier{}
				==	Noexcept
				)
			)
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::Func
				<	t_tSig
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

	struct
		MatchOwnedFunction
	{
		template
			<	typename
					t_tSignature
			,	typename
					t_tFirstQualifier
			,	typename
				...	t_tpQualifier
			>
		requires
			(	t_tFirstQualifier{}
			!=	Noexcept
			)
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::Func
				<	t_tSignature
				,	t_tFirstQualifier
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};
}
