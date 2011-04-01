require File.expand_path('../test_helper', __FILE__)

class RespondToMissingTest < Test::Unit::TestCase
  module Mock
    def self.respond_to_missing?(method, include_private)
      method == :testing || super
    end
  end

  def test_should_respond_to_respond_to_missing
    assert respond_to?(:respond_to_missing?)
  end

  def test_should_pass_failing_respond_to_calls_to_respond_to_missing
    assert Mock.respond_to?(:testing)
    assert !Mock.respond_to?(:undefined_method)
  end
end