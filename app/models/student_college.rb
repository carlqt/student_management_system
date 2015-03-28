# == Schema Information
#
# Table name: student_colleges
#
#  id         :integer          not null, primary key
#  student_id :integer
#  college_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StudentCollege < ActiveRecord::Base
  belongs_to :student
  belongs_to :college
end
