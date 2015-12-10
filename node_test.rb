gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'node'
# require 'pry'

class NodeTest < Minitest::Test
  def test_passing
    assert_equal 1,1
  end

  # def test_data_has_nil
  #   node = Node.new
  #   assert_equal nil, node.data
  # end

  def test_has_data
    node = Node.new("hello")
    assert_equal "hello", node.data
  end

  def test_can_have_different_data
    # skip
    node1 = Node.new("bye")
    assert_equal "bye", node1.data
  end

  def test_has_default_link_equal_to_nil
    # skip
    node = Node.new("hello")
    assert_equal nil, node.next_node
  end

  def test_has_link_to_next_node
    # skip
    node1 = Node.new("hello", node2)
    node2 = Node.new("bye")
    # binding.pry
    assert_equal nil, node2.next_node
    assert_equal "bye", node2.data
    assert_equal "bye", node1.next_node.data
  end
end








































  #create a node
  #create a node with one parameter
  #create a node with two parameters
  #create a second node where the first node points to the second node
