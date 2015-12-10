
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require_relative 'linked_list'
# require_relative 'node'
require 'pry'

class List_Test < Minitest::Test

  def test_list_is_empty
    skip
    list = List.new
    assert_equal true, list.empty?
  end

  def test_list_in_not_empty
    # skip
    list = List.new("beep")

    assert_equal "beep", list.head.data
  end

  def test_list_has_a_head
    # skip
    list = List.new("beep")

    assert_equal "beep", list.head.data
  end

  def test_list_has_a_tail
    list = List.new("beep")
    list.append("bop")

    assert_equal "bop", list.tail.data
  end

  def test_can_append_node
    # skip
    list = List.new("beep")
    list.append("bop")

    assert_equal "bop", list.tail.data
  end

  def test_can_prepend_node
    # skip
    list = List.new("beep")
    list.prepend("bop")

    assert_equal "bop", list.head.data
  end

  def test_count_list
    # skip
    list = List.new("beep")
    list.prepend("bop")
    list.append("tee")

    assert_equal 3, list.count
  end

  def test_can_insert_node
    # skip
    list = List.new("beep")
    list.prepend("bop")
    list.append("bop")
    list.prepend("tee")

    assert_equal "tee bop beep pop pop bop", list.insert(2, "pop pop")
  end

  def test_can_pop_last_node_from_list
    # skip
    list = List.new("beep")
    list.prepend("bop")
    list.append("tee")


    assert_equal "tee", list.pop
    assert_equal 2, list.count
  end
  
  def test_can_pop_last_node_from_list_if_node_is_head
    # skip
    list = List.new("beep")

    assert_equal "beep", list.pop
  end

  def test_can_find_a_node
    # skip
    list = List.new("beep")
    list.prepend("bop")
    list.append("tee")

    assert_equal "bop", list.find(1)
    assert_equal "beep", list.find(2)

  end

  def test_retuens_all_elements_in_the_list
    # skip
    list = List.new("beep")
    list.prepend("bop")
    list.append("tee")

    assert_equal "bop beep tee", list.all
  end

  def test_if_list_includes_a_node
    # skip
    list = List.new("beep")
    list.prepend("bop")
    list.append("tee")

    assert_equal true, list.include?("bop")
    assert_equal false, list.include?("peep")
  end
end
