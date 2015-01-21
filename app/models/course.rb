class Course < ActiveRecord::Base
  has_many :classroom

  validates_presence_of  :name, :description
end
