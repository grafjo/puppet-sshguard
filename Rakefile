require 'rake'

require 'puppet-syntax/tasks/puppet-syntax'
require 'puppet-lint/tasks/puppet-lint'

PuppetLint.configuration.send('disable_autoloader_layout')
PuppetLint.configuration.send("disable_class_inherits_from_params_class")
PuppetLint.configuration.send('disable_class_parameter_defaults')
PuppetLint.configuration.log_format = "%{path}:%{linenumber}:%{check}:%{KIND}:%{message}"

task :default => [:syntax, :lint]
