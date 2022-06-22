export module ATR:Layout.BitOffset;

export import :Erase;
export import :Layout.BitReference;

export import Meta.Arithmetic;

export import Std;

using ::Meta::USize;

export namespace
	ATR
{
	template
		<	USize
				t_nBitOffset
		,	typename
				t_tMember
		>
	struct
		BitOffset
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
			{	BitReference
				<	t_nBitOffset
				,	Meta::BitSize
					(	Meta::Type<t_tMember>
					)
				>
			::	ReadField(i_aObject + Offset)
			};
		}

		/// immitates syntax of pointer to member dereference
		[[nodiscard]]
		friend auto constexpr
		(	operator->*
		)	(	::std::byte const
				*	i_aObject
			,	BitOffset
					i_vBitOffset
			)
			noexcept
		->	t_tMember
		{	return
			i_vBitOffset
			(	i_aObject
			);
		}
	};

	template
		<	USize
				t_nBitOffset
		,	typename
				t_tMember
		>
	struct
		BitOffset
		<	t_nBitOffset
		,	t_tMember&
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
		->	BitReference
			<	t_nBitOffset
			,	Meta::BitSize
				(	Meta::Type<t_tMember>
				)
			>
		{	return
			{	// the underlying byte array is defined mutable
				// if the offset points to that array this is well defined
				// if not all bets are off regardless
				::std::launder
				(	const_cast
					<	::std::byte*
					>(	i_aObject
					+	Offset
					)
				)
			};
		}

		/// immitates syntax of pointer to member dereference
		[[nodiscard]]
		friend auto constexpr
		(	operator->*
		)	(	::std::byte
				*	i_aObject
			,	BitOffset
					i_vBitOffset
			)
			noexcept
		->	decltype(auto)
		{	return
			i_vBitOffset
			(	i_aObject
			);
		}
	};

	template
		<	USize
				t_nBitOffset
		,	typename
				t_tMember
		>
	auto constexpr
	(	operator +
	)	(	USize
				i_nOffset
		,	BitOffset<t_nBitOffset, t_tMember>
				i_nMember
		)
	->	BitOffset<t_nBitOffset, t_tMember>
	{	return
		{	i_nOffset
		+	i_nMember.Offset
		};
	}
}
