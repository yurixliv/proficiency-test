class Classroom < ActiveRecord::Base

  belongs_to :student
  belongs_to :course

  validates_presence_of  :student_id, :course_id
  before_create :record_signup

  private
    def record_signup
      self.entry_at = Time.now
    end
end
