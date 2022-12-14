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
				(	"Dispatch path for \"{}\" was blocked at \"{}\" !"
				,	i_sString
				,	i_sString.substr(0uz, i_nPosition)
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
