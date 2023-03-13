export module Meta.Bit.Array;

import Meta.Bit.ElementReference;
import Meta.Bit.Reference;
import Meta.Bit.Iterator;
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

import Std;

export namespace
	Meta::Bit
{
	template
		<	typename
				t_tArray
		,	BitSize
				t_nSize
		,	USize
				t_nExtent
		,	ByteIndex
				t_nOffset
		>
	struct
		Array
	{
		static auto constexpr
			ElementSize
		=	t_nSize
		;
		static auto constexpr
			Extent
		=	t_nExtent
		;
		static auto constexpr
			Offset
		=	t_nOffset
		;

		static BitSize constexpr
			BitSize
		{	ElementSize
		*	t_nExtent
		};

		static auto constexpr
			BufferSize
		=	ElementSize
		*	t_nExtent
		+	t_nOffset
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

		static auto constexpr
			MaximumOffset
		{	[]	<	::std::size_t
					...	t_npIndex
				>(	::std::index_sequence<t_npIndex...>
				)
			{	return
				::std::max
				({	IndexCast<ByteIndex>
					(	ElementSize
					*	t_npIndex
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
		auto constexpr
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
		auto constexpr
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
		auto constexpr
		(	end
		)	()
			noexcept
		->	iterator
		{	return
				begin()
			+	static_cast<difference_type>(t_nExtent)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const
			noexcept
		->	const_iterator
		{	return
				begin()
			+	static_cast<difference_type>(t_nExtent)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	difference_type
					i_nIndex
			)	&
			noexcept
		->	reference
		{	return begin()[i_nIndex];	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	difference_type
					i_nIndex
			)	const&
			noexcept
		->	value_type
		{	return begin()[i_nIndex];	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	difference_type
					i_nIndex
			)	&&
			noexcept
		->	value_type
		{	return begin()[i_nIndex];	}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	auto
		{	return
				Reference
				<	BitSize
				,	Offset
				>
			::	Read
				(	+
					m_aUnderlyingArray
				)
			;
		}

		[[nodiscard]]
		auto constexpr
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
		auto constexpr
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
		auto constexpr
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
				t_nSize
		,	USize
				t_nExtent
		,	ByteIndex
				t_nOffset
			=	0_bdx
		>
	using
		ArrayReference
	=	Array
		<	::std::byte* const
		,	t_nSize
		,	t_nExtent
		,	t_nOffset
		>
	;

	template
		<	BitSize
				t_nSize
		,	USize
				t_nExtent
		,	ByteIndex
				t_nOffset
			=	0_bdx
		>
	using
		ArrayConstReference
	=	Array
		<	::std::byte const* const
		,	t_nSize
		,	t_nExtent
		,	t_nOffset
		>
	;

	template
		<	BitSize
				t_nSize
		,	USize
				t_nExtent
		>
	using
		ArrayValue
	=	Array
		<	Byte::Buffer
			<	t_nSize
			*	t_nExtent
			>
		,	t_nSize
		,	t_nExtent
		,	0_bdx
		>
	;

	template
		<	BitSize
				t_nSize
		,	USize
				t_nExtent
		,	ByteIndex
				t_nOffset
		>
	[[nodiscard]]
	auto constexpr
	(	CopyArray
	)	(	ArrayConstReference<t_nSize, t_nExtent, t_nOffset>
				i_vBuffer
		)
		noexcept
	->	ArrayValue<t_nSize, t_nExtent>
	{
		// optimization using bit shift of an integer type
		if	constexpr
			(	i_vBuffer.BufferSize
			<=	Memory::SizeOf<UIntMax>
			)
		{
			return
			ArrayValue<t_nSize, t_nExtent>
			{	Byte::Buffer
				{	i_vBuffer
				.	get()
				}
			};
		}
		else
		{
			ArrayValue<t_nSize, t_nExtent>
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