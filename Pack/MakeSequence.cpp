export module Pack.MakeSequence;

export import Pack.Transform;
export import Pack.Normalize;
export import Pack.Size;
export import Pack.Instance;
export import Meta.ValueInfo;
export import Stateless.Tuple;
export import Std.Concepts;
export import Meta.Integer;
export import Meta.Index;
export import Std;

export namespace
	Pack
{
	/// create a sequence of indices with the given length
	template
		<	Meta::USize
				t_nLength
		>
	auto constexpr
		MakeIndexSequence
		(	Meta::ValueInfo
			<	t_nLength
			>
		)
	->	ValueInstance auto
	{	return
			Normalize
			(	Meta::Sequence
				<	t_nLength
				>()
			)
		;
	}

	/// creates a copy of the initial object for every call
	template
		<	Meta::InfoInstance
				t_tInitial
		>
	struct
		[[nodiscard]]
		DublicateGenerator
	{
		/// default constructor
		constexpr
			DublicateGenerator
			()
		=	default
		;

		/// deduce template from arguments
		constexpr
		explicit
			DublicateGenerator
			(	t_tInitial
			)
		{}

		/// every call results in a new dublicated value
		constexpr
		t_tInitial
			operator()
			(	Stateless::Type auto
			)	const
		{	return
				Stateless::Copy<t_tInitial>
			;
		}
	};

	/// creates a pack containing length copies of the initial object
	[[nodiscard]]
	constexpr
	Instance auto
		Dublicate
		(	Meta::InfoInstance auto
				i_vInitial
		,	Meta::SizeInfo auto
				i_vLength
		)
	{	return
			Transform
			(	MakeIndexSequence
				(	i_vLength
				)
			,	DublicateGenerator
				{	i_vInitial
				}
			)
		;
	}

	///	returns an IndexPack containing length indices that are offset by the given value
	[[nodiscard]]
	auto constexpr
		MakeOffsetIndexSequence
		(	Meta::SizeInfo auto
				i_vLength
		,	Meta::SizeInfo auto
				i_vOffset
		)
	->	ValueInstance auto
	{	return
			Transform
			(	MakeIndexSequence
				(	i_vLength
				)
			,	[]	(	Meta::SizeInfo auto
							i_vIndex
					)
				->	Meta::SizeInfo auto
				{	return
						i_vIndex
					+	Stateless::Copy<decltype(
							i_vOffset
						)>
					;
				}
			)
		;
	}

	///	returns an IndexPack starting from 0 with a length corresponding to the given pack
	[[nodiscard]]
	auto constexpr
		MakeIndexPackSequenceFor
		(	Instance auto
				i_vPack
		)
	->	ValueInstance auto
	{	return
			MakeIndexSequence
			(	Size
				(	i_vPack
				)
			)
		;
	}
}
