export module Meta.Ignore;

export import Meta.Concept.Category;

export namespace
	Meta
{
	template
		<	auto
		,	typename
				t_tType
		>
	using
		ValueToType
	=	t_tType
	;

	struct
		Ignore
	{
		constexpr
		(	Ignore
		)	()
		=	default;

		constexpr
		(	Ignore
		)	(	auto&&
			)
		{}
	};

	template
		<	ProtoClass
				t_tBase
		>
	struct
		HideOperators
	:	t_tBase
	{
		using t_tBase::t_tBase;

		void operator()() = delete;
		void operator[](Ignore) = delete;
		void operator+=(Ignore) = delete;
		void operator-=(Ignore) = delete;
		void operator*=(Ignore) = delete;
		void operator/=(Ignore) = delete;
		void operator%=(Ignore) = delete;
		void operator&=(Ignore) = delete;
		void operator|=(Ignore) = delete;
		void operator^=(Ignore) = delete;
		void operator<<=(Ignore) = delete;
		void operator>>=(Ignore) = delete;
		void operator++() = delete;
		void operator++(int) = delete;
		void operator--() = delete;
		void operator--(int) = delete;
		void operator+() = delete;
		void operator+(Ignore) = delete;
		void operator-() = delete;
		void operator-(Ignore) = delete;
		void operator*() = delete;
		void operator*(Ignore) = delete;
		void operator/(Ignore) = delete;
		void operator%(Ignore) = delete;
		void operator~() = delete;
		void operator&() = delete;
		void operator&(Ignore) = delete;
		void operator|(Ignore) = delete;
		void operator^(Ignore) = delete;
		void operator<<(Ignore) = delete;
		void operator>>(Ignore) = delete;
		void operator!() = delete;
		void operator&&(Ignore) = delete;
		void operator||(Ignore) = delete;
		void operator==(Ignore) = delete;
		void operator!=(Ignore) = delete;
		void operator<(Ignore) = delete;
		void operator>(Ignore) = delete;
		void operator<=(Ignore) = delete;
		void operator>=(Ignore) = delete;
		void operator<=>(Ignore) = delete;
		void* operator->() = delete;
		void operator->*(Ignore) = delete;
		void operator,(Ignore) = delete;
		operator auto() = delete;
	};
}
