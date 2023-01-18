export module Meta.ID.StringLiteral;

import Meta.Size;
import Meta.Buffer.Iterator;
import Meta.Token.Array;
import Meta.Data.Aggregate;

import Std;

export namespace
	Meta
{
	template
		<	Meta::USize
				t_nExtent
		>
	struct
		StringLiteral final
	:	Aggregate
		<	ArrayEntity
			<	char
			,	t_nExtent
			>
		>
	{
		using
			AggregateType
		=	Aggregate
			<	ArrayEntity
				<	char
				,	t_nExtent
				>
			>
		;

		explicit(false) constexpr
		(	StringLiteral
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	StringLiteral
		)	(	char const
				*	i_aString
			)
			noexcept
		:	AggregateType
			{	Data::MakeArrayAggregate<ArrayEntity<char, t_nExtent>>
				(	Buffer::Iterator{i_aString}
				)
			}
		{}

		auto constexpr
		(	starts_with
		)	(	std::string_view
					i_vPrefix
			)	const
		->	bool
		{	return
				std::string_view
				{	this->data()
				,	t_nExtent
				}
			.	starts_with
				(	i_vPrefix
				)
			;
		}

		auto constexpr
		(	ends_with
		)	(	std::string_view
					i_vPrefix
			)	const
		->	bool
		{	return
				std::string_view
				{	this->data()
				,	t_nExtent
				}
			.	ends_with
				(	i_vPrefix
				)
			;
		}
	};

	template
		<	USize
				t_nExtent
		>
	(	StringLiteral
	)	(	StringLiteral<t_nExtent>
		)
	->	StringLiteral
		<	t_nExtent
		>
	;

	template
		<	USize
				t_nExtent
		>
	(	StringLiteral
	)	(	char const
			(&)	[	t_nExtent
				]
		)
	->	StringLiteral
		<	t_nExtent
		-	1uz
		>
	;
}
