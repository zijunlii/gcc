## Linker script for GNU ld 2.11.94+ only.
##
## Copyright (C) 2002 Free Software Foundation, Inc.
##
## This file is part of the libstdc++ version 3 distribution.
##
## This file is part of the GNU ISO C++ Library.  This library is free
## software; you can redistribute it and/or modify it under the
## terms of the GNU General Public License as published by the
## Free Software Foundation; either version 2, or (at your option)
## any later version.
##
## This library is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License along
## with this library; see the file COPYING.  If not, write to the Free
## Software Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307,
## USA.


GLIBCPP_3.1 {

  global:

    # Names inside the 'extern' block are demangled names.
    # All but the last are terminated with a semicolon.
    extern "C++"
    {
      std::[A-Za-z]*;
      std::__throw_*;
      std::__basic_file*;
      std::__num_base*;
      std::__timepunct*
    };

    # Names not in an 'extern' block are mangled names.
    # operator new(unsigned)
    _Znwj;

    # operator delete(void*)
    _ZdlPv;

    # operator new[](unsigned)
    _Znaj;

    # operator delete[](void*)
    _ZdaPv;

    # vtable	
    _ZTV*;  
    _ZTT*;

    # typeinfo
    _ZTI*;
    _ZTS*;

    # function-scope static objects requires a guard variable.
    _ZGV*;

    # virtual function thunks
    _ZTh*;
    _ZTv*;
    _ZTc*;

    # libsupc++
    __cxa_*;
    __gxx_personality_v0;
    __dynamic_cast;

    # std::_S_rb_tree_red
    _ZSt14_S_rb_tree_red;

    # std::_S_rb_tree_black
    _ZSt16_S_rb_tree_black;

    # std::__stl_threshold
    _ZSt15__stl_threshold;

    # std::__stl_chunk_size
    _ZSt16__stl_chunk_size;

    # std::__convert_to_v
    _ZSt14__convert_to_v*;

  local:
    *;
};
