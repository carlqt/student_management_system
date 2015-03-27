# == Schema Information
#
# Table name: mentors
#
#  id            :integer          not null, primary key
#  name          :string
#  sex           :string
#  age           :integer
#  date_of_birth :date
#  bio           :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Mentor < ActiveRecord::Base
  has_many :students
end
