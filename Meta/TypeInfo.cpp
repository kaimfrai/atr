export module Meta.TypeInfo;

export import Std;

export import Meta.Type;
export import Stateless.Type;
export import Std.TypeTraits;

export namespace
	Meta
{
	template
		<	typename
				t_tConvertible
		,	template
				<	typename
					...
				>
			typename
				t_t1ConvertTo
		>
	concept
		ConvertibleToTypePackInstance
	=	requires
			(	t_tConvertible
					c_vConvertible
			)
		{
			t_t1ConvertTo
			{	c_vConvertible
			};
		}
	;

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
		ConvertibleToTypePackInstance
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
			(	Type<t_tLeft>
			,	Type<t_tRight>
			)
		{	return
				t_tLeft{}
			<=>	t_tRight{}
			;
		}
	}
}
