require 'minitest/autorun'
require './monster'

class TestMonster < Minitest::Test
  def setup
  @monster = Monster.new
end



def test_initialize
  assert_instance_of Machine, @monster.machine
  assert_nil @monster.trainer_name
  assert_instance_of Opponent, @monster.matchup
end
end
