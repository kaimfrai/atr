export module Meta.Dispatch.Error;

import Meta.Size;

import Std;

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
				&	i_rMessage
			)
		:	std::invalid_argument
			{	i_rMessage
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
					i_rString
			,	USize
					i_vPosition
			)
		:	Error
			{	std::format
				(	"Dispatch path for \"{}\" was blocked at \"{}\" !"
				,	i_rString
				,	i_rString.substr(0uz, i_vPosition)
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
					i_rParsed
			)
		:	Error
			{	std::format
				(	"No dispatch definition found for \"{}\""
				,	i_rParsed
				)
			}
		{}
	};
}
