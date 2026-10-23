#!/usr/bin/env python3
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of either the GNU Lesser General Public License Version 3
# or the Perl Artistic License Version 2.0.
# SPDX-FileCopyrightText: 2026 Wilson Snyder
# SPDX-License-Identifier: LGPL-3.0-only OR Artistic-2.0

import vltest_bootstrap

test.scenarios('vlt')

test.compile(verilator_flags2=['--output-split 1'])

# Inherited member types are needed only by the implementation (for 'clone')
derived = f"{test.obj_dir}/{test.vm_prefix}___024unit__03a__03aDerived"
test.file_grep_not(f"{derived}.h", r"class \S*Other;")
test.file_grep(f"{derived}__0.cpp", r"#include \"\S*Other\.h\"")

test.execute()

test.passes()
