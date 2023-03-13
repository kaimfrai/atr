export module Meta.Token.Type;

import Meta.Token.Specifier;
import Meta.Generic.Map;
import Meta.Size;

import Std;

using ::Meta::Specifier::Mut;

export namespace
	Meta
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
