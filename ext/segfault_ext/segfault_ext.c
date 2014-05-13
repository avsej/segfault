/* -*- Mode: C++; tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*- */

#include <ruby.h>

static VALUE sg_segfault_abort(VALUE self)
{
    abort();
    return Qnil;
}

static VALUE sg_segfault_dereference_null(VALUE self)
{
    VALUE ary = 0;
    return rb_ary_push(ary, Qtrue);
}

void Init_segfault_ext()
{
    VALUE mSegfault = rb_define_module("Segfault");
    rb_define_singleton_method(mSegfault, "abort", sg_segfault_abort, 0);
    rb_define_singleton_method(mSegfault, "dereference_null",
                               sg_segfault_dereference_null, 0);
}
