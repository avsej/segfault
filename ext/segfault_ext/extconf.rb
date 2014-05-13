# encoding: UTF-8

ENV['RC_ARCHS'] = '' if RUBY_PLATFORM =~ /darwin/

require 'mkmf'

def define(macro, value = nil)
  $defs.push("-D #{[macro.upcase, Shellwords.shellescape(value)].compact.join('=')}")
end

$CFLAGS << ' -O0 -ggdb3 -pedantic ' if ENV['DEBUG']

create_makefile('segfault_ext')
