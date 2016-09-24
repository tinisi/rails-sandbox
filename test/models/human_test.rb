require 'test_helper'

class HumanTest < ActiveSupport::TestCase

  setup do
    @human = humen(:one)
  end

  test 'humans have peeves' do
    assert_equal 'Pet One', @human.peeves[0].peeve_content
  end

  test 'peeves have levels with labels' do
    assert_equal 'PEEVE: ' + 6.to_s, @human.peeves[0].calc_peeve_level('PEEVE')
  end

end
