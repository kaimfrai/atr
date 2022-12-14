/*	This file has been modified from <boost/mpl/aux_/ptr_to_ref.hpp> (boost 1.74).
 *	The keyword static was replaced with inline, as a function with internal linkage in a header unit cannot be found outside of it.
 */

#ifndef BOOST_MPL_AUX_PTR_TO_REF_HPP_INCLUDED
#define BOOST_MPL_AUX_PTR_TO_REF_HPP_INCLUDED

// Copyright Aleksey Gurtovoy 2003-2004
//
// Distributed under the Boost Software License, Version 1.0.
// (See accompanying file LICENSE_1_0.txt or copy at
// http://www.boost.org/LICENSE_1_0.txt)
//
// See http://www.boost.org/libs/mpl for documentation.

// $Id$
// $Date$
// $Revision$

#include <boost/mpl/aux_/static_cast.hpp>
#include <boost/mpl/aux_/config/msvc.hpp>
#include <boost/mpl/aux_/config/workaround.hpp>


#if BOOST_WORKAROUND(BOOST_MSVC, BOOST_TESTED_AT(1400)) \
||  ( BOOST_WORKAROUND(__EDG_VERSION__, <= 245) \
&& !(defined(__STD_STRICT_ANSI) \
|| defined(__STD_STRICT_ANSI_ERRORS)) )

#   define BOOST_MPL_AUX_PTR_TO_REF(X) \
*BOOST_MPL_AUX_STATIC_CAST(X*, 0) \
/**/

#else

#   define BOOST_MPL_AUX_PTR_TO_REF(X) \
aux::ptr_to_ref(BOOST_MPL_AUX_STATIC_CAST(X*, 0)) \
/**/

#endif


namespace boost { namespace mpl { namespace aux {

	template< typename T > inline /*static*/ T const& ptr_to_ref(T*);

}}}

#endif // BOOST_MPL_AUX_PTR_TO_REF_HPP_INCLUDED
