export module Test.CMake.Virtual;

export import :Interface;

export namespace
	Test
{
	struct Impl : Interface
	{
		~Impl() override;
	};
}
