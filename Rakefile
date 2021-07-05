require "bundler/gem_tasks"
require "rake/testtask"
require "rake/extensiontask"

require 'thermite/tasks'

Thermite::Tasks.new

Rake::ExtensionTask.new("generator") do |ext|
  ext.ext_dir = 'ext/generator'
  ext.lib_dir = "lib/generator"
end
