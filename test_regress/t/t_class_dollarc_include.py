#!/usr/bin/env python3
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of either the GNU Lesser General Public License Version 3
# or the Perl Artistic License Version 2.0.
# SPDX-FileCopyrightText: 2026 Wilson Snyder
# SPDX-License-Identifier: LGPL-3.0-only OR Artistic-2.0

import vltest_bootstrap
import re

test.scenarios('vlt')

test.compile()

# $c may reference any class, so only files with functions using it include all classes
include_unrelated = r'#include "' + test.vm_prefix + r'___024unit__03a__03aUnrelated\.h"'
for filename in test.glob_some(f"{test.obj_dir}/{test.vm_prefix}___024unit__03a__03aCls__*.cpp"):
    contents = test.file_contents(filename)
    if re.search(r'::\w*uses_dollar_c\(', contents):
        test.file_grep(filename, include_unrelated)
    if re.search(r'::\w*plain\(', contents):
        test.file_grep_not(filename, include_unrelated)

test.execute()

test.passes()
