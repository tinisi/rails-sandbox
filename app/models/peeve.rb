class Peeve < ActiveRecord::Base
	belongs_to :human

  def calc_peeve_level(label_text)
    "#{label_text}: #{level.to_s}"
  end

  private

  def level
    6
  end

end
