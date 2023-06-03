export module Meta.Functional.Construct;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tEntity
		>
	struct
		ConstructType
	{
		[[nodiscard]]
		auto static constexpr inline
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
		<	typename
				t_tEntity
		>
	auto constexpr inline
	(	Construct
	)	()
	->	ConstructType<t_tEntity>
	{	return{};	}

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
		auto static constexpr inline
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
				<	auto
					...
				>
			typename
				t_t1Entity
		>
	auto constexpr inline
	(	Construct
	)	()
	->	ConstructValuePack<t_t1Entity>
	{	return{};	}

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
		auto static constexpr inline
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
	auto constexpr inline
	(	Construct
	)	()
	->	ConstructTypePack<t_t1Entity>
	{	return{};	}
}
