export module Meta.Auto.Ref.StaticCount;

import Meta.Auto.CPO.SSize;
import Meta.Size;

import Std;

export namespace
	Meta::Auto
{
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCountedContainer
	=	requires
			(	t_tProto
				&&	c_rProto
			)
		{
			{	::Meta::CPO::SSize
				(	c_rProto
				)
			}	noexcept
			->	::std::convertible_to
				<	SSize
				>
			;
		}
	;

	template
		<	ProtoCountedContainer
				t_tContainer
		>
	SSize constexpr inline
		StaticCount
	=	[]{	if	constexpr
				(	::std::is_nothrow_constructible_v
					<	t_tContainer
					>
				)
			{	return
					::Meta::CPO::SSize
					(	t_tContainer
						()
					)
				;
			}
			else
			{	return
					0z
				;
			}
		}()
	;

	template
		<	ProtoCountedContainer
				t_tContainer
		>
	requires
		requires
		{
			{	t_tContainer
				::	ssize
					()
			}	noexcept
			->	::std::convertible_to
				<	SSize
				>
			;
		}
	SSize constexpr inline
		StaticCount
		<	t_tContainer
		>
	=	t_tContainer
		::	ssize
			()
	;

	template
		<	typename
				t_tElement
		,	SSize
				t_vExtent
		>
	SSize constexpr inline
		StaticCount
		<	t_tElement
				[	t_vExtent
				]
		>
	=	t_vExtent
	;

	template
		<	typename
				t_tContainer
		>
	SSize constexpr inline
		StaticCount
		<	t_tContainer
			&
		>
	=	StaticCount
		<	t_tContainer
		>
	;

	template
		<	typename
				t_tContainer
		>
	SSize constexpr inline
		StaticCount
		<	t_tContainer
			&&
		>
	=	StaticCount
		<	t_tContainer
		>
	;
}
