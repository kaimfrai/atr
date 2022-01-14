export module Pack.Sequence;

export import Pack.Empty;
export import Meta.MetaInfo;
export import Meta.ValueInfo;
export import <Stateless/Tuple.hpp>;
export import <Std/Concepts.hpp>;

export import Std;

export namespace
	Pack
{
	///	wraps around a sequence of values of the same type
	///	defines value-based operations
	template
		<	typename
				t_tElement
		,	t_tElement
			...	t_vpElement
		>
	struct
		[[nodiscard]]
		Sequence
	:	Stateless::Tuple
		<	Meta::ValueInfo
			<	t_vpElement
			>
			...
		>
	{
		using
			RawArrayType
		=	t_tElement
			const
			[	sizeof...(
					t_vpElement
				)
			]
		;

		static
		constexpr
		RawArrayType
			RawArray
		{	t_vpElement
			...
		};

		using
			StdArrayType
		=	std::array
			<	t_tElement
			,	sizeof...(
					t_vpElement
				)
			>
		;

		static
		constexpr
		StdArrayType
			StdArray
		{	t_vpElement
			...
		};

		/// converstion to raw array
		constexpr
			operator RawArrayType&
			()	const
		{	return
				RawArray
			;
		}

		/// converstion to std::array
		constexpr
			operator StdArrayType const&
			()	const
		{	return
				StdArray
			;
		}

		friend
		constexpr
		auto
			begin
			(	Sequence
			)
		{	return
				StdArray
				.	begin
					()
			;
		}

		friend
		constexpr
		auto
			end
			(	Sequence
			)
		{	return
				StdArray
				.	end
					()
			;
		}
	};

	///	stateless value pack instances
	template
		<	typename
				t_tSequencePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		PureSequenceInstance_Transform
	=	Stateless::Type
		<	t_tSequencePack
		,	t_t1Transform
		>
	and	Std::SequencePackInstance
		<	t_tSequencePack
		,	t_t1Transform
		>
	;

	///	stateless value pack instances
	template
		<	typename
				t_tSequencePack
		>
	concept
		PureSequenceInstance
	=	PureSequenceInstance_Transform
		<	t_tSequencePack
		,	std::type_identity_t
		>
	;

	/// sequence packs or empty packs
	template
		<	typename
				t_tSequencePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		SequenceInstance_Transform
	=	PureSequenceInstance_Transform
		<	t_tSequencePack
		,	t_t1Transform
		>
	or	PureEmptyInstance_Transform
		<	t_tSequencePack
		,	t_t1Transform
		>
	;

	/// sequence packs or empty packs
	template
		<	typename
				t_tSequencePack
		>
	concept
		SequenceInstance
	=	SequenceInstance_Transform
		<	t_tSequencePack
		,	std::type_identity_t
		>
	;
}
