export module ATR.Layout.Create;

import ATR.Member.Definition;
import ATR.Member.List;
import ATR.Member.Alias;
import ATR.Layout.Layout;
import ATR.Layout.ValidateOffsets;

import Meta.Token.Type;
import Meta.Size;

import Std;

using ::Meta::USize;
using ::Meta::RestoreTypeEntity;

export namespace
	ATR
{
	template
	<	Member::List
			t_vDynamic
	>
	[[nodiscard]]
	auto constexpr
	(	CreateLayout
	)	(	Member::Definition
			<	t_vDynamic
			>
		)
	->	decltype(auto)
	{	return
		[]	<	::std::size_t
				...	t_npDynamicIndex
			>(	::std::index_sequence
				<	t_npDynamicIndex
					...
				>
			)
		{	using
				t_tLayout
			=	Layout
				<	RestoreTypeEntity
					<	t_vDynamic[t_npDynamicIndex]
					.	Type
					>
					...
				>
			;

			ValidateOffsets
			<	t_tLayout
			>();

			return
				t_tLayout{}
			;
		}(	::std::make_index_sequence
			<	static_cast<USize>
				(	t_vDynamic.DynamicSize
				)
			>{}
		);
	}

	template
		<	Member::AliasedList
				t_vAliased
		>
	[[nodiscard]]
	auto constexpr
	(	CreateLayout
	)	(	Member::Definition
			<	t_vAliased
			>
		)
		noexcept
	->	decltype(auto)
	{	return
		CreateLayout
		(	Member::Definition
			<	t_vAliased.DataInfos
			>{}
		);
	}
}
