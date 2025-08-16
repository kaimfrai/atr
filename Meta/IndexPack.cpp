export module Meta.IndexPack;

import Meta.Size;

export namespace
	Meta
{
	template
		<	typename
				t_tIndex
		>
	struct
		IndexPackGeneratorBase
	{
		template
			<	USize
					t_vIndex
			>
		[[nodiscard]]
		auto constexpr inline
		(	get
		)	()	const
			noexcept
		->	t_tIndex const
			&
		{
			static t_tIndex constexpr
				vIndex
			{	t_vIndex
			};
			return
				vIndex
			;
		}
	};

	template
		<	auto
				t_vSize
		>
	struct
		IndexPackGenerator
	:	IndexPackGeneratorBase
		<	decltype(t_vSize)
		>
	{};

	template
		<	auto
				t_vSize
		>
	auto constexpr inline
		IndexPack
	=	IndexPackGenerator
		<	t_vSize
		>{}
	;
}

export extern "C++" namespace std
{
	template<typename>
	struct tuple_size;
	template<::Meta::USize, typename>
	struct tuple_element;
}

export template
	<	auto
			t_vSize
	>
struct
	::std::tuple_size
	<	::Meta::IndexPackGenerator
		<	t_vSize
		>
	>
{
	static ::Meta::USize constexpr
		value
	=	t_vSize
	;
};

export template
	<	::Meta::USize
			t_vIndex
	,	auto
			t_vSize
	>
struct
	::std::tuple_element
	<	t_vIndex
	,	::Meta::IndexPackGenerator
		<	t_vSize
		>
	>
{
	using
		type
	=	decltype(t_vSize)
	;
};
