require 'pathname'

$:.unshift Pathname(__FILE__).dirname.join('..', 'lib').to_s

require 'less'

RSpec.configure do |rspec|
  rspec.mock_with :rspec do |mocks|
    mocks.yield_receiver_to_any_instance_implementation_blocks = true
  end
end
