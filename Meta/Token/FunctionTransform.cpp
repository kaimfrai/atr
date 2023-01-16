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
	Transform::AddEllipsis extern
		AddEllipsis
	;

	Transform::RemoveEllipsis extern
		RemoveEllipsis
	;

	Transform::AddNoexcept extern
		AddNoexcept
	;

	Transform::RemoveNoexcept extern
		RemoveNoexcept
	;
}
