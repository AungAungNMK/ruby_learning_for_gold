require 'test/unit'
require 'foo'
class TestFoo < Test::Unit::TestCase
    def setup
        @foo = Foo.new
    end
    def teardown
    end
    def test_foo
        assert_equal("foo",@foo.foo)
    end
    def test_hello
        assert_equal("Hello world.", @foo.hello("world"))
    end
end
=begin
assert => assert(boolean , message = nil)

assert_equal => assert_equal(expected , actual, message = nil)

assert_not_equal => assert_not_equal(expected, actual, message = " ")

assert_instance_of => assert_instance_of(klass, object, message = " ")

assert_nil => assert_nil(object, message = " ")

assert_not_nil => assert_not_nil(object, message = "")

assert_kind_of => assert_kind_of(klass, object, message = "")

assert_match => assert_match(pattern, string, message = "")

assert_not_match => assert_not_match(pattern, object, message = "")

assert_raise => assert_raise(expected_exception_klass, message = "")

assert_nothing_raised => assert_nothing_raised(*args) { ... }

flunk => flunk(message = "Flunked")

assert_throws => (expected_symbol,message = "") { ...}

assert_nothing_thrown => (message="") { .. }

#assert_raise example
def test_assert_raise
    assert_raise(StandardError)
    raise StandardError
end
=end
