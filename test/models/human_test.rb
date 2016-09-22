require 'test_helper'

class HumanTest < ActiveSupport::TestCase

  setup do
    @human = humen(:one)
  end

  test "wtf" do
    assert_equal @human.peeves[0].peeve_content, 'Pet One'
  end

end
