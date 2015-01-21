class Student < ActiveRecord::Base
  has_many :classrooms

  validates_presence_of  :name, :register_number
end
