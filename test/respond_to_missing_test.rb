require File.expand_path('../test_helper', __FILE__)

class RespondToMissingTest < Test::Unit::TestCase
  module Mock
    def self.respond_to_missing?(method_name, include_private)
      method_name == :testing || super
    end
  end

  module NonBooleanMock
    def self.respond_to_missing?(method_name, include_private)
      'test'
    end
  end

  def test_should_respond_to_respond_to_missing
    assert respond_to?(:respond_to_missing?)
  end

  def test_should_pass_failing_respond_to_calls_to_respond_to_missing
    assert Mock.respond_to?(:testing)
    assert !Mock.respond_to?(:undefined_method)
  end

  def test_should_always_return_a_boolean
    assert_equal true, NonBooleanMock.respond_to?(:testing)
  end
end