require 'bundler/gem_tasks'
require 'rake/extensiontask'

def gemspec
  @clean_gemspec ||= begin
    filename = File.expand_path('segfault.gemspec', File.dirname(__FILE__))
    instance_eval(File.read(filename))
  end
end

Rake::ExtensionTask.new('segfault_ext', gemspec) do |ext|
  ext.ext_dir = 'ext/segfault_ext'
  CLEAN.include "#{ext.lib_dir}/*.#{RbConfig::CONFIG['DLEXT']}"
end
desc 'Start an irb session and load the library'
task console: :compile do
  debug_lib = begin
                require 'debugger'
                '-rrubygems -rdebugger'
              rescue LoadError
                begin
                  require 'byebug'
                  '-rrubygems -rbyebug'
                rescue LoadError
                end
              end
  exec "irb #{debug_lib} -I lib -r'segfault'"
end

task default: :console
