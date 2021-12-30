export module Meta.Predicate.Object;

export import Meta.Predicate.Reference;

namespace
	Meta
{
	namespace
		Trait
	{
		export template
			<	USize
					t_nObjectSize
			=	0uz
			>
		struct
			Object_SizeGreater final
		{
			template
				<	typename
						t_tEntity
				>
			auto constexpr
			(	operator()
			)	(	TypeToken<t_tEntity>
				)	const
			->	bool
			{	if	constexpr(not ::std::is_object_v<t_tEntity>)
					return false;
				else
				//	this is false for incomplete types
				if	constexpr(requires{ sizeof(t_tEntity); })
				{
					return sizeof(t_tEntity) > t_nObjectSize;
				}
				else
				{
					//	size will always be at least 1 byte for incomplete types
					static_assert
					(	t_nObjectSize
					==	0uz
					,	"Attempted to check size of incomplete type!"
					);
					return true;
				}
			}
		};
	}

	export Term constexpr inline
		IsObject
	=	Term{Trait::Object_SizeGreater<>{}}
	and	IsReferable
	;

	export Term constexpr inline
		IsUnqualifiedFunction
	=	not
		Term{Trait::Object_SizeGreater<>{}}
	and	IsReferable
	;

	export Term constexpr inline
		IsFunction
	=	IsQualifiedFunction
	or	IsUnqualifiedFunction
	;

	export template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSizeGreater
	=	Term{Trait::Object_SizeGreater<t_nObjectSize>{}}
	and	IsObjectSizeGreater<t_nObjectSize - 1uz>
	;

	template<>
	Term constexpr inline
		IsObjectSizeGreater<0uz>
	=	IsObject
	;

	export template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSizeAtLeast
	=	IsObjectSizeGreater
		<	t_nObjectSize
		-	1uz
		>
	;

	template<>
	Term constexpr inline
		IsObjectSizeAtLeast
		<	0uz
		>
	=	IsObject
	;

	export template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSizeAtMost
	=	IsObject
	and	not
		IsObjectSizeGreater
		<	t_nObjectSize
		>
	;

	export template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSizeLess
	=	IsObject
	and	not
		IsObjectSizeAtLeast
		<	t_nObjectSize
		>
	;

	export template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSize
	=	IsObjectSizeAtMost
		<	t_nObjectSize
		>
	and	IsObjectSizeAtLeast
		<	t_nObjectSize
		>
	;
}

