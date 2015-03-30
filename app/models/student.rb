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
  belongs_to :college
  belongs_to :mentor
end
