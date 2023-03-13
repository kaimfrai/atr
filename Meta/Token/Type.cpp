export module Meta.Token.Type;

import Meta.Token.Specifier;
import Meta.Generic.Map;
import Meta.Size;

import Std;

using ::Meta::Specifier::Mut;

export namespace
	Meta::Token
{
	struct
		EraseType final
	{
	private:
		template
			<	typename
			>
		friend struct
			TypeToken
		;

		explicit (false)
			constexpr
		(	EraseType
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	EraseType
		)	(	EraseType const&
			)
		=	delete;
	};

	struct
		TypeID final
	{
		EraseType const
		*	Erase
		;

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	TypeID
			,	TypeID
			)
			noexcept
		->	bool
		=	default;
	};

	template
		<	typename
				t_tEntity
		>
	struct
		TypeToken
	{
		using
			Entity
		=	t_tEntity
		;

		static EraseType constexpr
			Erase
		{};

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			TypeID
		)	()	const
		{
			TypeID constexpr
				vTypeID
			{	&Erase
			};

			Generic::StoreKeyValuePair<vTypeID, TypeToken{}>();

			return
				vTypeID
			;
		}

		friend auto constexpr
		(	operator ==
		)	(	TypeID
			,	TypeID
			)
			noexcept
		->	bool
		;
	};

	template
		<	typename
				t_tEntity
		,	USize
				t_nExtent
		>
	struct
		TypeToken
		<	t_tEntity
				[	t_nExtent
				]
		>
	{
		using
			Entity
		=	::std::array
			<	t_tEntity
			,	t_nExtent
			>
		;

		static EraseType constexpr
			Erase
		{};

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			TypeID
		)	()	const
		{
			TypeID constexpr
				vTypeID
			{	&Erase
			};

			Generic::StoreKeyValuePair<vTypeID, TypeToken{}>();

			return
				vTypeID
			;
		}

		friend auto constexpr
		(	operator ==
		)	(	TypeID
			,	TypeID
			)
			noexcept
		->	bool
		;
	};

	template
		<	typename
				t_tEntity
		>
	(	TypeToken
	)	(	TypeToken
			<	t_tEntity
			>
		)
	->	TypeToken
		<	t_tEntity
		>
	;
}

export namespace
	Meta
{
	using ::Meta::Token::TypeToken;

	using ::Meta::Token::TypeID;

	template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		Type
	=	TypeToken
		<	t_tEntity
		>{}
	;

	// c-style arrays and std::array are treated interchangably
	// c-style arrays are more readable as types
	// std::array is more useful as object
	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	auto constexpr inline
		Type
		<	::std::array
			<	t_tElement
			,	t_nExtent
			>
		>
	=	TypeToken
		<	t_tElement
				[	t_nExtent
				]
		>{}
	;

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	auto constexpr inline
		Type
		<	::std::array
			<	t_tElement
			,	t_nExtent
			>	const
		>
	=	TypeToken
		<	t_tElement const
				[	t_nExtent
				]
		>{}
	;

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	auto constexpr inline
		Type
		<	::std::array
			<	t_tElement
			,	t_nExtent
			>	volatile
		>
	=	TypeToken
		<	t_tElement volatile
				[	t_nExtent
				]
		>{}
	;

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	auto constexpr inline
		Type
		<	::std::array
			<	t_tElement
			,	t_nExtent
			>	const volatile
		>
	=	TypeToken
		<	t_tElement const volatile
				[	t_nExtent
				]
		>{}
	;

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	auto constexpr inline
		Type
		<	Mut
			<	::std::array
				<	t_tElement
				,	t_nExtent
				>
			>
		>
	=	TypeToken
		<	Mut
			<	t_tElement
					[	t_nExtent
					]
			>
		>{}
	;

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	auto constexpr inline
		Type
		<	Mut
			<	::std::array
				<	t_tElement
				,	t_nExtent
				>	volatile
			>
		>
	=	TypeToken
		<	Mut
			<	t_tElement volatile
					[	t_nExtent
					]
			>
		>{}
	;

	template
		<	TypeToken
				t_vType
		>
	using
		TypeEntity
	=	typename decltype
		(	t_vType
		)
	::	Entity
	;


	template
		<	TypeID
				t_vTypeID
		>
	TypeToken constexpr inline
		RestoreTypeToken
	=	Generic
	::	Map
		<	t_vTypeID
		>
	::	Load
		()
	;

	template
		<	TypeID
				t_vTypeID
		>
	using
		RestoreTypeEntity
	=	TypeEntity
		<	RestoreTypeToken
			<	t_vTypeID
			>
		>
	;
}
