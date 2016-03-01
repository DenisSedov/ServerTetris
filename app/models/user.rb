class User < ActiveRecord::Base
  validates :level, numericality:{greater_tan: 0}, presents: true
  validates :username, uniqueness: true
end
