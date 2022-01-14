export module Pack.MakeSequence;

export import Pack.Transform;
export import Pack.Normalize;
export import Pack.Size;
export import Pack.Instance;
export import Pack.Sequence;
export import Meta.ValueInfo;
export import Stateless.Tuple;
export import Std.Concepts;
export import Std.Size;
export import Std;

export namespace
	Pack
{
	/// create a sequence of indices with the given length
	template
		<	Std::USizeType
				t_nLength
		>
	constexpr
	SequenceInstance auto
		MakeIndexSequence
		(	Meta::ValueInfo
			<	t_nLength
			>
		)
	{	return
			Normalize
			(	std::make_index_sequence
				<	t_nLength
				>{}
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
	constexpr
	SequenceInstance auto
		MakeOffsetIndexSequence
		(	Meta::SizeInfo auto
				i_vLength
		,	Meta::SizeInfo auto
				i_vOffset
		)
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
	constexpr
	SequenceInstance auto
		MakeIndexPackSequenceFor
		(	Instance auto
				i_vPack
		)
	{	return
			MakeIndexSequence
			(	Size
				(	i_vPack
				)
			)
		;
	}
}
