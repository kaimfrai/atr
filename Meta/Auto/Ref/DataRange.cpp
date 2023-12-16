export module Meta.Auto.Ref.DataRange;

import Meta.Auto.CPO.Data;
import Meta.Auto.Ref.StaticCount;
import Meta.Size;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tProto
		,	SSize
				t_vCount
		>
	concept
		ProtoCountedContainer_AtLeast
	=	ProtoCountedContainer
		<	t_tProto
		>
	and	(	StaticCount
			<	t_tProto
			>
		>=	t_vCount
		)
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tElement
		>
	concept
		ProtoDataContainer_Of
	=	requires
			(	t_tProto
				&	c_rProto
			)
		{
			{	::Meta::CPO::Data
				(	c_rProto
				)
			}	noexcept
			->	::std::same_as
				<	t_tElement
					*
				>
			;
		}
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tElement
		>
	concept
		ProtoOwnerContainer_Of
	=	ProtoCountedContainer
		<	t_tProto
		>
	and	ProtoDataContainer_Of
		<	::std::remove_cvref_t
			<	t_tProto
			>
		,	::std::remove_cvref_t
			<	t_tElement
			>
		>
	and	ProtoDataContainer_Of
		<	::std::remove_cvref_t
			<	t_tProto
			>	const
		,	::std::remove_cvref_t
			<	t_tElement
			>	const
		>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tElement
		,	SSize
				t_vCount
		>
	concept
		ProtoOwnerContainer_Of_AtLeast
	=	ProtoOwnerContainer_Of
		<	t_tProto
		,	t_tElement
		>
	and	ProtoCountedContainer_AtLeast
		<	t_tProto
		,	t_vCount
		>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tElement
		>
	concept
		ProtoBorrowContainer_Of
	=	ProtoCountedContainer
		<	t_tProto
		>
	and	ProtoDataContainer_Of
		<	::std::remove_cvref_t
			<	t_tProto
			>
		,	::std::remove_reference_t
			<	t_tElement
			>
		>
	and	ProtoDataContainer_Of
		<	::std::remove_cvref_t
			<	t_tProto
			>	const
		,	::std::remove_reference_t
			<	t_tElement
			>
		>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tElement
		,	SSize
				t_vCount
		>
	concept
		ProtoBorrowContainer_Of_AtLeast
	=	ProtoBorrowContainer_Of
		<	t_tProto
		,	t_tElement
		>
	and	ProtoCountedContainer_AtLeast
		<	t_tProto
		,	t_vCount
		>
	;
}
