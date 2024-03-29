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
		explicit(false) constexpr inline
		(	operator
			TypeID
		)	()	const
			noexcept
		{
			TypeID static constexpr
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

		auto friend constexpr
		(	operator==
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

	template
	struct
		TypeToken
		<	void
		>
	;
	template
	struct
		TypeToken
		<	decltype(nullptr)
		>
	;

	template
	struct
		TypeToken
		<	bool
		>
	;

	template
	struct
		TypeToken
		<	char
		>
	;
	template
	struct
		TypeToken
		<	wchar_t
		>
	;
	template
	struct
		TypeToken
		<	char8_t
		>
	;
	template
	struct
		TypeToken
		<	char16_t
		>
	;
	template
	struct
		TypeToken
		<	char32_t
		>
	;

	template
	struct
		TypeToken
		<	unsigned char
		>
	;
	template
	struct
		TypeToken
		<	signed char
		>
	;
	template
	struct
		TypeToken
		<	unsigned short
		>
	;
	template
	struct
		TypeToken
		<	signed short
		>
	;
	template
	struct
		TypeToken
		<	unsigned int
		>
	;
	template
	struct
		TypeToken
		<	signed int
		>
	;
	template
	struct
		TypeToken
		<	unsigned long
		>
	;
	template
	struct
		TypeToken
		<	signed long
		>
	;
	template
	struct
		TypeToken
		<	unsigned long long
		>
	;
	template
	struct
		TypeToken
		<	signed long long
		>
	;

	template
	struct
		TypeToken
		<	float
		>
	;
	template
	struct
		TypeToken
		<	double
		>
	;
	template
	struct
		TypeToken
		<	long double
		>
	;
}
