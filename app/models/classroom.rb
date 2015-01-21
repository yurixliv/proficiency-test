class Classroom < ActiveRecord::Base

  belongs_to :student
  belongs_to :course

  before_create :record_signup

  private
    def record_signup
      self.entry_at = Date.today
    end
end
