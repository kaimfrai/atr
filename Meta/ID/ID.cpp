export module Meta.ID:ID;

import Meta.String.Hash;

using ::Meta::String::ImplicitHash;

[[nodiscard]]
auto constexpr inline
(	ToChar
)	(	char
			i_vChar
	)
	noexcept
->	char
{	return i_vChar;	}

[[nodiscard]]
auto constexpr inline
(	ToChar
)	(	int
			i_vInteger
	)
	noexcept
->	char
{	return
	static_cast<char>
	(	i_vInteger
	+	'0'
	);
}

struct
	Base
{};

export extern "C++"
{
	template
		<	decltype(auto)
			...	t_vpString
		>
	struct
		ID final
	:	Base
	{
		char static constexpr inline
			String
			[	sizeof...(t_vpString)
			+	1uz
			]
		{	::ToChar(t_vpString)
			...
		,	'\0'
		};

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			ImplicitHash
		)	()	const
			noexcept
		{	return
				String
			;
		}
	};
}

export namespace
	Meta
{
	template
		<	typename
				t_tProto
		>
	concept
		ProtoID
	=	requires
		{	Base
			{	t_tProto
				{}
			};
		}
	;
}
