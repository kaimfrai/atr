export module Meta.Generic.Map;

export namespace
	Meta::Generic
{
	// May map any compile time known value or reference to another
	// compile time known value or reference.
	// Syntax:
	// template class Map<(Key)>::Store<(Value)>;
	// auto const value = Map<(Key)>::Load();
	template
		<	decltype(auto)
				t_vKey
		>
	class
		Map
	{
		friend auto constexpr
		(	Get
		)	(	Map<t_vKey>
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
			friend
			auto constexpr
			(	Get
			)	(	Map<t_vKey>
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
}
