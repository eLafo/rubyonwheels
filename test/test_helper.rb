require 'rack/test'

# Always use local Rulers first
this_dir = File.join(File.dirname(__FILE__), "..")
$LOAD_PATH.unshift File.expand_path(this_dir)

require 'ruby_on_wheels'