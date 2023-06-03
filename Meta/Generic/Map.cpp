export module Meta.Generic.Map;

export namespace
	Meta::Generic
{
	// May map any compile time known value or reference to another
	// compile time known value or reference.
	// Syntax:
	// template class Map<(Key)>::Store<(Value)>;
	// StoreKeyValuePair<(Key), (Value)>();
	// auto const value = Map<(Key)>::Load();
	template
		<	decltype(auto)
				t_vKey
		>
	class
		Map
	{
		auto friend constexpr
		(	Get
		)	(	Map
			)
			noexcept
		->	decltype(auto)
		;

		explicit(false) constexpr
		(	Map
		)	()
		=	default;

	public:
		template
			<	decltype(auto)
					t_vValue
			>
		class
			Store
		{
			[[nodiscard]]
			auto friend constexpr
			(	Get
			)	(	Map
				)
				noexcept
			->	decltype(auto)
			{	return
				(	t_vValue
				);
			}
		};

		[[nodiscard]]
		auto static constexpr
		(	Load
		)	()
			noexcept
		->	decltype(auto)
		{	return
			Get
			(	Map{}
			);
		}
	};

	template
		<	decltype(auto)
				t_vKey
		,	decltype(auto)
				t_vValue
		>
	auto constexpr
	(	StoreKeyValuePair
	)	()
		noexcept
	->	void
	{	return
		(void)
		typename
			Map<t_vKey>
		::	template
			Store<t_vValue>
		{};
	}
}
