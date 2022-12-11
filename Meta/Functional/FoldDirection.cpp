export module Meta.Functional:FoldDirection;

export namespace
	Meta::Functional
{
	enum class
		EFoldDirection
	{	Left
	,	Right
	};

	auto constexpr inline
		LeftFold
	=	EFoldDirection::Left
	;

	auto constexpr inline
		RightFold
	=	EFoldDirection::Right
	;
}
