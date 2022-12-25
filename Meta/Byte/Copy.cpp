export module Meta.Byte.Copy;

import Meta.Byte.Buffer;
import Meta.Byte.AsBuffer;
import Meta.Byte.AsObject;
import Meta.Byte.Count;

export namespace
	Meta::Byte
{
	template
		<	Bytes
				t_nSize
		>
	struct
		Copy
	{
		Buffer<t_nSize>
			m_vValue
		;

		explicit(false) constexpr
		(	Copy
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	Copy
		)	(	auto const
				&	i_rValue
			)
			noexcept
		:	m_vValue
			{	AsBuffer
				(	i_rValue
				)
			}
		{}

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		explicit(false) constexpr
		(	operator t_tObject
		)	()	const
			noexcept
		requires
			(	SizeOf<t_tObject>
			==	t_nSize
			)
		{	return
			AsObject
			<	t_tObject
			>(	m_vValue
			);
		}

		friend auto constexpr
		(	begin
		)	(	Copy
				&	i_rCopy
			)
		->	decltype(auto)
		{	return i_rCopy.m_vValue.begin();	}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	Copy const
				&	i_rCopy
			)
		->	decltype(auto)
		{	return i_rCopy.m_vValue.begin();	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Copy
				&	i_rCopy
			)
		->	decltype(auto)
		{	return end(i_rCopy.m_vValue);	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Copy const
				&	i_rCopy
			)
		->	decltype(auto)
		{	return end(i_rCopy.m_vValue);	}
	};

	template
		<	typename
				t_tObject
		>
	(	Copy
	)	(	t_tObject const
			&
		)
	->	Copy
		<	SizeOf<t_tObject>
		>
	;
}
