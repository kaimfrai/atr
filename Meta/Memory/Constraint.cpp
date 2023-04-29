export module Meta.Memory.Constraint;

import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Scale;
import Meta.Memory.Alignment;
import Meta.Size;

import Std;

namespace
	Meta::Memory
{
	auto constexpr inline
		ByteAlign
	=	::std::countr_zero
		(	static_cast<::Meta::USize>
			(	BitSize
				(	1_byte
				)
			.	Value
			)
		)
	+	1
	;
}

export namespace
	Meta::Memory
{
	struct
		Constraint
	{
		Alignment
			Align
		;
		BitSize
			Size
		;

		[[nodiscard]]
		auto constexpr
		(	IsAligned
		)	()	const
			noexcept
		{	return
				Align
			>	0_align
			;
		}

		[[nodiscard]]
		auto constexpr
		(	IsStateful
		)	()	const
			noexcept
		{	return
				Size
			>	0_bit
			;
		}

		[[nodiscard]]
		friend
		auto constexpr
		(	operator
			<=>
		)	(	Constraint
			,	Constraint
			)
		=	default;
	};

	//	customization point
	template
		<	typename
				t_tEntity
		>
	Constraint constexpr inline
		Constraint_Of
	=	[]{	if	constexpr
				(	::std::is_const_v
					<	t_tEntity
					>
				or	::std::is_volatile_v
					<	t_tEntity
					>
				)
			{	return
				Constraint_Of
				<	::std::remove_cv_t
					<	t_tEntity
					>
				>;
			}
			else
			if	constexpr
				(	::std::is_array_v
					<	t_tEntity
					>
				)
			{
				auto
					vConstraint
				=	Constraint_Of
					<	::std::remove_all_extents_t
						<	t_tEntity
						>
					>
				;

				(	vConstraint.Size
				*=	::std::extent_v
					<	t_tEntity
					>
				);

				return
					vConstraint
				;
			}
			else
			if	constexpr
				(	::std::is_reference_v
					<	t_tEntity
					>
				)
			{	return
				Constraint_Of
				<	::std::add_pointer_t
					<	t_tEntity
					>
				>;
			}
			else
			if	constexpr
				(	::std::is_object_v
					<	t_tEntity
					>
				)
			{
				// necessary to check unions
				struct
					Wrapper
				{
					[[no_unique_address]]
					t_tEntity _;
				};

				if constexpr
					(	not
						::std::is_empty_v
						<	Wrapper
						>
					)
				{	return
					Constraint
					{	.	Align
						=	{	::std::countr_zero
								(	alignof
									(	t_tEntity
									)
								)
							+	ByteAlign
							}
					,	.	Size
						=	ByteSize
							{	sizeof
								(	t_tEntity
								)
							}
					};
				}
			}

			return
			Constraint
			{	.Align
				=	0_align
			,	.Size
				=	0_bit
			};
		}()
	;

	template
		<>
	Constraint constexpr inline
		Constraint_Of
		<	bool
		>
	{	1_align
	,	1_bit
	};

	template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		BitSize_Of
	=		Constraint_Of
			<	t_tEntity
			>
		.	Size
	;

	template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		BitAlign_Of
	=		Constraint_Of
			<	t_tEntity
			>
		.	Align
	;
}
