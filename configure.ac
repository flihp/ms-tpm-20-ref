# Copyright (c) 2017 Intel Corporation
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
# THE POSSIBILITY OF SUCH DAMAGE.

AC_INIT([ms-tpm-20-ref],
        [0.1],
        [https://github.com/microsoft/ms-tpm-20-ref/issues],
        [],
        [https://github.com/microsoft/ms-tpm-20-ref])
AC_CONFIG_MACRO_DIR([m4])
AC_PROG_CC
AC_PROG_LN_S
AC_PROG_RANLIB
AM_INIT_AUTOMAKE([foreign subdir-objects])
AC_CONFIG_FILES([Makefile])
AC_SUBST([DISTCHECK_CONFIGURE_FLAGS],[$ac_configure_args])

PKG_CHECK_MODULES([LIBCRYPTO], [libcrypto < 1.1 ])

AX_ADD_COMPILER_FLAG([-std=gnu11])
AX_ADD_COMPILER_FLAG([-Werror])
AX_ADD_COMPILER_FLAG([-Wall])
AX_ADD_COMPILER_FLAG([-Wformat-security])
AX_ADD_COMPILER_FLAG([-fstack-protector-all])
AX_ADD_COMPILER_FLAG([-fpic])
AX_ADD_COMPILER_FLAG([-fPIC])
AX_ADD_COMPILER_FLAG([-Wno-error=empty-body])
AX_ADD_COMPILER_FLAG([-Wno-error=expansion-to-defined])
AX_ADD_COMPILER_FLAG([-Wno-error=parentheses])
AX_ADD_COMPILER_FLAG([-Wno-error=pointer-to-int-cast])
AX_ADD_COMPILER_FLAG([-Wno-error=missing-braces])
AX_ADD_COMPILER_FLAG([-Wno-error=unused-result])

AX_ADD_LINK_FLAG([-Wl,--no-undefined])
AX_ADD_LINK_FLAG([-Wl,-z,noexecstack])
AX_ADD_LINK_FLAG([-Wl,-z,now])
AX_ADD_LINK_FLAG([-Wl,-z,relro])

AC_OUTPUT
