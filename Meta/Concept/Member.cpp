export module Meta.Concept.Member;

export import Meta.Concept.Category;
export import Meta.Integer;

export namespace
	Meta::Trait
{
	struct
		Byte
	{
		static auto constexpr
		(	BitCount
		)	(	USize
					i_nBytes
			)
		->	USize
		{
			return
				i_nBytes
			*	BitsPerByte
			;
		}

		USize
			Align
		;
		USize
			Size
		;
	};

	struct
		Bit
	{
		static auto constexpr
		(	ByteCount
		)	(	USize
					i_nBits
			)
			noexcept
		->	USize
		{	return
				(i_nBits / BitsPerByte)
			+	((i_nBits % BitsPerByte) != 0uz)
			;
		}
		USize
			Align
		;
		USize
			Size
		;

		constexpr
		(	operator decltype(auto)
		)	()	const
			noexcept
		{	return
			Byte
			{	.Align = ByteCount(Align)
			,	.Size = ByteCount(Size)
			};
		}
	};

	template
		<	typename
				t_tMember
		>
	struct
		Member
	{
		[[no_unique_address]]
		t_tMember
			Data
		;

		static Bit constexpr
			Bits
		=	::std::is_empty_v<Member>
		?	Bit{ .Align = 0uz, .Size = 0uz }
		:	(	::std::is_same_v<bool, ::std::remove_cv_t<t_tMember>>
			?	Bit{ .Align = 1uz, .Size = 1uz }
			:	Bit
				{	.Align = Byte::BitCount(alignof(Member))
				,	.Size = Byte::BitCount(sizeof(Member))
				}
			)
		;
	};

	///	treat any function as if it was a member function pointer
	template
		<	ProtoFunction
				t_tFunction
		>
	struct
		Member<t_tFunction>
	:	Member
		<	t_tFunction
			Member<void>::*
		>
	{};

	///	treat any unbound array as if it was a pointer
	template
		<	ProtoValue
				t_tElement
		>
	struct
		Member<t_tElement[]>
	:	Member<t_tElement*>
	{};

	template
		<>
	struct
		Member<bool> final
	{
		bool
			Data : 1
		;

		static USize constexpr
			BitSize
		=	1uz
		;

		static USize constexpr
			BitAlign
		=	1uz
		;
	};

	template
		<>
	struct
		Member<bool const> final
	{
		bool const
			Data : 1
		;

		static USize constexpr
			BitSize
		=	1uz
		;

		static USize constexpr
			BitAlign
		=	1uz
		;
	};

	template
		<>
	struct
		Member<bool volatile> final
	{
		bool volatile
			Data : 1
		;

		static USize constexpr
			BitSize
		=	1uz
		;

		static USize constexpr
			BitAlign
		=	1uz
		;
	};

	template
		<>
	struct
		Member<bool const volatile> final
	{
		bool const volatile
			Data : 1
		;

		static USize constexpr
			BitSize
		=	1uz
		;

		static USize constexpr
			BitAlign
		=	1uz
		;
	};

	template
		<	ProtoVoid
				t_tVoid
		>
	struct
		Member<t_tVoid>
	{
		static USize constexpr
			BitSize
		=	0uz
		;

		static USize constexpr
			BitAlign
		=	0uz
		;
	};
}
