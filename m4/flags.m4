dnl Copyright (c) 2017 Intel Corporation
dnl All rights reserved.
dnl
dnl Redistribution and use in source and binary forms, with or without
dnl modification, are permitted provided that the following conditions are met:
dnl
dnl 1. Redistributions of source code must retain the above copyright notice,
dnl this list of conditions and the following disclaimer.
dnl
dnl 2. Redistributions in binary form must reproduce the above copyright notice,
dnl this list of conditions and the following disclaimer in the documentation
dnl and/or other materials provided with the distribution.
dnl
dnl THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
dnl AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
dnl IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
dnl ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
dnl LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
dnl CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
dnl SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
dnl INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
dnl CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
dnl ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
dnl THE POSSIBILITY OF SUCH DAMAGE.

dnl AX_ADD_COMPILER_FLAG:
dnl   A macro to add a CFLAG to the EXTRA_CFLAGS variable. This macro will
dnl   check to be sure the compiler supprts the flag. Flags can be made
dnl   mandatory (configure will fail).
dnl $1: C compiler flag to add to EXTRA_CFLAGS.
dnl $2: Set to "required" to cause configure failure if flag not supported..
AC_DEFUN([AX_ADD_COMPILER_FLAG],[
    AX_CHECK_COMPILE_FLAG([$1],[
        EXTRA_CFLAGS="$EXTRA_CFLAGS $1"
        AC_SUBST([EXTRA_CFLAGS])],[
        AS_IF([test x$2 != xrequired],[
            AC_MSG_WARN([Optional CFLAG "$1" not supported by your compiler, continuing.])],[
            AC_MSG_ERROR([Required CFLAG "$1" not supported by your compiler, aborting.])]
        )],[
        -Wall -Werror]
    )]
)
dnl AX_ADD_PREPROC_FLAG:
dnl   Add the provided preprocessor flag to the EXTRA_CFLAGS variable. This
dnl   macro will check to be sure the preprocessor supports the flag.
dnl   The flag can be made mandatory by provideing the string 'required' as
dnl   the second parameter.
dnl $1: Preprocessor flag to add to EXTRA_CFLAGS.
dnl $2: Set to "required" t ocause configure failure if preprocesor flag
dnl     is not supported.
AC_DEFUN([AX_ADD_PREPROC_FLAG],[
    AX_CHECK_PREPROC_FLAG([$1],[
        EXTRA_CFLAGS="$EXTRA_CFLAGS $1"
        AC_SUBST([EXTRA_CFLAGS])],[
        AS_IF([test x$2 != xrequired],[
            AC_MSG_WARN([Optional preprocessor flag "$1" not supported by your compiler, continuing.])],[
            AC_MSG_ERROR([Required preprocessor flag "$1" not supported by your compiler, aborting.])]
        )],[
        -Wall -Werror]
    )]
)
dnl AX_ADD_LINK_FLAG:
dnl   A macro to add a LDLAG to the EXTRA_LDFLAGS variable. This macro will
dnl   check to be sure the linker supprts the flag. Flags can be made
dnl   mandatory (configure will fail).
dnl $1: linker flag to add to EXTRA_LDFLAGS.
dnl $2: Set to "required" to cause configure failure if flag not supported.
AC_DEFUN([AX_ADD_LINK_FLAG],[
    AX_CHECK_LINK_FLAG([$1],[
        EXTRA_LDFLAGS="$EXTRA_LDFLAGS $1"
        AC_SUBST([EXTRA_LDFLAGS])],[
        AS_IF([test x$2 != xrequired],[
            AC_MSG_WARN([Optional LDFLAG "$1" not supported by your linker, continuing.])],[
            AC_MSG_ERROR([Required LDFLAG "$1" not supported by your linker, aborting.])]
        )]
    )]
)
