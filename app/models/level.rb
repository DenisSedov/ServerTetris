class Level < ActiveRecord::Base
  validates :level, :point, :time, numericality:{greater_tan: 0},
  presents: true
  #attr_accessor :level, :point, :time
end
