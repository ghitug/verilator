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

test.compile()

test.execute()


def class_header(name):
    return f"{test.obj_dir}/{test.vm_prefix}___024unit__03a__03a{name}__Vclpkg.h"


# Interface classes cannot be instantiated, so they must not get a clone()
for name in ("Ifc", "IfcExt"):
    test.file_grep_not(class_header(name), r'\bclone\(\)')
# Control: concrete class does get one, so the checks above are not vacuous
test.file_grep(class_header("Cls"), r'\bclone\(\)')

test.passes()
