export module ATR.Layout.TypeIndex;

import ATR.Layout.ErasureView;

import Meta.Size;

import std;

using ::Meta::SSize;

export namespace
	ATR::Layout
{
	template
		<	typename
				t_tTarget
		>
	struct
		TypeIndex
	{
		using
			TargetType
		=	t_tTarget
		;

		auto static constexpr inline
			TargetByteSize
		=	static_cast<SSize>
			(	sizeof(t_tTarget)
			)
		;

		SSize
			Index
		;

		SSize
			Extent
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	t_tTarget
				*	i_aArray
			)	const
			noexcept
		->	t_tTarget*
		{	return
				i_aArray
			+	Index
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	t_tTarget const
				*	i_aArray
			)	const
			noexcept
		->	t_tTarget const*
		{	return
				i_aArray
			+	Index
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::byte
				*	i_aData
			)	const
			noexcept
		->	ErasureView<t_tTarget>
		requires
			(	not
				::std::is_same_v
				<	t_tTarget
				,	::std::byte
				>
			)
		{	return
			{	i_aData
			+	TargetByteSize
			*	Index
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::byte const
				*	i_aData
			)	const
			noexcept
		->	ErasureView<t_tTarget const>
		requires
			(	not
				::std::is_same_v
				<	t_tTarget
				,	::std::byte
				>
			)
		{	return
			{	i_aData
			+	TargetByteSize
			*	Index
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	MinExtent
		)	()	const
			noexcept
		->	SSize
		{	return
				Index
			+	Extent
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	MinByteExtent
		)	()	const
			noexcept
		->	SSize
		{	return
				TargetByteSize
			*	MinExtent
				()
			;
		}
	};

	template
		<	typename
				t_tTarget
		>
	(	TypeIndex
	)	(	TypeIndex
			<	t_tTarget
			>
		)
	->	TypeIndex
		<	t_tTarget
		>
	;
}
