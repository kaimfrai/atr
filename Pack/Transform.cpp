export module Pack.Transform;

export import Pack.Apply;
export import Pack.Concat;

export import Meta.Concept.Category;

export namespace
	Pack
{
	/// applies the same transformation to all info objects of a pack
	template
		<	Meta::ProtoValue
				t_tTransform
		>
	struct
		Transformer
	{
		[[no_unique_address]]
		t_tTransform
			TransformObject
		;

		/// deduce template from argument
		explicit constexpr
		(	Transformer
		)	(	t_tTransform const
				&	i_rTransform
			)
		:	TransformObject
			{	i_rTransform
			}
		{}

		explicit constexpr
		(	Transformer
		)	(	t_tTransform
				&&	i_rTransform
			)
		:	TransformObject
			{	static_cast<t_tTransform&&>
				(	i_rTransform
				)
			}
		{}

		/// applies the transformation to all info objects in the pack and returns a transformed pack
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Meta::ProtoValue auto&&
				...	i_rpInfo
			)	const
		->	Instance auto
		{	return
			Concat
			(	TransformObject
				(	static_cast<decltype(i_rpInfo)>
					(	i_rpInfo
					)
				)
				...
			);
		}
	};

	template
		<	Meta::ProtoValue
				t_tTransform
		>
	(	Transformer
	)	(	t_tTransform const&
		)
	->	Transformer
		<	t_tTransform
		>
	;

	template
		<	Meta::ProtoValue
				t_tTransform
		>
	(	Transformer
	)	(	t_tTransform&&
		)
	->	Transformer
		<	t_tTransform
		>
	;

	///	applies all transformations in sequence to the pack
	[[nodiscard]]
	auto constexpr
	(	Transform
	)	(	Instance auto
				i_vPack
		,	auto&&
			...	i_rpTransform
		)
	->	Instance auto
	{	return
		Apply
		(	i_vPack
		,	Transformer
			{	static_cast<decltype(i_rpTransform)>
				(	i_rpTransform
				)
			}
			...
		);
	}
}
