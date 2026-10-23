#!/usr/bin/env python3
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of either the GNU Lesser General Public License Version 3
# or the Perl Artistic License Version 2.0.
# SPDX-FileCopyrightText: 2026 Wilson Snyder
# SPDX-License-Identifier: LGPL-3.0-only OR Artistic-2.0

import os

import vltest_bootstrap

test.scenarios('vlt')

test.compile()

# Neither class has static storage
for cls in ("Plain", "WithTypedef"):
    pkg_hdr = f"{test.obj_dir}/{test.vm_prefix}_t__03a__03a{cls}__Vclpkg.h"
    if os.path.exists(pkg_hdr):
        test.error(f"{cls}: class package emitted: {pkg_hdr}")

test.execute()

test.passes()
