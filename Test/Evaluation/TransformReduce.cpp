import Evaluation.Dependency.TransformReduce;

import Std;

using Bodies3D::TransformReduce;

auto constexpr inline
	TestArray
=	[]
	{	::std::array<int, 256>
			vBuffer
		;

		::std::iota
		(	vBuffer
			.	begin
				()
		,	vBuffer
			.	end
				()
		,	1
		);

		return
			vBuffer
		;
	}()
;

[[nodiscard]]
auto constexpr inline
(	ExpectedSum
)	(	int
			i_vLength
	)
	noexcept
->	int
{	return
		i_vLength
	*	(	i_vLength
		+	1
		)
	/	2
	;
}

[[nodiscard]]
auto constexpr inline
(	Equal
)	(	int
			i_vLeft
	,	int
			i_vRight
	)
	noexcept
->	bool
{
	if	(	i_vLeft
		!=	i_vRight
		)
	{	::std::unreachable
		();
	}
	return
		true
	;
}

[[nodiscard]]
auto constexpr inline
(	CheckExpectedSum
)	(	int
			i_vLength
	)
	noexcept
->	bool
{	return
	Equal
	(	ExpectedSum
		(	i_vLength
		)
	,	TransformReduce
		(	TestArray
			.	begin
				()
		,	::std::next
			(	TestArray
				.	begin
					()
			,	i_vLength
			)
		,	[]	(	auto
						i_vValue
				)
			{	return
					i_vValue
				;
			}
		)
	);
}

static_assert
(	CheckExpectedSum
	(	0x00
	)
);
static_assert
(	CheckExpectedSum
	(	0x01
	)
);
static_assert
(	CheckExpectedSum
	(	0x02
	)
);
static_assert
(	CheckExpectedSum
	(	0x03
	)
);
static_assert
(	CheckExpectedSum
	(	0x04
	)
);
static_assert
(	CheckExpectedSum
	(	0x05
	)
);
static_assert
(	CheckExpectedSum
	(	0x06
	)
);
static_assert
(	CheckExpectedSum
	(	0x07
	)
);
static_assert
(	CheckExpectedSum
	(	0x08
	)
);
static_assert
(	CheckExpectedSum
	(	0x09
	)
);
static_assert
(	CheckExpectedSum
	(	0x0a
	)
);
static_assert
(	CheckExpectedSum
	(	0x0b
	)
);
static_assert
(	CheckExpectedSum
	(	0x0c
	)
);
static_assert
(	CheckExpectedSum
	(	0x0d
	)
);
static_assert
(	CheckExpectedSum
	(	0x0e
	)
);
static_assert
(	CheckExpectedSum
	(	0x0f
	)
);

[[nodiscard]]
auto constexpr inline
(	CheckAllSums
)	(	int
			i_vStart
	,	int
			i_vEnd
	)
	noexcept
{
	for	(
		;		i_vStart
			<=	i_vEnd
		;	++	i_vStart
		)
	{
		if	(	not
				CheckExpectedSum
				(	i_vStart
				)
			)
		{	return
				false
			;
		}
	}

	return
		true
	;
}
static_assert
(	CheckAllSums
	(	0x10
	,	0x100
	)
);
