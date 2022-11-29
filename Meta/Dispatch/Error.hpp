export module Meta.Dispatch:Error;

export import Meta.Arithmetic;

export import Std;

export namespace
	Meta::Dispatch
{
	struct
		Error
	:	std::invalid_argument
	{
	protected:
		explicit(true)
		(	Error
		)	(	std::string const
				&	i_sMessage
			)
		:	std::invalid_argument
			{	i_sMessage
			}
		{}
	};

	struct
		UnkownCharError
	:	Error
	{
		explicit(true)
		(	UnkownCharError
		)	(	std::string_view
					i_sParsed
			,	USize
					i_nPosition
			)
		:	Error
			{	std::format
				(	"Unknown character \"{}\" at position {} while parsing \"{}\"!"
				,	i_sParsed[i_nPosition]
				,	i_nPosition
				,	i_sParsed
				)
			}
		{}
	};

	struct
		PathBlockedError
	:	Error
	{
		explicit(true)
		(	PathBlockedError
		)	(	std::string_view
					i_sString
			,	USize
					i_nPosition
			)
		:	Error
			{	std::format
				(	"Dispatch path for \"{}\" was blocked while parsing \"{}\"!"
				,	i_sString.substr(0uz, i_nPosition)
				,	i_sString
				)
			}
		{}
	};

	struct
		NoDefinitionError
	:	Error
	{
		explicit(true)
		(	NoDefinitionError
		)	(	std::string_view
					i_sParsed
			)
		:	Error
			{	std::format
				(	"No dispatch definition found for \"{}\""
				,	i_sParsed
				)
			}
		{}
	};
}
