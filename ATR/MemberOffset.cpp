export module ATR.MemberOffset;

export import ATR.DataMember;
export import ATR.StringLiteral;
export import ATR.Erase;

export import Std;
export import Meta.Integer;
export import Meta.Concept.Empty;

export namespace
	ATR
{
	template
		<	typename
				t_tMember
		>
	struct
		MemberOffset
	{
		Meta::USize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	t_tMember
		{
			using
				tPointedType
			=	::std::conditional_t
				<	::std::is_reference_v<t_tMember>
				,	::std::remove_reference_t<t_tMember>
				,	::std::add_const_t<t_tMember>
				>
			;
			//	using a const object with a non-const member assumes a mutable member
			//	passing a non-const object converts to const from non-const
			//	either makes const_cast valid
			bool constexpr
				bAllowConstCast
			=	not ::std::is_const_v<tPointedType>
			;

			return
			static_cast<t_tMember>
			(	*PointerCast<tPointedType, bAllowConstCast>
				(	i_aObject
				+	Offset
				)
			);
		}

		/// immitates syntax of pointer to member dereference
		[[nodiscard]]
		friend auto constexpr
		(	operator->*
		)	(	::std::byte const
				*	i_aObject
			,	MemberOffset
					i_vMemberOffset
			)
			noexcept
		->	t_tMember
		{	return
			i_vMemberOffset
			(	i_aObject
			);
		}
	};

	template
		<	Meta::ProtoStateless
				t_tMember
		>
	struct
		MemberOffset
		<	t_tMember
		>
	{
		constexpr
		(	MemberOffset
		)	()
		=	default;

		explicit constexpr
		(	MemberOffset
		)	(	Meta::USize
			)
		{}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const*
			)	const
			noexcept
		->	t_tMember
		{	return
			t_tMember
			{};
		}

		friend auto constexpr
		(	operator->*
		)	(	::std::byte const
				*	i_aObject
			,	MemberOffset
					i_vMemberOffset
			)
			noexcept
		->	t_tMember
		{	return
			i_vMemberOffset
			(	i_aObject
			);
		}
	};
}
