export module Meta.TypeInfo;

export import Meta.Type;
export import Meta.Concept.Empty;

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
	=	/// copy constructs TypeInfo -> unambiguously derived from TypeInfo
		requires
			(	t_tTypeInstance
					c_vTypeInstance
			)
		{	Token::Type
			{	c_vTypeInstance
			};
		}
	;

	namespace
		Token
	{
		/// ordering on TypeInfo of stateless types defined by their respective ordering
		template
			<	ProtoStateless
					t_tLeft
			,	ProtoStateless
					t_tRight
			>
		[[deprecated]]
		auto constexpr
		(	operator<=>
		)	(	Type<t_tLeft>
			,	Type<t_tRight>
			)
		{	return
			(	t_tLeft{}
			<=>	t_tRight{}
			);
		}
	}
}
