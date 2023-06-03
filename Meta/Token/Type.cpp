export module Meta.Token.Type;

import Meta.Token.TypeID;
import Meta.Memory.Constraint;
import Meta.Generic.Map;

export namespace
	Meta
{
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

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			TypeID
		)	()	const
			noexcept
		{
			TypeID constexpr
				vTypeID
			{	&Memory::Constraint_Of
				<	t_tEntity
				>
			};

			Generic::StoreKeyValuePair
			<	vTypeID
			,	TypeToken
				{}
			>();

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
