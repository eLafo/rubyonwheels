require 'ruby_on_wheels/version'
require 'ruby_on_wheels/array'

module RubyOnWheels
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'}, ['Hello from Ruby on Wheels!']]
    end
  end
end
