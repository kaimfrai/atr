export module Meta.MetaInfo;

export import Meta.TypeInfo;
export import Meta.ValueInfo;

export import Std;

export import Meta.Concept.Empty;

export namespace
	Meta
{
	///	forwards to the given compare type and returns a ValueInfo of the result
	/// defaults to the three way comparison
	template
		<	Meta::ProtoStateless
				t_tCompare
		>
	ValueInfo<t_tCompare{}> constexpr inline
		StatelessCompare
	{};

	/// extension to std::equal_to in order to compare types
	struct
		EqualTo
	:	std::equal_to
		<>
	{
		using
			std::equal_to
			<>
			::	operator()
		;

		friend auto constexpr
		(	operator ==
		)	(	EqualTo
			,	EqualTo
			)
		->	bool
		{	return true;	}

		template
			<	typename
					t_tLeft
			,	typename
					t_tRight
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	()	const
			noexcept
		->	bool
		{	return
			operator()
			(	Meta::Type
				<	t_tLeft
				>
			,	Meta::Type
				<	t_tRight
				>
			);
		}
	};

	/// shortcut for comparing for equality
	ValueInfo<EqualTo{}> constexpr inline
		StatelessEquals
	{};

	///	defines what behaves like an info object
	template
		<	typename
				t_tAny
		>
	concept
		InfoInstance
	=	TypeInstance
		<	t_tAny
		>
	or	ValueInstance
		<	t_tAny
		>
	;

	/// overloaded to access info from value or type
	template
		<	auto
				t_vAny
		>
	constexpr
	auto
		Info
		()
	->	ValueInfo<t_vAny>
	{	return{};	}

	/// overloaded to access info from value or type
	template
		<	typename
				t_tAny
		>
	constexpr
	auto
		Info
		()
	->	TypeToken<t_tAny>
	{	return{};	}
}
