export module Meta.TypeInfo;

export import Std;

export import Meta.Type;
export import Stateless.Type;
export import Std.Concepts;
export import Std.TypeTraits;

export namespace
	Meta
{
	///	stateless types derived from TypeInfo
	template
		<	typename
				t_tTypeInstance
		>
	concept
		TypeInstance
	=	Stateless::Type
		<	t_tTypeInstance
		>
	and	/// copy constructs TypeInfo -> unambiguously derived from TypeInfo
		Std::ConvertibleToTypePackInstance
		<	t_tTypeInstance
		,	Token::Type
		>
	;

	namespace
		Token
	{
		/// ordering on TypeInfo of stateless types defined by their respective ordering
		template
			<	Stateless::Type
					t_tLeft
			,	Stateless::Type
					t_tRight
			>
		[[deprecated]]
		constexpr
		auto
			operator<=>
			(	Type
				<	t_tLeft
				>
			,	Type
				<	t_tRight
				>
			)
		{	return
				Stateless::Copy<t_tLeft>
			<=>	Stateless::Copy<t_tRight>
			;
		}
	}
}
