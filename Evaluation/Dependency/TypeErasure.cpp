module;

import <std.hpp>;

// necessary replacement of static keyword with inline
#include "type_erasure/patched_ptr_to_ref.hpp"
#include <boost/mpl/vector.hpp>
#include <boost/type_erasure/any.hpp>
#include <boost/type_erasure/member.hpp>

export module Evaluation.Dependency.TypeErasure;

export namespace
	boost::mpl
{
	using ::boost::mpl::vector;
}

export namespace
	boost::type_erasure
{
	using ::boost::type_erasure::_self;
	using ::boost::type_erasure::call;
	using ::boost::type_erasure::any;
	using ::boost::type_erasure::destructible;
}

export namespace
	boost::type_erasure::detail
{
	using ::boost::type_erasure::detail::choose_member_impl_t;
	using ::boost::type_erasure::detail::member_choose_interface;
}
