require "helper"
require "fluent/plugin/in_cloudwatch_log.rb"

class CloudwatchLogInputTest < Test::Unit::TestCase
  setup do
    Fluent::Test.setup
  end

  test "failure" do
    flunk
  end

  private

  def create_driver(conf)
    Fluent::Test::Driver::Input.new(Fluent::Plugin::CloudwatchLogInput).configure(conf)
  end
end
