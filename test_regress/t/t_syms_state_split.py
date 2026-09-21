#!/usr/bin/env python3
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of either the GNU Lesser General Public License Version 3
# or the Perl Artistic License Version 2.0.
# SPDX-FileCopyrightText: 2026 Wilson Snyder
# SPDX-License-Identifier: LGPL-3.0-only OR Artistic-2.0

import vltest_bootstrap

test.scenarios('simulator')

test.compile(verilator_flags2=["--fno-inline"])

# The symbol table state base class holds no module instances, so it includes no
# module headers. Keeping it that way is the point of the split.
state_h = test.obj_dir + "/" + test.vm_prefix + "__SymsState.h"
test.file_grep_not(state_h, r'#include "' + test.vm_prefix + r'_')

# The full symbol table derives from it, and is what includes the module headers
test.file_grep(test.obj_dir + "/" + test.vm_prefix + "__Syms.h",
               r'class .*' + test.vm_prefix + r'__Syms\b.*: public ' + test.vm_prefix +
               r'__SymsState')

# The precompiled header must stay design independent, or every translation unit
# depends on every module header again
test.file_grep_not(test.obj_dir + "/" + test.vm_prefix + "__pch.h", r'__Syms\.h')

# A module implementation file that references no other scope does not need the
# complete symbol table, and so does not depend on the design's module set
test.file_grep_not(test.obj_dir + "/" + test.vm_prefix + "_sub__Slow.cpp", r'__Syms\.h')

# One that does reference another scope takes the complete type, by a downcast that
# costs nothing at run time
test.file_grep(test.obj_dir + "/" + test.vm_prefix + "___024root__0.cpp",
               r'static_cast<' + test.vm_prefix + r'__Syms\*>\(vlSelf->vlSymsp\)')

# Scope classes hold no pointer to singleton package scopes, which are always
# reached through the symbol table
test.file_grep_not(test.obj_dir + "/" + test.vm_prefix + "___024root.h", r'__Vclpkg\* ')

test.execute()

test.passes()
