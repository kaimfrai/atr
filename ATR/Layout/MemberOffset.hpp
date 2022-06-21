export module ATR:Layout.MemberOffset;

export import :Erase;

export import Meta.Arithmetic;

export import Std;

using ::Meta::USize;

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
		USize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	//	convert rvalue reference to prvalue
			//	do not return const which would disable move semantics
			::std::remove_cvref_t<t_tMember>
		{	return
			*
			//	we don't know where the byte pointer came from, so we need to launder it
			::std::launder
			(	PointerCast<::std::remove_reference_t<t_tMember>>
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
		<	typename
				t_tMember
		>
	struct
		MemberOffset
		<	t_tMember&
		>
	{
		USize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte
				*	i_aObject
			)	const
			noexcept
		->	t_tMember&
		{	return
			*
			//	we don't know where the byte pointer came from, so we need to launder it
			::std::launder
			(	PointerCast<t_tMember>
				(	i_aObject
				+	Offset
				)
			);
		}

		/// immitates syntax of pointer to member dereference
		[[nodiscard]]
		friend auto constexpr
		(	operator->*
		)	(	::std::byte
				*	i_aObject
			,	MemberOffset
					i_vMemberOffset
			)
			noexcept
		->	t_tMember&
		{	return
			i_vMemberOffset
			(	i_aObject
			);
		}
	};

	template
		<	typename
				t_tMember
		>
	struct
		MemberOffset
		<	t_tMember const&
		>
	{
		USize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	::std::byte const
				*	i_aObject
			)	const
			noexcept
		->	t_tMember const&
		{	return
			*
			//	we don't know where the byte pointer came from, so we need to launder it
			::std::launder
			(	PointerCast<t_tMember>
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
		->	t_tMember const&
		{	return
			i_vMemberOffset
			(	i_aObject
			);
		}
	};

	template
		<	typename
				t_tMember
		>
	auto constexpr
	(	operator +
	)	(	USize
				i_nOffset
		,	MemberOffset<t_tMember>
				i_nMember
		)
	->	MemberOffset<t_tMember>
	{	return
		{	i_nOffset
		+	i_nMember.Offset
		};
	}
}
