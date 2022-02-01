export module Pack.MakeSequence;

export import Pack.Transform;
export import Pack.Normalize;
export import Pack.Size;
export import Pack.Instance;
export import Meta.ValueInfo;
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
		);
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
		,	[=]	(	Meta::SizeInfo auto
						i_vIndex
				)
			->	Meta::SizeInfo auto
			{	return
					i_vIndex
				+	i_vOffset
				;
			}
		);
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
