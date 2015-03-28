# == Schema Information
#
# Table name: students
#
#  id            :integer          not null, primary key
#  name          :string
#  sex           :string
#  age           :integer
#  school        :string
#  level         :string
#  country       :string
#  sat_score     :decimal(, )
#  date_of_birth :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :colleges, through: :student_colleges
  has_many :student_colleges
  accepts_nested_attributes_for :student_colleges
  belongs_to :mentor
end
