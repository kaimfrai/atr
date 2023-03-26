export module ATR.Layout.Create;

import ATR.Layout;
import ATR.Layout.ValidateOffsets;

import Meta.Token.Type;

import Std;

using ::Meta::RestoreTypeEntity;

export namespace
	ATR
{
	template
		<	auto
				t_vDynamic
		>
	[[nodiscard]]
	auto constexpr
	(	CreateLayout
	)	()
		noexcept
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
					<	t_vDynamic
						[	t_npDynamicIndex
						]
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
			<	t_vDynamic.size()
			>{}
		);
	}
}
