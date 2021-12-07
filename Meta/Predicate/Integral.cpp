export module Meta.Predicate.Integral;

export import Meta.Predicate.UnsignedIntegral;
export import Meta.Predicate.SignedIntegral;

export namespace
	Meta
{
	Term constexpr inline
		IsIntegral
	=	IsUnsignedIntegral
	or	IsSignedIntegral
	;
}
