export module Meta.Bit.Array;

import Meta.Bit.ElementReference;
import Meta.Bit.Reference;
import Meta.Bit.Iterator;
import Meta.Bit.Field;
import Meta.Bit.Field.Arithmetic;
import Meta.Bit.Field.Compare;
import Meta.Bit.Index;
import Meta.Bit.Index.Compare;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Size;
import Meta.Arithmetic.Integer;
import Meta.Byte.Buffer;

import std;

export namespace
	Meta::Bit
{
	template
		<	typename
				t_tArray
		,	BitSize
				t_vSize
		,	USize
				t_vExtent
		,	ByteIndex
				t_vOffset
		>
	struct
		Array
	{
		auto static constexpr inline
			ElementSize
		=	t_vSize
		;
		auto static constexpr inline
			Extent
		=	t_vExtent
		;
		auto static constexpr inline
			Offset
		=	t_vOffset
		;

		BitSize static constexpr inline
			BitSize
		{	ElementSize
		*	t_vExtent
		};

		auto static constexpr inline
			BufferSize
		=	ElementSize
		*	t_vExtent
		+	t_vOffset
		;

		t_tArray
			m_aUnderlyingArray
		;

		using
			BufferElement
		=	::std::remove_pointer_t
			<	decltype(+m_aUnderlyingArray)
			>
		;

		auto static constexpr inline
			MaximumOffset
		{	[]	<	::std::size_t
					...	t_vpIndex
				>(	::std::index_sequence<t_vpIndex...>
				)
			{	return
				::std::max
				({	IndexCast<ByteIndex>
					(	ElementSize
					*	t_vpIndex
					+	Offset
					)
				.	Remainder
					...
				});
			}(	// include offset of one-past-the-end for end() iterator value
				::std::make_index_sequence<Extent + 1uz>{}
			)
		};

		using
			iterator
		=	Iterator
			<	BufferElement
			,	ElementSize
			,	MaximumOffset
			>
		;
		using
			const_iterator
		=	Iterator
			<	BufferElement const
			,	ElementSize
			,	MaximumOffset
			>
		;
		using
			reference
		=	typename
				iterator
			::	reference
		;
		using
			difference_type
		=	typename
				iterator
			::	difference_type
		;
		using
			value_type
		=	typename
				iterator
			::	value_type
		;

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()
			noexcept
		->	iterator
		{	return
			iterator
			{	+m_aUnderlyingArray
			,	Offset
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const
			noexcept
		->	const_iterator
		{	return
			const_iterator
			{	+m_aUnderlyingArray
			,	Offset
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()
			noexcept
		->	iterator
		{	return
				begin()
			+	static_cast<difference_type>(t_vExtent)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const
			noexcept
		->	const_iterator
		{	return
				begin()
			+	static_cast<difference_type>(t_vExtent)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	difference_type
					i_vIndex
			)	&
			noexcept
		->	reference
		{	return begin()[i_vIndex];	}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	difference_type
					i_vIndex
			)	const&
			noexcept
		->	value_type
		{	return begin()[i_vIndex];	}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	difference_type
					i_vIndex
			)	&&
			noexcept
		->	value_type
		{	return begin()[i_vIndex];	}

		[[nodiscard]]
		auto constexpr inline
		(	get
		)	()	const
			noexcept
		->	auto
		{	return
				Reference
				<	Field<BitSize>
				,	Offset
				>
			::	Read
				(	+
					m_aUnderlyingArray
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	all
		)	()	const
			noexcept
		->	bool
		{	return
				get()
			==	compl
				decltype(get())
				{}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	any
		)	()	const
			noexcept
		->	bool
		{	return
				get()
			!=	decltype(get())
				{}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	none
		)	()	const
			noexcept
		->	bool
		{	return
				get()
			==	decltype(get())
				{}
			;
		}
	};

	template
		<	BitSize
				t_vSize
		,	USize
				t_vExtent
		,	ByteIndex
				t_vOffset
			=	0_bdx
		>
	using
		ArrayReference
	=	Array
		<	::std::byte* const
		,	t_vSize
		,	t_vExtent
		,	t_vOffset
		>
	;

	template
		<	BitSize
				t_vSize
		,	USize
				t_vExtent
		,	ByteIndex
				t_vOffset
			=	0_bdx
		>
	using
		ArrayConstReference
	=	Array
		<	::std::byte const* const
		,	t_vSize
		,	t_vExtent
		,	t_vOffset
		>
	;

	template
		<	BitSize
				t_vSize
		,	USize
				t_vExtent
		>
	using
		ArrayValue
	=	Array
		<	Byte::Buffer
			<	t_vSize
			*	t_vExtent
			>
		,	t_vSize
		,	t_vExtent
		,	0_bdx
		>
	;

	template
		<	BitSize
				t_vSize
		,	USize
				t_vExtent
		,	ByteIndex
				t_vOffset
		>
	[[nodiscard]]
	auto constexpr inline
	(	CopyArray
	)	(	ArrayConstReference<t_vSize, t_vExtent, t_vOffset>
				i_vBuffer
		)
		noexcept
	->	ArrayValue<t_vSize, t_vExtent>
	{
		// optimization using bit shift of an integer type
		if	constexpr
			(	i_vBuffer.BufferSize
			<=	Memory::SizeOf<UIntMax>
			)
		{
			return
			ArrayValue<t_vSize, t_vExtent>
			{	Byte::Buffer
				{	i_vBuffer
				.	get()
				}
			};
		}
		else
		{
			ArrayValue<t_vSize, t_vExtent>
				vResult
			{};
			::std::copy
			(	i_vBuffer.begin()
			,	i_vBuffer.end()
			,	vResult.begin()
			);
			return
				vResult
			;
		}
	}
}
