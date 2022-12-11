export module Meta.Functional:Construct;

export import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tEntity
		>
	struct
		Construct
	{
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	auto&&
				...	i_rpArgument
			)
			noexcept
			(	noexcept
				(	t_tEntity
					{	std::forward<decltype(i_rpArgument)>
						(	i_rpArgument
						)
						...
					}
				)
			)
		->	t_tEntity
			requires
				requires
				{	t_tEntity
					{	std::forward<decltype(i_rpArgument)>
						(	i_rpArgument
						)
						...
					};
				}
		{	return
			t_tEntity
			{	std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			};
		}
	};

	template
		<	template
				<	auto
					...
				>
			typename
				t_t1Entity
		>
	struct
		ConstructValuePack
	{
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	auto&&
				...	i_rpArgument
			)
			noexcept
			(	noexcept
				(	t_t1Entity
					{	std::forward<decltype(i_rpArgument)>
						(	i_rpArgument
						)
						...
					}
				)
			)
		->	decltype(auto)
			requires
				requires
				{	t_t1Entity
					{	std::forward<decltype(i_rpArgument)>
						(	i_rpArgument
						)
						...
					};
				}
		{	return
			t_t1Entity
			{	std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			};
		}
	};

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Entity
		>
	struct
		ConstructTypePack
	{
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	auto&&
				...	i_rpArgument
			)
			noexcept
			(	noexcept
				(	t_t1Entity
					{	std::forward<decltype(i_rpArgument)>
						(	i_rpArgument
						)
						...
					}
				)
			)
		->	decltype(auto)
			requires
				requires
				{	t_t1Entity
					{	std::forward<decltype(i_rpArgument)>
						(	i_rpArgument
						)
						...
					};
				}
		{	return
			t_t1Entity
			{	std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			};
		}
	};
}
