class Human < ActiveRecord::Base
	has_many :manifestos
  has_many :peeves, :class_name => "Peeve"
end
