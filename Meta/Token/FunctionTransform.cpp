export module Meta.Token.FunctionTransform;

export import Meta.Token.Transform;

export namespace
	Meta::Transform
{
	struct
		AddEllipsis
	:	TypeIdentity
	{
		using TypeIdentity::operator();

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...)
				>
			)	const
		->	TypeToken
			<	t_tResult(t_tpParameter..., ...)
			>
		{	return {};	}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) noexcept
				>
			)	const
		->	TypeToken
			<	t_tResult(t_tpParameter..., ...) noexcept
			>
		{	return {};	}
	};

	struct
		RemoveEllipsis
	:	TypeIdentity
	{
		using TypeIdentity::operator();

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...)
				>
			)	const
		->	TypeToken
			<	t_tResult(t_tpParameter...)
			>
		{	return {};	}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) noexcept
				>
			)	const
		->	TypeToken
			<	t_tResult(t_tpParameter...) noexcept
			>
		{	return {};	}
	};

	struct
		AddNoexcept
	:	TypeIdentity
	{
		using TypeIdentity::operator();

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...)
				>
			)	const
		->	TypeToken
			<	t_tResult(t_tpParameter...) noexcept
			>
		{	return {};	}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...)
				>
			)	const
		->	TypeToken
			<	t_tResult(t_tpParameter..., ...) noexcept
			>
		{	return {};	}
	};

	struct
		RemoveNoexcept
	:	TypeIdentity
	{
		using TypeIdentity::operator();

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter...) noexcept
				>
			)	const
		->	TypeToken
			<	t_tResult(t_tpParameter...)
			>
		{	return {};	}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpParameter
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tResult(t_tpParameter..., ...) noexcept
				>
			)	const
		->	TypeToken
			<	t_tResult(t_tpParameter..., ...)
			>
		{	return {};	}
	};
}

export namespace
	Meta
{
	Transform::AddEllipsis constexpr inline
		AddEllipsis
	{};

	Transform::RemoveEllipsis constexpr inline
		RemoveEllipsis
	{};

	Transform::AddNoexcept constexpr inline
		AddNoexcept
	{};

	Transform::RemoveNoexcept constexpr inline
		RemoveNoexcept
	{};
}
