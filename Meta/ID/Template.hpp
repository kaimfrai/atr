export module Meta.ID:Template;

import :Conversion;
import :UpperCase;
import :LowerCase;
import :Special;
import :Decimal;
import :StringView;
import :StringLiteral;

import Meta.Arithmetic;

export namespace
	Meta
{
	/// serves as a base class for all identifer types
	/// provides conversions to arrays as well as begin and end functions
	template
		<	decltype(auto)
			...	t_vpString
		>
	struct
		ID final
	{
		static ::Meta::USize constexpr
			Length
		=	sizeof...(t_vpString)
		;

		static char constexpr
			RawArray
			[	Length
			+	1uz
			]
		{	::ToChar(t_vpString)
			...
		,	'\0'
		};

		static ::Meta::StringView constexpr
			StringView
		{	RawArray
		,	Length
		};

		static ::Meta::StringLiteral<Length> constexpr
			String
		{	RawArray
		};

		[[nodiscard]] constexpr
		(	operator decltype(auto)
		)	()	const
			noexcept
		{	return (StringView);	}
	};
}
